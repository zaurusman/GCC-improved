#!/bin/bash

# change these per each homework
#	link to tests:
testsurl="https://github.com/Hila-Levi/HW1_tests"

hostname="cscomp"
tmpdir="selfcheck_tmp"

if [ "$(hostname)" != "$hostname" ]; then
	echo "This script is only intended to run on $hostname"
	exit
fi

if [ -z "$1" ]; then
	echo "Usage: ./"$( basename "$0" )" <your submission zip file>"
	exit
fi

if [ ! -f "$1" ]
	then
		echo "Submission zip file not found!"

		exit
fi

rm -rf "$tmpdir" &> /dev/null
if [ -d "$tmpdir" ]
	then
		echo "Cannot clear tmp directory. Please delete '"$tmpdir"' manually and try again"
		exit
fi
mkdir "$tmpdir" &> /dev/null

unzip "$1" -d "$tmpdir" &> /dev/null
if [[ $? != 0 ]] 
	then
		echo "Unable to unzip submission file!"
		exit
fi

cd "$tmpdir"
if [ ! -f scanner.lex ]
	then
		echo "File scanner.lex not found!"
		exit
fi

flex scanner.lex &> /dev/null
if [[ $? != 0 ]] 
	then
		echo "Cannot build submission!"
		exit
fi
g++ -std=c++17 lex.yy.c hw1.cpp -o hw1.out &> /dev/null
if [[ $? != 0 ]] 
	then
		echo "Cannot build submission!"
		exit
fi
if [ ! -f hw1.out ]
	then
		echo "Cannot build submission!"
		exit
fi

git clone "$testsurl" &> /dev/null
if [ ! -d HW1_tests ]
	then
		echo "Unable to download tests!"
		exit
fi
cd HW1_tests
mv * ../
cd ..


#	number of tests:
numtests=2
#	command to execute test:
command="./hw1.out < t\$i.in >& t\$i.res"
i="1"
while [ $i -le $numtests ]
	do
		eval $command
		diff t$i.res t$i.out &> /dev/null
		if [[ $? != 0 ]] 
			then
				echo "Failed test #"$i"!"
				exit
		fi
		i=$[$i+1]
done

cd .. &> /dev/null
rm -rf "$tmpdir"

echo "Ok to submit :)"
exit
