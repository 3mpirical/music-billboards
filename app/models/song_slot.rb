class SongSlot < ApplicationRecord
  belongs_to :billboard
  belongs_to :song
end
