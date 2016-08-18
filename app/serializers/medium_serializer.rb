class MediumSerializer < ActiveModel::Serializer

  attributes :id, :name,
             :path, :os_family,
             :created_at, :updated_at

  has_many :operatingsystems
  has_many :locations
  has_many :organizations

  # TODO
  # node do |medium|
  #   if medium.os_family == 'Solaris'
  #     attributes :media_path, :config_path, :image_path
  #   end
  # end

end
