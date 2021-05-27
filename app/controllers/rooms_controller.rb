class RoomsController < ApplicationController

  def new
   # @room = Rooms.new
  end

  def create
    @rooms = current_user.rooms.build(room_params)
    if @rooms.save
      redirect_to rooms_url, notice: "You have successfully created a room"
    else
      render :new
    end
  end

  def index
    @rooms = Room.all
  end

  def edit
    @rooms = Room.find(params[:id])
  end

  def update
    @rooms = Room.find(params[:id])
    @rooms.update(room_params)
    if @rooms.save
      redirect_to room_url(current_user)
    else
      render room_url(current_user), notice:'Updated successfully'
    end
  end

  def destroy
    @rooms = Room.find(params[:id])
    @rooms.destroy
    redirect_to rooms_url(current_user), notice: 'Room deleted'
  end

  def show
    @rooms = Room.all
  end

  private
  def room_params
    params.require(:room).permit(:description, :home_type, :bed_room, :bath_room, :have_internet, :have_tv, :have_heater, :rate_per_night, photos:[])
  end


end
