############################
# Shell d'analyse de fichier
############################
#!/bin/ksh
for i in 1 2 3 4 5 6 7 8 9 10
do
cat $1 | awk -F'|' -v i=$i '{print$i}' | sort | uniq > resultat.$i
done
