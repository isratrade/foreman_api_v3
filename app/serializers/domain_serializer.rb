class DomainSerializer < ActiveModel::Serializer
  attributes :id, :name, :fullname, :dns_id, :created_at, :updated_at
  has_many :locations
  has_many :organizations
  # has_many :parameters
  # has_many :subnets
  # has_many :interfaces
end
