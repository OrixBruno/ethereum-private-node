#!/bin/sh
echo " #####   #####   ##  #     # ";
echo "#######  ##  ##  ##   #   #  ";
echo "##   ##  ##  ##  ##    # #   ";
echo "##   ##  #####   ##     #    ";
echo "##   ##  ####    ##    # #   ";
echo "#######  ## ##   ##   #   #  ";
echo " #####   ##  ##  ##  #     # ";
printf "\r"

echo ""
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

echo "starting node ..."

# SUBIR GET MANUALMENTE
docker-compose up -d --build geth \
&& docker-compose logs -f