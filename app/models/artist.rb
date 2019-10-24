class Artist < ApplicationRecord
    has_many :song_artists
    has_many :songs, through: :song_artists
    validates :name, presence: true
    validates :description, presence: true, uniqueness: true
end
