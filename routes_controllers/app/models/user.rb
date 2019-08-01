# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :text
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork

  has_many :viewers,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

  has_many :shared_artworks,
    through: :artworks,
    source: :viewers
end
