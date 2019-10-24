class Song < ApplicationRecord
    has_many :song_artists
    has_many :artists, through: :song_artists
    has_many :reviews
    has_many :users, through: :reviews
    validates :genre, presence: true
    validates :title, presence: true
    validates :length, presence: true
end
