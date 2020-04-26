class AudiocardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :tags, :soundfile, :soundster, :image
end
