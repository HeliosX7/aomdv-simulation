#!/bin/bash
i=0
sourceNodeList=(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 13 7 11 19 21 20 0 1 2 23 15 6 7 1 10 5 6 7 12 2 24 22 20 4 6)
sinkNodeList=(10 5 6 7 12 2 24 22 20 4 6 13 7 11 19 21 20 0 1 2 23 15 6 7 16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 )
lenlist=${#sourceNodeList[@]}
numPackets=2000

for ((i=0; i<$lenlist;i++))
do
	./waf --run "scratch/finalsimulationGrid --sourceNode=${sourceNodeList[i]} --sinkNode=${sinkNodeList[i]} --numPackets=${numPackets}"
done