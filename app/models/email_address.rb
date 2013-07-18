class EmailAddress < ActiveRecord::Base

  belongs_to :person

  attr_accessible :address, :person_id

  validates :address, presence: true
end
