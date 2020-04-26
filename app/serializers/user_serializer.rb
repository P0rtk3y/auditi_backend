class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :firstname, :lastname, :email
  has_many :audiocards, serializer: AudiocardsSerializer
end
