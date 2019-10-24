class Review < ApplicationRecord
    belongs_to :user 
    belongs_to :song
    validates :user_id, presence: true, uniqueness: true
    validates :song_id, presence: true
end
