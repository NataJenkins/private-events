class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @event = Event.all
  end
end
