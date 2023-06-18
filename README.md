                            VMEMulater
                    The Dreaded Demonstration

This is the guidance to help get a Visual Bash Shell script \"tsg.sh\"
from github.com to a local directory and repository.

As this is done in the bash shell script, if you like use your own variation
at your own risk...

Step by step:
Open a terminal - Copy and paste these steps:Update README.md

1.   rm -rf main.zip tsg tsg-main
2.   firefox  https://github.com/flintiii/tsg/archive/refs/heads/main.zip
3.   Save file, then go back to the terminal
4.   unzip  Downloads/tsg-main.zip -d ~/
5.   mv ~/tsg-main tsg
6.   cd tsg
7.   sudo ./tsg.sh
8.   sudo ./tsg.sh sane
9.   sudo ./tsg.sh vmem
10.  /usr/sbin/vm/bin/rvm370.sh (do this twice)

Open another terminal - Copy and paste the following:

1.  sudo ./tsg.sh gandt
2.  sudo ./tsg.sh ibmgh

Observe that you have a working VM 3270 client attached to a local copy
of the open source VM 370 in a docker server. Type:
Update README.md
1.  logon maint (twice?)
2.  cpcmsUpdate README.md
3.  i cms
4.  l \* \* a
5.  \<alt\> 2
6.  logoff
7.  Exit x3270

Additional Info

See \<http://docbox.flint.com:8081/vmulater\> for supporting docs.

Author
Paul Flint \<flint\@flint.com\>
https://www.cs.tufts.edu/comp/150FP/archive/melinda-varian/25paper.pdf
Date
2023-06-18

Revision
0.010

This is released under GPL III
