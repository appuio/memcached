# APPUiO Memcached Example

## How to Deploy

### Create New OpenShift Project
```
$ oc new-project example-memcached
```

#### Create Application and expose Service
```
$ oc new-app https://github.com/appuio/memcached.git  --strategy=docker --name=memcached
```



