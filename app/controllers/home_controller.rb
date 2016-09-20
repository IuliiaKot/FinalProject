class HomeController < ApplicationController
  def index
    @pitches = current_user.cohort.pitches
  end
end
