                            VMEMulater
                    The Dreaded Demonstration

This is the guidance to help get a Visual Bash Shell script \"tsg.sh\"
from github.com to a local directory and repository.

Step by step:

Open a terminal - Copy and paste these steps:

1.  rm -rf main.zip tsg tsg-main
2.  firefox  https://github.com/flintiii/tsg/archive/refs/heads/main.zip
3.  Save the file.
4.  mv Downloads/tsg-main.zip ~/tsg.zip
5.  unzip tsg.zip
7.  cd tsg
8.  sudo tsg.sh
9.  sudo ./tsg.sh sane
10.  sudo ./tsg.sh vmem
11. /usr/sbin/vm/bin/rvm370.sh
12. /usr/sbin/vm/bin/rvm370.sh

Open another terminal - Copy and paste:

1.  sudo ./tsg.sh gandt
2.  sudo ./tsg.sh ibmgh

Observe that you have a working VM *client* attached to a local copy of
docker. Type:

Observe that you have a working VM 3270 client attached to a local copy
of docker. Type:

1.  logon maint
2.  cpcms
3.  i cms
4.  l \* \* a
5.  \<alt\> 2
6.  logoff

Additional Info

See \<http://docbox.flint.com:8081/vmulater\> for supporting docs.

Author
Paul Flint \<flint\@flint.com\>

Date
2023-06-17

Revision
0.010

This is released under GPL III
