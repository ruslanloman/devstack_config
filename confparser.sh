#!/bin/bash -xe

GERRIT_PROJECT="newtest/newtest"



while read line
do
        array=(${line//::/ })
        if [ $GERRIT_PROJECT == ${array[0]} ]
        then
         {
                echo  ${array[0]}
                echo  ${array[1]}
                echo  ${array[2]}
                echo  ${array[3]}
                echo  ${array[4]}
        } > param.list
        fi
done < $1
