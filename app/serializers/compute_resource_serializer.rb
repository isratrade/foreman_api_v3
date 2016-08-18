class ComputeResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url,
             :provider, :provider_friendly_name,
             :display_type, :set_console_password,
             :created_at, :updated_at

  has_many :images
  has_many :compute_attributes
  has_many :locations
  has_many :organizations
end
