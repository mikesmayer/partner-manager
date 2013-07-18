class EmailAddress < ActiveRecord::Base

  belongs_to :contact, polymorphic: true

  attr_accessible :address, :contact_id, :contact_type, :contact

  validates :contact_id, presence: true
  validates :contact_type, presence: true
  validates :address, presence: true
end
