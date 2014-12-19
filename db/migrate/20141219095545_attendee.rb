class Attendee < ActiveRecord::Migration
  def change
  	add_column :attendees, :sent, :boolean, default: false
  end
end
