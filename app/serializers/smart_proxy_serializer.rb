class SmartProxySerializer < ActiveModel::Serializer

  attributes :id, :name, :url, :created_at, :updated_at

 # has_many :hosts
#   has_many :hostgroups
#   has_many :subnets
#   has_many :domains
# #  has_many :realms
#  has_many :features
end