class AudiocardSerializer
  include FastJsonapi::ObjectSerializer
  # include Rails.application.routes.url_helpers
  attributes :category, :tags, :soundster, :favorite, :image, :created_at, :user_id
  attribute :sound_url do |audiocard| 
    Rails.application.routes.url_helpers.rails_blob_url(audiocard.soundfile) if audiocard.soundfile.attached?
  end 
  
end
