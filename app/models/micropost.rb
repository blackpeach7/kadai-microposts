class Micropost < ApplicationRecord
   belongs_to :user
   has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
   has_many :microposts, through: :reverses_of_favorite, source: :user

end
