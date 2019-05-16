IFS=$'\n'
for file in `ls -1 | grep epub`
do
    baseFilename=`basename $file .epub`
    echo "${baseFilename}"
    ebook-convert "${baseFilename}.epub" "${baseFilename}.mobi"
done
