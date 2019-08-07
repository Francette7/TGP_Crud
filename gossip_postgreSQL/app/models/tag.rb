class Tag < ApplicationRecord
	has_many :gossips, foreign_key: 'gossip_id'
end
