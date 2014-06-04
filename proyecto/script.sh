#!/bin/bash

USERS="$(cat ./usuarios.txt)"

mkdir imagenes 2>/dev/null
mkdir musica 2>/dev/null


for user in $USERS
do
	useradd $user 2>/dev/null
	mkdir /home/$user 2>/dev/null
	mkdir /home/$user/imagenes
	mkdir /home/$user/musica
done

imagenes=( ./Muestra/Imagenes/*.jpg )
N=${#imagenes[@]}

canciones=( ./Muestra/Musica/*.mp3 )
M=${#canciones[@]}

for i in $USERS
do
	mkdir ./imagenes/$i 2>/dev/null
	mkdir ./musica/$i 2>/dev/null

	((num=RANDOM%N))
	randomfile=${imagenes[$num]}
	cp "$randomfile" ./imagenes/$i

	((num=RANDOM%M))
	randomfile=${canciones[$num]}
	cp "$randomfile" ./musica/$i
done

for i in $USERS
do
	cp ./imagenes/$i/* /home/$i/imagenes
	cp ./musica/$i/* /home/$i/musica
done





