class UserSerializer < ActiveModel::Serializer
  attributes :id, :login, :firstname, :lastname, :mail, :admin, :last_login_on, :auth_source_id, :created_at, :updated_at
end
