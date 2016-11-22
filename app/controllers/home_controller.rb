class HomeController < ApplicationController
  before_action :require_user
  def index
    if current_user.type == 'Student'
      @pitches = current_user.cohort.pitches
      render 'cohort_projects'
    else
      @cohorts = Cohort.last 
      render 'index'
    end
  end

  def cohort_projects
    @pitches = Cohort.find_by(id: params[:id]).pitches
  end
end
