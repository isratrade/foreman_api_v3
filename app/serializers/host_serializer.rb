class HostSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name,
           # :ip, :last_report, :mac,
           # :sp_mac, :sp_ip, :sp_name, :sp_subnet_id, :build,
           # :comment, :disk, :installed_at,
           # :enabled, :puppet_ca_proxy_id, :managed, :use_image, :image_file, :uuid,
           # :capabilities, :provision_method,
           # :puppet_proxy_id, :certname, :created_at, :updated_at,
           # :last_compile, :last_freshcheck, :serial, :source_file_id, :puppet_status,
           :created_at, :updated_at

  # has_one :location
  # has_one :organization

  # has_one :environment
  # has_one :domain
  # has_one :hostgroup
  #has_one :model

#   has_many :puppetclasses

#   has_many :parameters

#  # has_many :interfaces
#   has_one :compute_resource
#   has_one :image

#   has_one :token
#   # missing owner

#   has_one :architecture
#   has_one :environment
#   has_one :operatingsystem
#   has_one :medium
#   has_one :ptable
#   has_one :puppet_proxy
#   has_one :puppet_ca_proxy
#   has_one :domain
#   has_one :realm
#   has_one :subnet
#   has_one :compute_profile

#   has_many :config_groups
# #  has_many :lookup_values

end