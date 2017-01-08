class HomeController < ApplicationController
  before_action :require_user

  def index
    if current_user.type == 'Student'
      @pitches = current_user.cohort.pitches
      render 'projects'
    else
      if Cohort.last && Cohort.last.setting
        Cohort.last.setting.active ? @cohorts = Setting.find_by(active: true).cohort  : @cohorts = nil
      else
        @cohorts = nil
      end
      render 'index'
    end
  end

  def projects
    @pitches = Cohort.find_by(id: params[:id]).pitches
  end
end
