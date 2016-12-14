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
      @teams = Team.group(:lead_id)
    else
      @teams = []
    end
  end

  private
    def team_params
      # debugger
      params.requite(:teams).permit!
    end
end
