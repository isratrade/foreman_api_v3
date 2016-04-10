class HostgroupSerializer < ActiveModel::Serializer

  attributes :id, :name, :title, :parent_id, :created_at, :updated_at

  has_many :locations
  has_many :organizations

  has_many :puppetclasses
  has_many :config_groups

  #has_many :group_parameters

  # # def parameters
  # #   group_parameters
  # # end

  # has_one :architecture
  # has_one :environment
  # has_one :operatingsystem
  # has_one :medium
 # has_one :ptable
  # has_one :puppet_proxy
  # has_one :puppet_ca_proxy
  has_one :domain
  has_one :subnet
#  has_one :compute_profile

 # # has_many :interfaces


end