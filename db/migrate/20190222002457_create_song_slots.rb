class CreateSongSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :song_slots do |t|
      t.string :name
      t.belongs_to :billboard, foreign_key: true
      t.belongs_to :song, foreign_key: true

      t.timestamps
    end
  end
end
