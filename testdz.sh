#!/bin/bash

chmod +x dz.sh
./dz.sh
if [[ $? -eq 1 ]]
then
echo "Аргумент отсутствует"
else
echo "Аргумент присутсвует"
exit 1
fi

mkdir random
./dz.sh ./random
if [[ $? -eq 2 ]]
then
echo "Проверка файла пройденна"
else
echo "Проверка файла не пройденна"
exit 2
fi
rm -r random

touch randoms.txt
./dz.sh ./randoms.txt
if [[ $? -eq 3 ]]
then
echo "~~~~Тест на проверку *.pdf прошёл успешно~~~~"
else
echo "~~~~Тест на проверку *.pdf не прошёл успешно~~~~"
exit 3
fi 
rm randoms.txt
