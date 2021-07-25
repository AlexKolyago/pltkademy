#!/bin/bash

i=0
firstname="nginx-01.com"
secondname="nginx-02.com"

#grep returns only the names of the files containing the matched lines, one per line.
#from files ending .conf
  for file in $(grep -lr $firstname *.conf);

  do
      sed -e "s/$firstname/$secondname/g" -i $file    #corrects names and saves
      
      let i++;

      if [[ $i == 100 ]]; then   #in 100 config files
  	break
      fi

  done;
