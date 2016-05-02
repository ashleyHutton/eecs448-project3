##
# School Model
class School < ActiveRecord::Base
	##
	# School have many courses
	# School names must be unique
	geocoded_by :address  # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates

	has_many :courses
	has_many :users
	validates_uniqueness_of :name
	validates :address, presence: true
end
