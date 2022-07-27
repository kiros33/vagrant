# vagrant

### Network
* Bridge
```
config.vm.network "public_network"
```

* Default route
```
config.vm.network "public_network", use_dhcp_assigned_default_route: true
```
