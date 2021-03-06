class CreateAudiocards < ActiveRecord::Migration[5.2]
  def change
    create_table :audiocards do |t|
      t.integer :user_id
      t.string :category
      t.string :tags, array: true, default: []
      t.string :soundfile
      t.string :soundster
      t.string :image
      t.string :mood
      t.boolean :privatecard
      t.boolean :favorite
      t.index ["user_id"], name: "index_audiocards_on_user_id"


      t.datetime :created_at, null: false
    end
  end
end
