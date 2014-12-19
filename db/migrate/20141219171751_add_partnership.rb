class AddPartnership < ActiveRecord::Migration
  def change
  	add_column :attendees, :attendee_id, :integer
  	add_column :attendees, :partner_id, :integer
  end
end
