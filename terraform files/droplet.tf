resource "digitalocean_droplet" "haproxy"{
    image = "ubuntu-20-04-x64"
    name = "ubuntu"
    region = "nyc1"
    size = "s-1vcpu-1gb"
    #private_networking = "true"
    ssh_keys = [
        var.pvt_key
    ]

    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.pvt_key)
        timeout = "2m"
    }

}

resource "digitalocean_droplet" "Master1"{
    image = "ubuntu-20-04-x64"
    name = "ubuntu"
    region = "nyc1"
    size = "s-1vcpu-1gb"
    #private_networking = "true"
    ssh_keys = [
        var.pvt_key
    ]

    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.pvt_key)
        timeout = "2m"
    }

}

resource "digitalocean_droplet" "Master2"{
    image = "ubuntu-20-04-x64"
    name = "ubuntu"
    region = "nyc1"
    size = "s-1vcpu-1gb"
    #private_networking = "true"
    ssh_keys = [
        var.pvt_key
    ]

    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.pvt_key)
        timeout = "2m"
    }

}

resource "digitalocean_droplet" "Master3"{
    image = "ubuntu-20-04-x64"
    name = "ubuntu"
    region = "nyc1"
    size = "s-1vcpu-1gb"
    #private_networking = "true"
    ssh_keys = [
        var.pvt_key
    ]

    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.pvt_key)
        timeout = "2m"
    }

}

resource "digitalocean_droplet" "Worker"{
    image = "ubuntu-20-04-x64"
    name = "ubuntu"
    region = "nyc1"
    size = "s-1vcpu-1gb"
    #private_networking = "true"
    ssh_keys = [
        var.pvt_key
    ]

    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.pvt_key)
        timeout = "2m"
    }

}

resource "digitalocean_project_resources" "kubernetes-hacluster-ansible" {
project = var.project_id
resources = [
        resource.digitalocean_droplet.haproxy.urn,
        resource.digitalocean_droplet.Master1.urn,
        resource.digitalocean_droplet.Master2.urn,
        resource.digitalocean_droplet.Master3.urn,
        resource.digitalocean_droplet.Worker.urn
    ]
}