class Gossip < ApplicationRecord
	belongs_to :user, optional:true
	has_many :tags, foreign_key: 'user_id'
end
