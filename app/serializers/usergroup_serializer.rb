class UsergroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
  #has_many :domains
  #has_many :hostgroups
end
