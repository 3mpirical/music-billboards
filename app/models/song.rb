class Song < ApplicationRecord
  belongs_to :artist
  has_many :song_slots, dependent: :destroy
  has_many :billboards, through: :song_slots
end
