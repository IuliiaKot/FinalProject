class TeamsController < ApplicationController

  def create
    pitch = Pitch.find_by(title: params[:team][:title])
    lead = pitch.student
    students = find_students_for_project - [lead]
    # debugger
    if pitch and !students.empty?
      students.each do |student|
        # debugger
        Team.create(pitch_id: pitch.id, lead_id: lead.id, student_id: student.id)
      end
    end
  end

  def find_students_for_project
    # debugger
    res = []
    params[:team][:student].each do |k,v|
      res << Student.find_by(id: v.values.last)
    end
    res
  end


  def dashboard
    # debugger
    if Team.count > 0
      @teams = Team.group(['lead_id','teams.id'])
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
      # debugger
      params.requite(:teams).permit!
    end
end
