class UserInformationsController < ApplicationController
  load_and_authorize_resource param_method: :user_information_params

  def show
  end

  def edit
  end

  private

  def user_information_params
    params.require(:user_information).permit!
  end
end
