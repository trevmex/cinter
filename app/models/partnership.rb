class Partnership < ActiveRecord::Base
  belongs_to :attendee
  belongs_to :partner, :class_name => "Attendee"
end
