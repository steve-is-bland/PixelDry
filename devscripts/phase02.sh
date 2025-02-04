#!/usr/bin/bash

# run once forever
# ./src/wpixdry/phase02_track_progress.py -c secure_params.yml -i -1

# Run on repeat logging crashes to a specific file
for i in {1..30}
do
	echo "Run $i $(date)"
	echo "Run $i $(date)" >> phase02_output.txt
	./src/wpixdry/phase02_track_progress.py -c secure_params.yml -i -1 >> phase02_output.txt 2>&1
	echo -e "\n\n" >> phase02_output.txt
done
