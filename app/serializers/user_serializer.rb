class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :firstname, :lastname, :email
end
