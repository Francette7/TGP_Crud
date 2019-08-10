class User < ApplicationRecord
	belongs_to :city, optional: true
	has_many :gossips
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
	has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
	has_many :comments, foreign_key: 'user_id'
	has_many :likes, through: :gossips
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
end
