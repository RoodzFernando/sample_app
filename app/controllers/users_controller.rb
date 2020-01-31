class UsersController < ApplicationController
  def new
    # render html: 'Me'
  end

  def show
    @user = User.find(params[:id])
    debugger
  end
end
