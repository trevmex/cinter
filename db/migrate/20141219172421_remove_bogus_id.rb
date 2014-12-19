class RemoveBogusId < ActiveRecord::Migration
  def change
  	remove_column :attendees, :attendee_id
  end
end
