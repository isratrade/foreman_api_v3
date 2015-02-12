class ArchitectureSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :created_at, :updated_at

  has_many :images
  has_many :operatingsystems
  has_many :hosts
  has_many :hostgroups, :serializer => 'TODO check this out'

  def custom_method

  end

end
