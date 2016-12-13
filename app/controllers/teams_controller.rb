class TeamsController < ApplicationController

  def create
    pitch = Pitch.find_by(title: params[:team][:title])
    lead = pitch.student
    students = find_students_for_project - [lead]
    if pitch and !students.empty?
      students.each do |student|
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

  private
    def team_params
      params.requite(:teams).permit!
    end
end
