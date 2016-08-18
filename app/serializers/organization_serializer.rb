class OrganizationSerializer < ActiveModel::Serializer

  attributes :id, :name, :title, :description,
             :created_at, :updated_at
 #  has_many :lifecycle_environments
 #  has_many :hosts
 #  has_many :hostgroups
  has_many :subnets
  has_many :domains
 #  has_many :smart_proxies
 #  has_many :config_templates
 #  has_many :media
 #  has_many :environments
 #  has_many :compute_resources
 has_many :locations
end