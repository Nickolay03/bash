#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ];
then
	echo "Задание"
	echo "32. Создать функцию распознавания переданного параметра"
	echo "и использовать ее внутри функции,"
	echo "обрабатывающей параметры внутри скрипта"
	echo
  echo
fi

function isParam {
	if [ -n "$1" ] 
	then
		return  0
	else
		return 1
	fi
}

function isNumber {
	if [ $1 -eq $1 2> /dev/null ]; 
	then
		return 0
	else
		return 1
	fi
}

function print {
	for var in "$@"
	do
		if isNumber $var; then
			echo $var
		fi
	done
}

function main {
	if isParamsPassed $1; then 
		printNumbers "$@"
	else 
		echo no params
	fi
} 

main "$@"
