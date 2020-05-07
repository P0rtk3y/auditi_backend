class AudiocardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :tags, :soundfile, :soundster, :favorite, :image, :created_at, :user_id
end
