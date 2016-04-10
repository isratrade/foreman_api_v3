class DomainSerializer < ActiveModel::Serializer
  attributes :id, :name, :fullname, :dns_id, :hosts_count, :hostgroups_count, :created_at, :updated_at
  # has_many :locations
  # has_many :organizations
  # has_many :parameters
#  has_many :
  #has_many :subnets
  #has_many :hostgroups
end
