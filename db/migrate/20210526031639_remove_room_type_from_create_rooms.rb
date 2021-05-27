class RemoveRoomTypeFromCreateRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :room_type
  end
end
