function unzip_recursive
    for zipfile in (find . -name "*.zip")
        set dir (dirname $zipfile)
        set zipdir (basename $zipfile ".zip")
        set outdir "$dir/$zipdir"
        if not test -d $outdir
            unzip -d $outdir $zipfile
        end
    end
    for zipfile in (find . -name "*.7z")
        set dir (dirname $zipfile)
        set zipdir (basename $zipfile ".7z")
        set outdir "$dir/$zipdir"
        if not test -d $outdir
            7z x -o$outdir $zipfile
        end
    end
end
