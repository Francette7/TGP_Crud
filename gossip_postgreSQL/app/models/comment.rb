class Comment < ApplicationRecord
	belongs_to :gossip, optional: true
	belongs_to :user, optional: true

	has_many :gossips, foreign_key: 'gossip_id'
	has_many :likes, foreign_key: 'comment_id'

end
