class RoomsController < ApplicationController

  def new
  end

  def create
    @room = current_user.rooms.build(room_params)
    if @room.save
      redirect_to root_url, notice: "You have successfully created a room"
    else
      render :new
    end
  end 

  private
  def room_params
    params.require(:room).permit(:description)
  end


end
