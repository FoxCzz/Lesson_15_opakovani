#!/bin/bash
echo "Test" | fold -w1 | nl -w1 -s';' > slovo.txt
tr '[:upper:]' '[:lower:]' < slovo.txt > slovo_m.txt
sort -t';' -k2,2 slovo_m.txt > serazeni.txt

join -t';' -1 2 -2 1 serazeni.txt hlaskovaci_abecdeda.txt > conected.txt
sort -t';' -k2,2n conected.txt | cut -d';' -f1 > ukol6.txt