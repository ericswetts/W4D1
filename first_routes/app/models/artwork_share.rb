class ArtworkShare < ApplicationRecord

  validates :artwork_id, uniqueness: { scope: :viewer_id,
   message: "User cannot have artwork shared with them more than once." }

   belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork

  belongs_to :viewer,
    foreign_key: :viewer_id,
    class_name: :User
end
