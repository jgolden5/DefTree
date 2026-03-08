#!/bin/bash

n=0

cd src/main/java/
clear
javac com/ple/DefLog/*.java && echo "Java compiled successfully ✅" || echo "Java did not compile successfully ❌"

while [[ $n -lt $COLUMNS ]]; do
  echo -n '.'
  ((n++))
done

echo
echo
ls com/ple/DefLog/ | grep '.class' | sed 's/\(.*\).class/\1/' | xargs -I {} java com/ple/DefLog/{}
rm com/ple/DefLog/*.class
cd ../../../../
