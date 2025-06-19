class AccountsController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user

    # Redirect to edit if essential info missing (adjust the condition as you want)
    if @user.name.blank? || @user.surname.blank?
      redirect_to edit_my_account_path
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(account_params)
      redirect_to my_account_path, notice: "Your account has been updated successfully."
    else
      render :edit
    end
  end

  private

  def account_params
    params.require(:user).permit(:name, :surname, :dob, :role, :username, :email, :password, :password_confirmation,)
  end
end
