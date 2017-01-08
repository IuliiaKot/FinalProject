class CohortsController < ApplicationController
  before_action :find_cohort, only: [:show, :edit]

  def index
    @cohorts = Cohort.all
  end

  def show
  end

  def new
    @cohort = Cohort.new
  end

  def create
    Cohort.import(params[:file])
    cohort = Cohort.last
    # redirect_to teachers_settings_path
    # redirect_to show_cohort_settings_teachers_path
    redirect_to new_cohort_setting_url(cohort)
  end

  private

    def find_cohort
      @cohort = Cohort.find(params[:id])
    end
end
