for file find /var/log -mtime -7 -ls
do
    fileName=ècho $file`;
    echo $fileName;
    mv $file ~/backup;
done
