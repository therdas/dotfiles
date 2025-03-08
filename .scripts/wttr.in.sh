if [ -e ~/.scripts/wttrin.temp ]; then
    if ! [ $(find ~/.scripts/wttrin.temp -mmin +15) ]; then    
        output=$(cat ~/.scripts/wttrin.temp)
        echo "$output"
        exit -1
    fi
fi

touch ~/.scripts/wttrin.temp
output=$(curl 'https://wttr.in/Birati?format=%t+%c%m' --silent)
echo -n $output
echo -n $output > ~/.scripts/wttrin.temp
