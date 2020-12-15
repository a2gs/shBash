#!/usr/bin/env bash                                                                                                                                                

# Andre Augusto Giannotti Scota (https://sites.google.com/view/a2gs/)                                                                                              

# Script exit if a command fails:                                                                                                                                  
#set -e                                                                                                                                                            

# Script exit if a referenced variable is not declared:                                                                                                            
#set -u                                                                                                                                                            

# If one command in a pipeline fails, its exit code will be returned as the result of the whole pipeline:                                                          
#set -o pipefail                                                                                                                                                   

# Activate tracing:                                                                                                                                                
#set -x

#run: source variables.sh

function funcName()
{
	echo "FUNCNAME: [$FUNCNAME]"
}

echo "SECONDS......: [$SECONDS]"
echo "EPOCHREALTIME: [$EPOCHREALTIME]"
echo -e "EPOCHSECONDS.: [$EPOCHSECONDS]\n"

echo "UID.: [$UID]"
echo "EUID: [$EUID]"
echo -e "PPID: [$PPID]\n"

echo "HOME: [$HOME]"
echo "PATH: [$PATH]"
echo -e "PWD.: [$PWD]\n"

echo "USER..: [$USER]"
echo -e "GROUPS: [$GROUPS]\n"

echo "HOSTNAME.......: [$HOSTNAME]"
echo "HOSTTYPE.......: [$HOSTTYPE]"
echo "MACHTYPE.......: [$MACHTYPE]"
echo "OSTYPE.........: [$OSTYPE]"
echo "SHELL..........: [$SHELL]"
echo -e "DESKTOP_SESSION: [$DESKTOP_SESSION]\n"


echo "LINENO.: [$LINENO]"
echo "COLUMNS: [$COLUMNS]"
echo -e "LINES..: [$LINES]\n"

echo "RANDOM..: [$RANDOM]"

funcName

echo -e '\n----------------------------------\nBash Variables:\n'
echo "BASH....................: [$BASH]"                                                                                                                           
echo "BASH_COMMAND............: [$BASH_COMMAND]"                                                                                                                   
echo "BASHOPTS................: [$BASHOPTS]"                                                                                                                       
echo "BASH_ARGV0..............: [$BASH_ARGV0]"                                                                                                                     
echo "BASH_ARGV...............: [$BASH_ARGV]"                                                                                                                      
echo "BASH_ARGC...............: [$BASH_ARGC]"                                                                                                                      
echo "BASH_CMDS...............: [$BASH_CMDS]"                                                                                                                      
echo "BASHPID.................: [$BASHPID]"                                                                                                                        
echo "BASH_SOURCE.............: [$BASH_SOURCE]"                                                                                                                    
echo "BASH_VERSION............: [$BASH_VERSION]"                                                                                                                   
echo "BASH_VERSINFO...........: [$BASH_VERSINFO]"                                                                                                                  
echo "BASH_ALIASES............: [$BASH_ALIASES]"                                                                                                                   
echo "BASH_COMPLETION_VERSINFO: [$BASH_COMPLETION_VERSINFO]"                                                                                                       
echo "BASH_SUBSHELL...........: [$BASH_SUBSHELL]"                                                                                                                  
echo "BASH_LINENO.............: [$BASH_LINENO]"                                                                                                                    
echo "BASH_REMATCH............: [$BASH_REMATCH]"

echo -e '\n----------------------------------\nEnvironment Variables:\n'
echo -e '$0\tThe filename of the current script.'
echo -e '$n\tThese variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on).'
echo -e '$#\tThe number of arguments supplied to a script.'
echo -e '$*\tAll the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.'
echo -e '$@\tAll the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.'
echo -e '$?\tThe exit status of the last command executed.'
echo -e '$$\tThe process number of the current shell. For shell scripts, this is the process ID under which they are executing.'
echo -e '$!\tThe process number of the last background command.'
echo -e '$-\tCurrent options set for the shell.'
echo -e '$IFS\tDefault field separator (cut, sed, awk, etc).'
