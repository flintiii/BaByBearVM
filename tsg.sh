#!/bin/bash
version="0.07"
#
# Fri 12 Jun 2023 03:02:52 PM EDT  pflint 
# Visual Bash Script to be used with
# Ten Statement Git presentation
# This can take about half hour...
# SOURCE:https://github.com/flintiii/tsg
# 
function help(){
#* function help  - Help function for template basic help goes here
clear;
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version
#
cat $0 | grep '^## ' | sed -e 's/##//'
# echo "This is the.gitignore help function"
##           *****DOCUMENTATION*****
## You get this when you put in the wrong number or type of arguments...
## The name of this program is tsg.sh, an extention of unix find.
## Theis is released under GPL I
## The syntax is:
## - tsg.sh sane         - Checks that you have the stuff you need. 
## - tsg.sh vmem         - installs VMulator.
## - tsg.sh gandt        - terminal to VMulator.
## - tsg.sh ibmgs        - terminal to VMulator.
## - tsg.sh uvmem        - removes VMulator.
## - tsg.sh flink        - Patches to current user path. 
## - tsg.sh flunk        - Removes from current user path. 
## - tsg.sh getgh        - install gh github cli
##    in all of these, Output is delivered to the screen...
## *** NOTE *** These commands need not be run as root, but installing sane code!
##
## For structure information type "grep '^\#\*' tsg.sh"
#
} # Test: tsg.sh help 
#
#
function dummy(){
#* function dummy - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: tsg.sh dummy
#
#
function vmem(){
#* function vmem - install VM EMulater http://docbox.flint.com:8081/vmulater/
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
if test -f "/tmp/vmem_essentials"; then
    echo "/tmp/vmem_essentials exists."; spause
fi
#gandt
sudo apt-get -y install x3270
sudo apt-get -y install docker.io
sudo docker run -it flintiii/vm370:latest /bin/bash
#
} # Test: tsg.sh vmem
#
#
function uvmem(){
#* function uvmem - uninstall VM EMulater http://docbox.flint.com:8081/vmulater/
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
rm /tmp/vmem_essentials
sudo docker ps -a
IM=$(docker ps -a -q); echo $IM
sudo docker stop $IM
sudo docker rm -f $IM
sudo docker rmi $IM
# sudo docker image rm  $IM
sudo apt-get -y remove x3270
sudo dpkg -P 3270-common bridge-utils containerd pigz runc ubuntu-fan xfonts-x3270-misc
echo "x3270 removed"
sudo apt-get -y remove docker.io
echo "docker.io removed"
apt-get -y autoremove
} # Test: tsg.sh uvmem
#
#
function gandt(){
#* function gandt - get IP variables and test ping
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
IM=$(docker ps -a -q); echo $IM
echo $IM > /tmp/vmem_essentials
spause
IP=$(docker inspect  -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $IM); echo $IP
echo $IP >> /tmp/vmem_essentials
ping -c 2 $IP
spause
} # Test: tsg.sh dummy
#
#
function ibmgs(){
#* function ibmgs - test and run 3270 terminal emulator
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
echo "ok then"
IM=$(head -1 /tmp/vmem_essentials); echo $IM
IP=$(tail -1 /tmp/vmem_essentials); echo $IP
x3270 -model 3279-3 $IP  3270 &
} # Test: tsg.sh ibmgs
#
#
function getgh(){
#* function getgh - install gh github cli
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
apt-get install gh
#
} # Test: tsg.sh getgh
#
#
#
function security(){
#* function security - gets your security stuff working...
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: tsg.sh security
#
#
#*####################################STANDARD AND MAYBE USEFUL FUNCTIONS BELOW
#
#* function uroot - Checks to see if you are root
function uroot(){
# echo "Make sure only root can run script"
if [ "$(id -u)" != "0" ]; then
   echo "This script needs to run as root and you are not root" 1>&2; 
   spause
   exit
else
   echo "This script needs to run as root but that's OK as you are root" 1>&2
fi
} # Test:~flint/bin/mtoc.sh uroot
#
#* function spause   - A simple tarry...
function spause(){
   # -t sets time
   # read -t $pt -p "$*" ans
   read -p "Hit enter to continue..." ans
   echo $ans
}
#
function sane(){
#* function sane - check location of vital files and programs, sanity check
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
rm -rf need > /dev/null
for prog in openssh-server gparted nautilus pluma git snmp gedit "less" "wget" 
#d ;do echo $prog; done
#D banana # programs you need put here
do
	# echo $prog
	# Better SOURCE:https://www.cyberciti.biz/faq/find-out-if-package-is-installed-in-linux/
	answer=$(echo $(dpkg-query -W -f='${Status} ${Version}\n' $prog)| cut -d " " -f 3)
	# echo $answer 
	if [ "$answer" != "installed" ];
	then
	    echo $prog >> need
	    #debug echo "Type \"sudo apt-get install $prog\" to fix this."
	    #debug spause
	    # exit 0
	fi
done
#D clear
echo "Welcome to $0!"
# uroot
echo "Missing programs:"
	if [ -f need ];
	then
	   echo "    This program needs the following program(s) to be installed on this system."
	   cat need |while read line; do echo -e \\t" - " $line; done
	   if [ "$(id -u)" != "0" ]; then
   		echo "This script needs to run as root and you are not root" 1>&2
	        echo "You want them installed if you are root they will install"
		echo "Leaving this function without installing anything"
		exit
	   fi
	   spause
	   cat need |while read line; do 
		echo "apt-get --yes install $line"
		apt-get --yes install $line 
	   done
	   #D 
	   rm -rf need
	   exit 0 # breaks you out of loop...
	else
	   echo " * None *  Looks like the pot's right, lets play!"
	fi
#
echo "end of check"
} # Test: finagrade.sh sane
#
function flink(){
#* function flink - Adds adds two symlinks to public
# This function, which runs as root, will make the program, 
# which must end in sh executable and then
# then the function adds two symlinks to the first element
# of the $PATH variable linking the argument and the argument suffixed with "sh"
# both linked to the second script element (hopefully /usr/local/bin).
# echo  "into root"
# sudo bash
# echo  "outa root"
uroot
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# Note user must be "$USER", fix in 2.0
# trap "set +x; sleep 5; set -x" DEBUG
HMDIR=$(pwd) # 
echo $HMDIR
echo $var2
spause
FNAME=$var2
echo "Is this the right name "$FNAME
#D 
spause
# echo $PWD | cut -d ":" -f 3
LKDIR="/usr/local/sbin"
echo $LKDIR
spause
# echo "removing "$HMDIR"/fu.sh"; rm  $HMDIR/fu.sh 2>/dev/null
cd $HMDIR/bin
echo $PWD" should be the home bin"
echo $PATH" should be the overall path for "$USER
#D ls -alt $HMDIRs
cd $LKDIR
sudo ln -s $HMDIR/$FNAME .
# sudo ls -alt $LKDIR/$FNAME
cd ~
echo -n "keep in mind you are in your home directory now..."
# 
spause
} # Test: finagrade.sh flink <filename>
#
#
function flunk(){
#* function flunk - Un-Symlinks [file] & [file].sh into $PATH
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
echo $var2
spause
FNAME=$var2
echo "Is this the right name "$FNAME
#D 
spause
echo "rm /usr/local/sbin/$FNAME -Do This?"
spause
sudo rm /usr/local/sbin/$FNAME
} # Test: finagrade.sh <filename>
#
#*###################################### MAIN ENTRY POINT AND COMPOUND CASE
#
#* Evaluator Routine#!/bin/bash
# pflint
# 
# Note the evaluator allows for many cases and error checking...
#d ARGS=$#         # carries the number of args into the functions...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause 
if [ "$#" -eq "1" ] && [ "$1" = "help"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "dummy"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "vmem"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "uvmem"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "ibmgs"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "getgh"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "gandt"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "spause"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "sane"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "help"      ]; then ARGS="9"; fi
# this tests the evaluator...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause 
#
#* Dispatcher Routing
# typical cases, be careful to make your own...
case "$ARGS" in
    "0") clear; $1="help"; exit 1;;     # got nothing, display help and go
    "1") $1 ;;  # run the command
    "2") var2=$2;  $1 ;;    # run the command with an argument
    "3") var3=$3; var2=$2;  $1 ;;       # run the command with two arguments
    "4") var4=$4; var3=$3; var2=$2;  $1 ;;          # run the command with three arguments
    "5") prompt=$2; $1 ;;   # run the command with a different argument
    "6") time=$3; prompt=$2;  $1 ;;     # run the command with two different arguments
    "7") flint_short_vita_2017-07-01.odtdefvbl; $1 ;;           # run the command and default variables
    "8") var2=$2;  $1 ;;    # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
      *) clear; cat $0 | grep '^## '| sed -e 's/##//'; exit 1;; # Anything else run help and exit...
esac # End main loop. TEST: ?fill in test?
#
# echo " "; echo "On "$(date +%F\ %r) $0" version "$version" stops"
#debug echo  "That's all folks!!"

