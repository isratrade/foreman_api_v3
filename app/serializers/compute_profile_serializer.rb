class ComputeProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
 # has_many :compute_attributes
 # has_many :compute_resources
 # has_many :hosts
 # has_many :hostgroups
end


