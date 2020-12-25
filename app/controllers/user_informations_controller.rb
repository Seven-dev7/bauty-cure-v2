class UserInformationsController < ApplicationController
  load_and_authorize_resource param_method: :user_information_params

  def show
  end

  def edit
  end

  def update
    user_info = UserInformation.find(params[:id])
    user_info.update(user_information_params)
    if user_info.valid?
      flash[:success] = 'Vous avez modifié vos informations personnelles'
      redirect_to user_user_information_path(current_user.id, current_user.user_information.id)
    else
      flash[:error] = "#{user_info.errors.messages}"
      redirect_to edit_user_user_information_path(current_user.id, current_user.user_information.id)
    end
  end

  private

  def user_information_params
    params.require(:user_information).permit(:id, :first_name, :last_name, :address, :zip_code, :city, :country, :phone, :user_id)
  end
end
