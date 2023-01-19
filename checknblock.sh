#!/bin/bash

# Modify an already existent line in /etc/hosts file
# Blocks Youtube and Twitch - Monday to Friday

CHECK=$(date +%u)

unblock_me() {
	chattr -i /etc/hosts
	sed -i 's/youtube/yytt/g ; s/twitch/ttww/g' /etc/hosts
	chattr +i /etc/hosts
	}
block_me() {
        chattr -i /etc/hosts
        sed -i 's/yytt/youtube/g ; s/ttww/twitch/g' /etc/hosts
        chattr +i /etc/hosts
	}

if [ $CHECK -gt 5 ]
then
	unblock_me
else
	block_me
fi
