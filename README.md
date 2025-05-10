                            BaByBearVM, a Virtual Machine Emulater
                    
THIS IS THE NEW METHOD as of 2025-05-09

If you want to Start with local IP support for client, this works:

Log onto machine via "ssh -Y" you wish to contain the vm370 instance

ssh -Y $USER@<container>
Where:
$USER = Valid sudoer.
<container> = The machine on which you want to start vm370 services.

Once logged on, clear possible old instance and container.
sudo docker stop vm370; sudo docker rm vm370

Copy and paste:

sudo docker run --network=host \
           -dit --name vm370 \
           -p 3270:3270 -p 8038:8038 \
           rattydave/docker-ubuntu-hercules-vm370:latest

This will ask for your root password, set the container instance up, and return you to your
$USER account.

Because the IP address is the same as the host, The 3270 docker instance needs to open with on the same machine, the following line:

x3270 $(hostname -i):3270 &

Your 3270 terminal should open.



To find out more about VM/370, click Here

Revision
0.010

This is released under GPL III
