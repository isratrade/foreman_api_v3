class HostManagedSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :type,
             :ip, :last_report, :mac,
             :created_at, :updated_at,

             :organization_id, :organization_name, :location_id, :location_name,
             :environment_id, :environment_name,
             :hostgroup_id, :hostgroup_name,
             :model_id, :model_name,
             :compute_resource_id, :compute_resource_name,

             :architecture_id, :architecture_name,
             :operatingsystem_id, :operatingsystem_name,
             :medium_id, :medium_name,
             :ptable_id, :ptable_name,
             :puppet_proxy_id, :ptable_name,
             :puppet_ca_proxy_id, :puppet_ca_proxy_name,
             :domain_id, :domain_name,
             :realm_id, :realm_name,
             :subnet_id, :subnet_name

  def cpus
    object.facts_hash['processorcount']
  end

  def memory_human_size
    object.facts_hash['memorysize']
  end

  def disks_human_size
    object.facts_hash['blockdevice_vda_size']
  end

  def subnet_to_s
    object.subnet.to_s
  end

  def is_virtual
    object.facts_hash['is_virtual']
  end

end
