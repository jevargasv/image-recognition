class ProfileController < ApplicationController
  before_action :set_profile, only: [:index, :new, :create]
  def index
  end

  def new
  end

  def create
    pp params[:image]
  end

  private
    def set_profile
      @profile = User.find_by(username: params[:profile])
    end

  def profile_params
    params.permit(:image)
  end
end
