class RoleChangeController < ApplicationController
  def downgrade
  current_user.standard!
    if current_user.standard?
      flash[:notice] = "#{@current_user.email}, you are now a Standard Member."
      redirect_to current_user
      return
    end
  end
end
