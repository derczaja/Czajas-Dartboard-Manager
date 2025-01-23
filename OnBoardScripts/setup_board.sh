systemctl stop autodarts
printf "\n"

printf "Für wen willst du das Board einrichten ?\n"
printf "(1) Hugo\n"
printf "(2) Philip\n"
read -n 1 -p "Deine Auswahl: " x
printf "\n\n"

if [[ "$x" != "1" && "$x" != "2" ]]; then
    printf "Ungueltiger Eingabewert! Das Programm wird geschlossen.\n"
    exit 1
fi

if [[ "$x" == "1" ]]; then
    sed -i "s/board_id = '.*'/board_id = '7ab070a3-daf5-4310-aa16-c74f91e5443a'/" /home/czaja/.config/autodarts/config.toml
    sed -i "s/api_key = '.*'/api_key = 'HffAeKLyNaUPERuJDxlYSZAeUr98kx5D'/" /home/czaja/.config/autodarts/config.toml
    printf "Die Dartscheibe wurde erfolgreich fuer Hugo konfiguriert!\n"
fi

if [[ "$x" == "2" ]]; then
    sed -i "s/board_id = '.*'/board_id = 'b3dfde8d-d426-442a-bd56-68a611becd80'/" /home/czaja/.config/autodarts/config.toml
    sed -i "s/api_key = '.*'/api_key = 'PbLqfAccqTRfVpbTabJwS9Vf4l4qT4T2'/" /home/czaja/.config/autodarts/config.toml
    printf "Die Dartscheibe wurde erfolgreich fuer Philip konfiguriert!\n"
fi

printf "Das Board wird nun neugestartet.\n"
systemctl start autodarts