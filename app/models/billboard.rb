class Billboard < ApplicationRecord
    belongs_to :user
    has_many :song_slots, dependent: :destroy
    has_many :songs, through: :song_slots
end
