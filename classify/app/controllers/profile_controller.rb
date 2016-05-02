##
# Profile Controller
class ProfileController < ApplicationController
before_action :set_user
  def my_profile
  @scores = Score.all
  end

  def edit_school

  end

  def set_user
    @user = User.where(id: current_user.id)
  end

end
