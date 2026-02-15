locals {
  #locals_vm_web_name = "${var.vm_web_name_prefix}-${var.environment}" # Пример, если есть такие переменные
  # Или более простой вариант, соответствующий заданию:
  locals_vm_web_name = "local-${var.vm_web_name}-platform-web" # Где var.environment_web = "develop"
  locals_vm_db_name  = "local-${var.vm_db_name}-platform-db"   # Где var.environment_db = "develop"

  # Либо просто "склеить" из нескольких частей
  # vm_web_name = "${var.project}-${var.role_web}" и т.д.
}