#!/bin/bash

USERS="$(cat ./usuarios.txt)"

#echo $USERS

mkdir imagenes 2>/dev/null
mkdir musica 2>/dev/null


for user in $USERS
do
	useradd $user 2>/dev/null
	mkdir /home/$user 2>/dev/null
done

















