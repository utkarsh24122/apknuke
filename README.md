# apknuke
Find vulnerabilities in Android Applications : Static Analysis

Template Based Static Analysis of Android Applications 

Find secrets, keys & many more. Check [Features]()

Templates by [@0xgaurang](https://twitter.com/0xgaurang)

# Setup
```
$ git clone https://github.com/utkarsh24122/apknuke
$ cd apknuke;chmod +x *;cd..
```
install apktool ([Read How](https://ibotpeaches.github.io/Apktool/install/))

required: [nuclei](https://github.com/projectdiscovery/nuclei)
```
$ git clone https://github.com/optiv/mobile-nuclei-templates
```
Configure path of templates in the 1st line of apknuke.sh
```
PATH_TO_NucleiTemplates="/[path]/mobile-nuclei-templates/"
```

# Usage 
```
./apknuke.sh target.apk
```
# Features
