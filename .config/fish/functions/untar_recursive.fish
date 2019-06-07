function untar_recursive
    for tarball in (find . -name "*.tar")
        set extractdir (dirname $tarball)/(basename $tarball ".tar")
        if not test -d $extractdir
            mkdir $extractdir
            tar -xvf $tarball -C $extractdir
        end
    end
    for tarball in (find . -name "*.tgz")
        set extractdir (dirname $tarball)/(basename $tarball ".tgz")
        if not test -d $extractdir
            mkdir $extractdir
            tar -xzvf $tarball -C $extractdir
        end
    end
    for tarball in (find . -name "*.tar.gz")
        set extractdir (dirname $tarball)/(basename $tarball ".tar.gz")
        if not test -d $extractdir
            mkdir $extractdir
            tar -xzvf $tarball -C $extractdir
        end
    end
    for tarballxz in (find . -name "*.tar.xz")
        set tarball (dirname $tarballxz)/(basename $tarballxz ".xz")
        set extractdir (dirname $tarball)/(basename $tarballxz ".tar.xz")
        if not test -d $extractdir
            mkdir $extractdir
            xz -d $tarballxz
            tar -xvf $tarball -C $extractdir
        end
    end
end
