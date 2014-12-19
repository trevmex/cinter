class Oops < ActiveRecord::Migration
  def change
  	remove_column :partnerships, :creaate
  	remove_column :partnerships, :destroy
  end
end
