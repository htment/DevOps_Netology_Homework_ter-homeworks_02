
variable "vms_resources" {
  description = "Конфигурации ресурсов для виртуальных машин"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    #name = string
    #platform_id = string
    #vm_web_zone = string
    # Можно добавить и другие параметры дисков, если нужно
    # disk_size     = number
    # disk_type     = string
  }))


 default = {
    web = {
     # name = "netology-develop-platform-web"
      cores         = 2
      memory        = 1
      core_fraction = 5
      disk_size = 10
      #platform_id = standard-v1
    #   vm_web_zone = ru-central1-a
    }
    db = {
    #  name = "netology-develop-platform-db"
      cores         = 2
      memory        = 2
      core_fraction = 20
      disk_size = 10
    #   platform_id = standard-v1
    #   vm_web_zone = ru-central1-b
    }
  }
}


variable "metadata" {
  description = "Общие метаданные для всех виртуальных машин"
  type        = map(string)
  
  default = {
    serial-port-enable = "1"
    # ssh-keys будет переопределен в terraform.tfvars или через переменную
  }
}

### Переменные для первой ВМ (web)




variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Имя WEB ВМ"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Platform ID для WEB ВМ"
}

# variable "vm_web_cores" {
#   type        = number
#   default     = 2
#   description = "Количество ядер для WEB ВМ"
# }

# variable "vm_web_memory" {
#   type        = number
#   default     = 1
#   description = "Объем памяти (GB) для WEB ВМ"
# }

# variable "vm_web_core_fraction" {
#   type        = number
#   default     = 5
#   description = "Гарантированная доля CPU для WEB ВМ"
# }

variable "vm_web_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Зона доступности для WEB ВМ"
}

### Переменные для второй ВМ (db) 




variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Имя DB ВМ"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Platform ID для DB ВМ"
}

# variable "vm_db_cores" {
#   type        = number
#   default     = 2
#   description = "Количество ядер для DB ВМ"
# }

# variable "vm_db_memory" {
#   type        = number
#   default     = 2 # ВНИМАНИЕ: по заданию memory = 2
#   description = "Объем памяти (GB) для DB ВМ"
# }

# variable "vm_db_core_fraction" {
#   type        = number
#   default     = 20 # ВНИМАНИЕ: по заданию core_fraction = 20
#   description = "Гарантированная доля CPU для DB ВМ"
# }

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b" # ВНИМАНИЕ: по заданию зона "ru-central1-b"
  description = "Зона доступности для DB ВМ"
}










# variable "metadata" {
#   description = "Общие метаданные для всех виртуальных машин"
#   type        = map(string)
  
#   default = {
#     serial-port-enable = "1"
#     # ssh-keys будет переопределен в terraform.tfvars или через переменную
#     ssh-keys           = "ubuntu:${file("/home/art/.ssh/id_ed25519.pub")}"
#   }
# }