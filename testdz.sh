#!/bin/bash

chmod +x dz.sh
./dz.sh
if [[ $? -eq 1 ]]
then
echo "~~~~Тест на отсутствие аргументов прошёл успешно~~~~"
else
echo "~~~~Тест на отсутствие аргументов не прошёл успешно~~~~"
exit 1
fi

mkdir random
./dz.sh ./random
if [[ $? -eq 2 ]]
then
echo "~~~~Тест на проверку файла прошёл успешно~~~~"
else
echo "~~~~Тест на проверку файла не прошёл успешно~~~~"
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

