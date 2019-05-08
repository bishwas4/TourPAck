class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  

  # if user_signed_in? do
  #   before_action :set_user_role
  # end
    
  # private
  # def set_user_role
  #   if current_user.role == 'admin'
  #     'admin'
  #   elsif current_user.role == 'employee'
  #     'employee'
  #   end
  # end


end