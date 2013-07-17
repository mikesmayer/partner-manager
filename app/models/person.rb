class Person < ActiveRecord::Base
  has_many :phone_numbers

  attr_accessible :first_name, :last_name

  validates :first_name, :last_name, presence: true
end