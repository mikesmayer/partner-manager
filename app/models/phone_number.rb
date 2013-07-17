class PhoneNumber < ActiveRecord::Base

  belongs_to :person

  attr_accessible :number, :person_id

  validates :number, :person_id, presence: true

end
