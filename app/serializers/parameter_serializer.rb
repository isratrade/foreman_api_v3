class ParameterSerializer < ActiveModel::Serializer

  embed :ids, include: true

  attributes :id, :name, :value, :created_at, :updated_at

#  has_one :host
  # has_one :hostgroup
  # has_one :domain
#  has_one :operatingsystem

end
