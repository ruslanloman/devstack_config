#!/bin/bash

GERRIT_PROJECT="newtest/newtest"



while read line
do
        array=(${line//::/ })
        if [ $GERRIT_PROJECT == ${array[0]} ]
        then
                echo "Project Name - ${array[0]}"
                echo "Devstack Repo - ${array[1]}"
                echo "Devstack Branch- ${array[2]}"
                echo "Localrc Repo - ${array[3]}"
                echo "Localrc Branch - ${array[4]}"
        fi
done < $1
