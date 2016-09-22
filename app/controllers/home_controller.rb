class HomeController < ApplicationController
  before_action :require_user
  def index
    if current_user.type == 'Student'
      @pitches = current_user.cohort.pitches
    else
      @pitches = Pitch.all
    end
  end
end
