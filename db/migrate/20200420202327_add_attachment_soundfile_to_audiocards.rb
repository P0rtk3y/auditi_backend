class AddAttachmentSoundfileToAudiocards < ActiveRecord::Migration[5.2]
  def self.up
    change_table :audiocards do |t|
      t.attachment :soundfile
    end
  end

  def self.down
    remove_attachment :audiocards, :soundfile
  end
end
