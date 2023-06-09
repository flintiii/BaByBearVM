#!/bin/bash
version="0.03"
#
# Fri 09 Jun 2023 03:02:52 PM EDT  pflint 
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
## - tsg.sh install      - installs VMulator.
## - tsg.sh flink        - Patches to current user path. 
## - tsg.sh flunk        - Removes from current user path. 
## - tsg.sh rdome 	     - maked flint user/directory and populate github
## - tsg.sh gitstuff 	 - install git based elements 
## - tsg.sh getgh1 	     - install gh github cli
## - tsg.sh unstall      - removes VMulator.
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
function doroot(){
#* function doroot - installation elements that require root
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
apt-get update && \
apt-get --yes install git && \
apt-get --yes install gh && \
apt-get install --yes python3 \
python3-pyqt5 \
python3-pyqt5.qtwebengine \
python3-pip
#
apt-get install python-pip
apt-get install iputils-ping
#
# apt-get update;
# apt-get install -y python3 \
# python3-pyqt5 \
# python3-pyqt5.qtwebengine\ /usr/local/lib/python3.10/dist-packages/
# python3-pip
#
} # Test: tsg.sh doroot
#
function rdome(){
#* function rdome - maked flint user/directory and populate github
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
sudo useradd flint
mkdir -p /home/flint
cd /home/flint
} # Test: tsg.sh dome
#
#
function gitstuff(){
#* function gitstuff - install git based elements
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
git clone git@github.com:flintiii/bin.git
git clone git@github.com:andreikop/qutepart.git
git clone git@github.com:andreikop/enki.git
git clone git@github.com:flintiii/bin.git
} # Test: tsg.sh gitstuff
#
#
function chkeinki(){
#* function chkeinki - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
 apt-get install python3 libqt5svg5 python3-pyqt5 python3-pyqt5.qtwebengine python3-markdown python3-docutils ctags
   pip3 install -r requirements.txt
} # Test: finagrade.sh chkeinki
#
#
function getgh(){
#* function getgh - install gh github cli
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
# SOURCE:https://github.com/cli/cli/blob/trunk/docs/install_linux.mdcc1
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -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y
#
} # Test: tsg.sh getgh
#
#
function shouldgo(){
#* function shouldgo - the final steps. Enki should go...
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
python3 setup.py install
python3 -m enki
} # Test: tsg.sh shouldgo
#
function getgh1(){
#* function function getgh1 - install gh github cli
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
<type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
} # Test: tsg.sh getgh1
#
#
function security(){
#* function security - gets your security stuff working...
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
scp flint@192.168.1.242:~flint/.ssh/id_rsa* ~flint/.ssh/. 
gh auth login --hostname flintiii --with-token "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"

gh auth login --hostname flintiii
} # Test: tsg.sh security
#
function pfinst(){
#* function pfinst - user level installs
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
# pflint
# 
# pip install Python-Markdown     /# For Markdown preview
# pip install Docutils            /# For reStructuredText preview
# pip install ctags               /# For navigation in file
# pip install regex               /# For preview synchronization
# pip install CodeChat            /# For source code to HTML translation (literate programming)
# pip install Sphinx              /# To build Sphinx documentation.
# pip install Flake8              /# To lint your Python code.
#
} # Test: tsg.sh pfinst
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
#* Evaluator Routine
# Note the evaluator allows for many cases and error checking...
#d ARGS=$#         # carries the number of args into the functions...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause 
if [ "$#" -eq "1" ] && [ "$1" = "help"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "dummy"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "doroot"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "rdome"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "gitstuff"      ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "getgh"       ]; then ARGS="2"; fi
if [ "$#" -eq "2" ] && [ "$1" = "shouldgo"       ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "getgh1"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "security"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "spause"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "sane"        ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "help"        ]; then ARGS="9"; fi
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
# # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
    "9") var3=grep '^\#\*' tsg.sh$3; var2=$2;  $1 ;;       # run the command and settle variables
      *) clear; cat $0 | grep '^## '| sed -e 's/##//'; exit 1;; # Anything else run help and exit...
esac # End main loop. TEST: ?fill in test?
#
# echo " "; echo "On "$(date +%F\ %r) $0" version "$version" stops"
#debug echo  "That's all folks!!"
#
# echo "road closed at line $LINENO"
# 2>/dev/null << cut
#
# cut
# echo "Hello from line $LINENO!"


}}}

