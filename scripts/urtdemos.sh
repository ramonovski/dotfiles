#/bin/bash

IFS="$(printf '\n\t')"
#DEMODIR="${HOME}/.q3a/q3ut4/demos"
DEMODIR="${HOME}"
cd "${DEMODIR}"
FILES=$(find ./ -iname "*.dm_68")
for i in ${FILES}
	do
		mv $i $(echo $i | tr '[:lower:]' '[:upper:]' | sed 's/.DM_68/.dm_68/g')
	done
