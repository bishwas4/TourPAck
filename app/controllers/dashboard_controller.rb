class DashboardController < ApplicationController
  skip_before_action :authenticate_user!


  def index
    @packages = Package.all
  end
  def edit
    @Package = current_user
  end

end
