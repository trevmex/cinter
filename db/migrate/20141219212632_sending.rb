class Sending < ActiveRecord::Migration
  def change
  	add_column :attendees, :sending, :boolean, default: false
  end
end
