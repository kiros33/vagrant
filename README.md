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

* Snapshot
```
vagrant snapshot save default 20221024114502
vagrant snapshot list
vagrant snapshot restore 20221024114502
vagrant snapshot delete 20221024114502

vagrant snapshot save default 20221106011528
vagrant snapshot restore 20221106011528
```

### TO-DO
* 7zip 설정

### IDA Pro
* python
```
idapyswitch --force-path C:\Users\vagrant\.pyenv\pyenv-win\bin\python3.dll
```
* Link
```
cd "$ENV:USERPROFILE\.pyenv\pyenv-win\bin"
New-Item -ItemType HardLink -Name 'python27.dll' -Value 'C:\Users\vagrant\.pyenv\pyenv-win\versions\2.7.18\python27.dll'
New-Item -ItemType HardLink -Name 'python39.dll' -Value C:\Users\vagrant\.pyenv\pyenv-win\versions\3.9.13\python39.dll
New-Item -ItemType HardLink -Name 'python3.dll' -Value C:\Users\vagrant\.pyenv\pyenv-win\versions\3.9.13\python3.dll
```
* Registry
```
Get-Item -Path 'HKCU:SOFTWARE\Hex-Rays\IDA'
New-ItemProperty -Path 'HKCU:SOFTWARE\Hex-Rays\IDA' -Name 'Python3TargetDLL' -Value 'C:\Users\vagrant\.pyenv\pyenv-win\versions\3.5.4\python35.dll' -PropertyType 'String' -Force
```
* Unexpected fatal error while initializing Python runtime
```
PYTHONHOME → C:\Users\vagrant\.pyenv\pyenv-win\versions\3.9.13
PATH → C:\Users\vagrant\.pyenv\pyenv-win\versions\3.9.13\Lib
```






