#! /bin/bash

#########################################################################
# tm.sh                                                                 #
#                                                                       #
# Runs a command line interface to allow easier access to tmux sessions #
#                                                                       #
# Author: Chris Wolf                                                    #
# Version: 1.0.0 (October 11, 2019)                                     #
# Contact: chriswolfdesign@gmail.com                                    #
#########################################################################

echo "" # for spacing

# get the list of sessions
sessions=$(tmux list-sessions | cut -d":" -f 1)

cnt=1

echo "Which tmux session would you like to open?"

declare -a session_list

# print each of the sessions
for i in $sessions
do
    echo -e "\t$cnt: $i"
    session_list[$cnt]=$i
    ((cnt++))
done

# determine new session option
new_session_num=$cnt

# print the new session option
echo -e "\t$new_session_num: New Session"
echo -e "\t0: Quit"

echo -n ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "

# read in user choice
read user_choice

((max_session = cnt - 1))

if [ $user_choice -ge 1 -a $user_choice -le $max_session ]; then
    tmux attach -t ${session_list[$user_choice]}
elif [ $user_choice -eq $new_session_num ]; then
    echo -n "Enter the name for your new session > "
    read new_session_name
    tmux new-session -s $new_session_name
elif [ $user_choice -eq 0 ]; then
    exit 0
else
    echo "Invalid option"
    exit 1
fi
