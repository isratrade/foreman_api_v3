class ComputeResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url, :created_at, :updated_at
  # TODO CHANGE  attributes :provider_friendly_name => 'provider'
  # has_many :hosts
  # has_many :hostgroups
  # has_many :users
  # has_many :images
  # has_many :compute_attributes
  # has_many :compute_resources
end



