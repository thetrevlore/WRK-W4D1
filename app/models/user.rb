



class User < ActiveRecord::Base

  validates :user_name, presence: true, uniqueness: true

  has_many :artworks,
    primary_key: :id,
    foreign_key: :artist_id
    class_name: 'Artwork'

end
