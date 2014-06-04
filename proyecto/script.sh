#!/bin/bash

USERS="$(cat ./usuarios.txt)"

mkdir imagenes 2>/dev/null
mkdir musica 2>/dev/null

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





