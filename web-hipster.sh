fmtstr=$1

while read hipname; do
    code=$(curl -L -s -w %{http_code} -o /dev/null $(printf $fmtstr $hipname))
    if [ $code = 200 ]; then
        echo "Bummer man, $hipname is already taken :("
    elif [ $code = 404 ]; then
        echo "Whoa rad, $hipname is available!"
    fi
done
