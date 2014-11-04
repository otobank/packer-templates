# OTOBANK Packer Templates

__Requirements:__

* Ansible

## Templates

### phpapp-dev

* MySQL
* Memcached
* Nginx
* PHP (php-fpm)

```
packer build phpapp-dev.json
```

__vmware-iso__

```
packer build --only=vmware-iso phpapp-dev.json
```

* IDCF クラウドで使用するテンプレート
* 初期ユーザーは `otobank`:`passw0rd`
* VMWare, VMWare OVF Tools が必要

__virtualbox-iso__

```
packer build --only=virtualbox-iso phpapp-dev.json
```

* Vagrant 用


## Developments

* 各 template の元は `src/` 以下にあります

__Requirements:__

* node.js
* gulp


### JSON ファイルを生成する

```
gulp prebuild
```
