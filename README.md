# vagrant

### Network
* Public network
```
config.vm.network "public_network"
```

* Default route
```
config.vm.network "public_network", use_dhcp_assigned_default_route: true
```

* Bridge
```
config.vm.network "public_network" , bridge: "en0: Wi-Fi"
```

* Adapter sequence
```
config.vm.network "public_network" , bridge: "en0: Wi-Fi", adapter: 1
```
