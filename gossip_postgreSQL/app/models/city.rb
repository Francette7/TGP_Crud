class City < ApplicationRecord
	has_many :users, foreign_key: 'user_id'
end
