class Company < ApplicationRecord
	TYPES = ["private", "public"]
	has_many :benefits
	validates :type, inclusion: { in: TYPES }
end
