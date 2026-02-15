output "all_vm_info" {
  value = {
    web = {
      name        = yandex_compute_instance.platform.name
      external_ip = yandex_compute_instance.platform.network_interface.0.nat_ip_address
      fqdn        = yandex_compute_instance.platform.fqdn
    }
    db = {
      name        = yandex_compute_instance.platform_db.name
      external_ip = yandex_compute_instance.platform_db.network_interface.0.nat_ip_address
      fqdn        = yandex_compute_instance.platform_db.fqdn
    }
  }
}

#если отдельно
output "web_nat_ip_address" {
  value = yandex_compute_instance.platform.network_interface.0.nat_ip_address
}
output "db_nat_ip_address" {
  value = yandex_compute_instance.platform_db.network_interface.0.nat_ip_address
}
