 # Задание 1
 ## Создадим   personal.auto.tfvars



```
# personal.auto.tfvars
cloud_id                 = "ваш_cloud_id"
folder_id                = "ваша_folder_id"
service_account_key_file = "key.json" # Путь к файлу ключа сервисного аккаунта
vms_ssh_public_root_key  = "ваш_публичный_ssh_ключ"
```


```
terraform init
```

![alt text](image.png)

Поправим
![alt text](image-1.png)


Добавим блок для подключения по ssh
![alt text](image-3.png)


```
terraform plan

```
![alt text](image-4.png)



![alt text](image-5.png)


поправили все ошибки 
![alt text](image-6.png)

![alt text](image-7.png)



```
terraform console
```
найдем внешний ip и подкючимся 


![alt text](image-8.png)



```
 ssh ubuntu@93.77.190.111
```
Подключимся 
```
eval $(ssh-agent) && ssh-add
```

![alt text](image-9.png)


![alt text](image-10.png)

``eemptible = true`` делает ВМ прерываемой. Это значит, что Яндекс.Облако может остановить такую ВМ в любой момент (но не чаще раза в 24 часа). Взамен вы получаете значительную скидку на стоимость.
```core_fraction=5``` — это гарантированная доля производительности vCPU. Значение 5% означает, что ВМ будет получать не менее 5% мощности ядра, но может потреблять и больше, если на физическом хосте есть свободные ресурсы. Это позволяет экономить на ВМ

# Задание 2
## Параметризация ресурсов
```
cp main.tf main.old
```
Добавим переменные в variables.tf
![alt text](image-12.png)

```
 terraform plan
```
![alt text](image-11.png)

