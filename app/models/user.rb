class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :tweets
  has_many :likes
  has_many :follower_mappings, class_name: 'FollowMapping', foreign_key: 'followee_id'
  has_many :followee_mappings, class_name: 'FollowMapping', foreign_key: 'follower_id'
  has_many :followers, through: :follower_mappings
  has_many :followees, through: :followee_mappings


end
