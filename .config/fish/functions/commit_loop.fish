function commit_loop
    set --local options (fish_opt --short=F --long=file --required)
    set options $options (fish_opt --short=t --long=timeout --optional)
    argparse $options -- $argv

    set --query _flag_timeout; or set --local _flag_timeout 120

    echo "Commit message:"
    cat $_flag_file

    svn commit --file $_flag_file
    while not test $status -eq 0
        echo "Commit attempt failed, waiting $_flag_timeout seconds before retry..."
        sleep $_flag_timeout
        echo "Retrying..."
        svn commit --file $_flag_file
    end
    date
end
