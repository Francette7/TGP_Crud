class Gossip < ApplicationRecord
	belongs_to :user, optional:true
	has_many :tags, foreign_key: 'gossip_id'
	has_many :comments, foreign_key: 'gossip_id'
	has_many :likes, foreign_key: 'gossip_id'
	validates :title, presence: true, length: { in: 3..14}
    validates :content, presence: true

end
