class TeamsController < ApplicationController
  before_action :check_if_active, only: [:dashboard, :index]

  def index
    setting = Setting.find_by(active: true)
    if setting && setting.cohort.teams.count == 0
      if setting
        cohort = setting.cohort
        @team = cohort.teams.new()
        @teams = split_students_by_teams
        @students = cohort.students
        @pitches = cohort.pitches.in_second_round
      else
        @warning = "You need to create a new cohort."
        @notice = "There is not active cohort right now. Probably you need to create a new one."
      end
    else
      redirect_to '/teams/dashboard'
    end
  end

  def create
    setting = Setting.find_by(active: true)
    pitch = Pitch.find_by(title: params[:team][:title])
    lead = pitch.student
    students = find_students_for_project - [lead]
    if pitch and !students.empty?
      students.each do |student|
        setting.cohort.teams.create(pitch_id: pitch.id, lead_id: lead.id, student_id: student.id)
      end
    end
    # redirect_to '/dashboard' if setting.cohort.teams == setting.cohort.number_of_teams

  end

  def find_students_for_project
    res = []
    params[:team][:student].each do |k,v|
      res << Student.find_by(id: v.values.last)
    end
    res
  end


  def dashboard
    setting = Setting.find_by(active: true)
    if setting.cohort.teams.count > 0
      @teams = setting.cohort.teams.group(['lead_id','teams.id'])
      # debugger
      res = []
      @teams.each_with_index do |team,idx|
        if idx == 0
          res << team
        elsif team.pitch_id == @teams[idx-1].pitch_id
          next
        elsif has_team?(res, team)
          next
        else
          res << team
        end
      end
      @teams = res
      # @teams = Team.order(:id).group(:lead_id)
    else
      @teams = []
    end
  end

  def has_team?(teams, team)
    teams.any? {|elm| elm.pitch_id == team.pitch_id}
  end

  private
    def team_params
      params.requite(:teams).permit!
    end

    def split_students_by_teams
      students = Setting.find_by(active: true).cohort.students
      final_pitches = Setting.find_by(active: true).cohort.pitches.in_second_round
      # Student.all.joins(ranks: :pitch).merge(Pitch.where(id:pitch[0])).merge(Rank.where(rank: 1))
      return [] if final_pitches.empty?
      return [] if Setting.find_by(active: true).cohort.ranks.length == 0
      final_pitches.map do |pitch|
        {student: Student.find_student_for_team(pitch.id, pitch.ranks.group('ranks.id').order('count(rank) DESC')[0].rank), pitch: pitch.title}
      end.sort_by {|team| -team[:student].count}
    end

end
