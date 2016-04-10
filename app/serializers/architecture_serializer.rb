class ArchitectureSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at

  # has_many :images
  # has_many :operatingsystems
  # has_many :hosts
  # has_many :hostgroups

  def custom_method

  end

end
