class StaticPageController < ApplicationController
  def index
    redirect_to home_path if current_user
  end
end
