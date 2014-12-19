class CreatePartnerships < ActiveRecord::Migration
  def change
    create_table :partnerships do |t|
      t.integer :attendee_id
      t.integer :partner_id
      t.string :creaate
      t.string :destroy

      t.timestamps
    end
  end
end
