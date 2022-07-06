data ibm_resource_group "resource_group" {
    name = "Default"
}
resource ibm_container_cluster "tfcluster" {
name            = "sampletfcluster"
datacenter      = "dal10"
machine_type    = "b3c.4x16"
hardware        = "shared"
public_vlan_id  = "2234945"
private_vlan_id = "2234947"

kube_version = "1.21.9"

default_pool_size = 3
    
public_service_endpoint  = "true"
private_service_endpoint = "true"

resource_group_id = data.ibm_resource_group.resource_group.id
}

resource "ibm_container_worker_pool_zone_attachment" "dal12" {
cluster         = ibm_container_cluster.tfcluster.id
worker_pool     = ibm_container_cluster.tfcluster.worker_pools.0.id
zone            = "dal12"
public_vlan_id  = "2234945"
private_vlan_id = "2234947"
resource_group_id = data.ibm_resource_group.resource_group.id
}

resource "ibm_container_worker_pool_zone_attachment" "dal13" {
cluster         = ibm_container_cluster.tfcluster.id
worker_pool     = ibm_container_cluster.tfcluster.worker_pools.0.id
zone            = "dal13"
public_vlan_id  = "2234945"
private_vlan_id = "2234947"
resource_group_id = data.ibm_resource_group.resource_group.id
}
