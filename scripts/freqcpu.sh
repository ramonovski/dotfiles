#!/bin/bash

# Set variables
IFS="$(printf '\n\t')"
CPUSET=$(which cpufreq-set)
CPUINFO=$(which cpufreq-info)
CURRENT=$("${CPUINFO}" | grep 'The governor' | awk '{print $3}' | tr -d '"' | tail -1)

if [[ ${CURRENT} != $1 ]]; then
	for i in $(cat /proc/cpuinfo |grep processor|awk '{print $3}');
		do
			sudo ${CPUSET} -c "${i}" -g "$1"; done
			echo "Governor mode has changed from '"${CURRENT}"' to '"${1}"'"
else
	echo ""${1}" mode currently loaded"
fi
