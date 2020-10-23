rm ./sectors.txt
touch ./sectors.txt
while IFS= read -r line
do
lotus-miner sectors status --log $line | sed -n '1p;4p' | cut -d ':' -f2 | tr -d "\t" >> ./sectors.txt
done < "./sector-id.txt"
