class CohortsController < ApplicationController
  before_action :find_cohort, only: [:show, :edit]

  def index
    @cohorts = Cohort.all
  end

  def show
  end

  private

    def find_cohort
      @cohort = Cohort.find(params[:id])
    end
end
