class WelcomeController < ApplicationController

  before_action :authenticate_user!, only:[:add_detail]
  
  def index
    @details = Detail.paginate(page: params[:page], per_page: 10)
  end
  
  def add_detail
    detail = Detail.find(params[:id])
    current_user.user_details.create(detail: detail)
    flash[:success] = 'Added successfully!'
    redirect_to root_path
  end
  
  private
    def authenticate_user!
      redirect_to new_user_session_path unless user_signed_in?
    end
end
