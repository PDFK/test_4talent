class User < ApplicationRecord
	has_many :postulations

	def self.filter
		joins(postulations: [benefit: :company])
		.where('benefits.amount < ?', 10000000)
		.where(companies:
			{
				type: 'private'
			})
		.group("users.id")
	end
end
