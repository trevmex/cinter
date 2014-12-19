class AddPartners < ActiveRecord::Migration
  def change
  	remove_column :attendees, :partner_id
  end
end
