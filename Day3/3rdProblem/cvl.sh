for files in *.log.1
do
	fileName=`echo $files | awk -F. '{print $1}'`;
	echo $fileName;
	date '+%d-%m-%Y';
	newFile=$fileName-`date '+%d-%m-%Y'`;
        echo $newFile;
	printf "\n";
	if [ -s $newFile ]
	then
		rm -r $newFile;
	fi
	cp $files $newFile.log;
done
