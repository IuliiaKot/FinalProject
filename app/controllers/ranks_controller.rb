class RanksController < ApplicationController

  def setrank
    #
    pitch = Pitch.find_by(id: params[:pitch_id])
    find_rank = current_user.ranks.any? { |rank| rank.rank == params[:rank].to_i }
    if find_rank
      render :json => {message: "You alredy used #{params[:rank]} for #{pitch.title}"}
    else
      pitch.ranks.create(rank: params[:rank], student_id: current_user.id)
    end
  end

  def teams
    setting = Setting.where(active: true)
    @teams = split_students_by_teams
    # debugger
    @students = Cohort.last.students
    if setting.empty?
      @notice = "There is not active cohort right now. Probably you need to create a new one."
    else
      @pitches = setting.last.cohort.pitches.in_second_round
    end
  end


  def split_students_by_teams
    students = Cohort.last.students
    final_pitches = Pitch.in_second_round
    # Student.all.joins(ranks: :pitch).merge(Pitch.where(id:pitch[0])).merge(Rank.where(rank: 1))
    final_pitches.map do |pitch|
      {student: Student.find_student_for_team(pitch.id, pitch.ranks.group('rank').order('count(rank) DESC')[0].rank), pitch: pitch.title}
    end.sort_by {|team| -team[:student].count}
  end
end
