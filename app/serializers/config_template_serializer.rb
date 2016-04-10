class ConfigTemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :snippet, :audit_comment, :created_at, :updated_at

 # has_many :hostgroups
 # has_many :environments
 # has_many :template_combinations
 # has_many :operatingsystems
 # has_many :os_default_templates

 # has_one :template_kind

end
