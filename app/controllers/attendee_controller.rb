class AttendeeController < ApplicationController
  def create
    @attend = Attendee.new(params.require(:attendee).permit(:user_id, :event_id))
    meme = Attendee.all.where(event_id: @attend.event_id, user_id: current_user.id)
    # current_user.attendees.include?(lol)
    if meme.empty?
      @attend.save
    else
      puts('error')
    end
  end
end
