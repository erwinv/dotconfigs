function unzip_here
    for zipfile in $argv
        set zipdir (basename $zipfile ".zip")
        if [ $zipfile != $zipdir ]; and not test -d $zipdir
            unzip -d $zipdir $zipfile
        end
    end
end
