IFS=$'\n'

if [ -z "$1" ]; then
    for file in `ls -1 | grep epub`
    do
        baseFilename=`basename $file .epub`
        echo "${baseFilename}"
        ebook-convert "${baseFilename}.epub" "${baseFilename}.mobi"
    done
else
    echo `$1`
    baseFileName=`basename $1 .epub`
    echo "${baseFileName}"
    ebook-convert "${baseFileName}.epub" "${baseFileName}.mobi"
fi

