##
# Profile Controller
class ProfileController < ApplicationController
before_action :set_user
  def my_profile
  @scores = Score.all
  end

  def set_user
    @user =  User.where(id: current_user.id).first
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to :back}
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def user_params
    params.require(:user).permit(:school_id)
  end
end
