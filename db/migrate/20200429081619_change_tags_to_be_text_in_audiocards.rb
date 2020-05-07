class ChangeTagsToBeTextInAudiocards < ActiveRecord::Migration[5.2]
  def change
    change_column :audiocards, :tags, :text, array: true 
  end
end
