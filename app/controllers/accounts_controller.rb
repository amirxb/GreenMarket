class AccountsController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    puts @user.profile_picture.attached?
    if @user.name.blank? || @user.surname.blank?
      redirect_to new_my_account_path, alert: "Please complete your profile."
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(account_params)
      sign_in(@user, bypass: true)  # <-- This keeps the user signed in after password update
      redirect_to my_account_path, notice: "Your account has been updated successfully."
    else
      render :edit
    end
  end

  def create
    @user = User.new(account_params)
    if @user.save
      sign_in(@user)
      redirect_to my_account_path, notice: "Account created successfully!"
    else
      Rails.logger.debug "User creation failed: #{@user.errors.full_messages.join(', ')}"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    current_user.destroy
    sign_out current_user
    redirect_to new_my_account_path, notice: "Your account has been deleted. Please create a new account."
  end

  def new
    @user = User.new
  end

  private

  def account_params
    params.require(:user).permit(
      :name, :surname, :dob, :role, :username,
      :password, :password_confirmation,
      :profile_picture
    )
  end
end
