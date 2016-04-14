for hipname in $(shuf < hip-usernames); do
    code=$(curl -s -w %{http_code} -o /dev/null https://github.com/$hipname)
    if [ $code = 200 ]; then
        echo "Bummer man, $hipname is already taken :("
    elif [ $code = 404 ]; then
        echo "Whoa rad, $hipname is available!"
    fi
done
