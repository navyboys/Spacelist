class Property < ActiveRecord::Base
  has_many :suites
  belongs_to :user
end
