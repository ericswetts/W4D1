class Artwork < ApplicationRecord

  validates :title, uniqueness: { scope: :artist_id,
   message: "should not have two pieces with the same name" }

   has_many :shares,
     foreign_key: :artwork_id,
     class_name: :ArtworkShare

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User

  has_many :shared_viewers,
    through: :shares,
    source: :viewer

  
end
