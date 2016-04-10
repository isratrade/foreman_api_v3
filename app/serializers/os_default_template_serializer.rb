class OsDefaultTemplateSerializer < ActiveModel::Serializer

  attributes :id, :created_at, :updated_at

  has_one :config_template
  has_one :template_kind
#  has_one :operatingsystem

end
