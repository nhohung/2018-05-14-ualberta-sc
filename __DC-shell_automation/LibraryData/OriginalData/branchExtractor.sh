#!/bin/bash

while read -r LINE; do
    grep "Web URL" MostPopularByBranch_NoRowID.csv > "$LINE".csv
    grep "$LINE" MostPopularByBranch_NoRowID.csv >> "$LINE".csv
done < branchCodes.txt
