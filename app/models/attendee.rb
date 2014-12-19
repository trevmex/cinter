class Attendee < ActiveRecord::Base
  has_one :partnership
  has_one :partner, :through => :partnership
  has_one :inverse_partnership, :class_name => "Partnership", :foreign_key => "partner_id"
  has_one :inverse_partner, :through => :inverse_partnership, :source => :attendee
end
