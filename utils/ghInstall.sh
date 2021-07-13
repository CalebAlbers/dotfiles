function ghInstall(){
    local loc="/tmp/gh-downloads/$1"
    local repo="https://api.github.com/repos/$1/releases/latest"
    local URL=`curl -s "${repo}" | grep "browser_download_url" | cut -d '"' -f 4 | fzf`
    echo "Repo: $repo Temp Dir: $loc"

    mkdir -p $loc
    curl -sOL --output-dir $loc  ${URL}
    local tarfilename="$(find $loc  -name "*darwin_amd64.tar.gz")"
    tar xvzf $tarfilename -C $loc
    ls $loc -al

    local PS3='Please choose the Installing Method: '
    local gh_options=("Move to Bin Dir" "Make install" "Quit")
    select opt in "${gh_options[@]}"
    do
        case $opt in
            "Move to Bin Dir")
                rm -rf $tarfilename
                sudo mv $loc/* /usr/local/bin/
                break
                ;;
            "Make install")
                make install
                break
                ;;
            "Quit")
                break
                ;;
            *) echo "invalid option $REPLY";;
        esac
    done

    rm -rf $loc
}