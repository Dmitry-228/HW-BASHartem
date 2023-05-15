#!/bin/bash

if [[ ! -n $1 ]]
then
echo "Нет аргумента"
exit 1 
fi

if [[ ! -f $1 ]]
then
    echo "Внимание ошибка, Для выполнения скрипта вам нужно написать путь до PDF файла"
    echo "К примеру:(./dz.sh ~/Загрузки/Hello.pdf)"
    exit 2
fi

if [[ "$1" != "*.pdf" ]]
then
echo "Это не pdf файл"
exit 3
fi

echo "Внимание для выполнения скрипта вам нужна программа AbiWord"
echo ""
echo "Во что ты хочешь конвертировать:"
echo "1. word"
echo "2. txt"
echo "3. rtf"
echo "Для выбора нужно написать цифру, а если несколько конвертация то числа через пробел"
read -a choise

for i in "${choise[@]}"
do
    if [[ i -eq 1 ]]
    then
        abiword --to=doc $1
        echo "Сделана конвертация в word"
    fi
    if [[ i -eq 2 ]]
    then
        abiword --to=txt $1
        echo "Сделана конвертация в txt"
    fi
    if [[ i -eq 3 ]]
    then
        abiword --to=rtf $1
        echo "Сделана конвертация в rtf"
    else
    echo "неверный аргумент"
    exit 4
    fi
done
