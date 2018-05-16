#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    cp 'eventIdTemplate.json' ${line};
    sed -i "s,EVENTIDPLACEHOLDER,${line},g" ${line};
    echo "Generated ${line}";
done < 'list.txt'
