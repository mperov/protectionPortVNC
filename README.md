## protectionPortVNC
It allows to find and kill non-VNC services which run on VNC ports.


### Installation
```bash
$ sudo -i
$ cd /root/
$ git clone https://github.com/mperov/protectionPortVNC.git
$ cd protectionPortVNC/
$ ./appendCron.sh
```
### Attention
protectionPortVNC can kill useful processes. To prevent it you should change [PATTERN_PATH](https://github.com/mperov/protectionPortVNC/blob/e01193c8f30dac7ff7826003893004787963855d/scannerServices.sh#L8) and run `./scannerServices.sh` separately to test searching non-VNC processes.  
**So using and installing this solution at their own risk.**
