class Users::ProfilesController < ApplicationController
  before_action :user_required!
  before_action :load_user
  before_action :load_profile, only: [:show, :edit, :update]

  def show
    authorize @profile
  end

  def edit
    authorize @profile
  end

  def update
    authorize @profile

    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def load_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :birthdate, :nickname, :about, :picture, :visibility)
  end

  def load_user
    @user = current_user
  end

end
