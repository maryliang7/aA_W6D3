# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint           not null, primary key
#  artwork_id :integer
#  viewer_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtworkShare < ApplicationRecord
  belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork

  belongs_to :viewer,
    foreign_key: :viewer_id,
    class_name: :User
end
