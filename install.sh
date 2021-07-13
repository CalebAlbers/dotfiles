# source ./utils/ghInstall.sh

# ghInstall danielmmetz/settle

repo="danielmmetz/settle"

latest_tag=$(curl -s https://api.github.com/repos/$repo/releases/latest | sed -Ene '/^ *"tag_name": *"(v.+)",$/s//\1/p')
echo "Using version $latest_tag"

tarfilename="settle_$(echo $latest_tag | sed 's/v//')_darwin_amd64.tar.gz"
url=https://github.com/$repo/releases/download/$latest_tag/$tarfilename

# loc="/tmp/gh-downloads/settle"
loc="./tmp"

# mkdir -p $loc

(cd $loc && curl -OL ${url})
# cd $loc && { curl -sOL $url ; cd -; }

tar xvzf $tarfilename -C $loc
ls $loc -al
# rm -rf $tarfilename
# sudo mv $loc/* /usr/local/bin/