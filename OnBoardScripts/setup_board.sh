systemctl stop autodarts
echo ""

echo "Für wen möchtest du das Board einrichten ?"
echo "(1) Hugo"
echo "(2) Philip"
read -n 1 -p "Deine Auswahl: " x
echo ""
echo ""

if [[ "$x" != "1" && "$x" != "2" ]]; then
    echo "Ungültiger Eingabewert! Das Programm wird geschlossen."
    exit 1
fi

if [[ "$x" == "1" ]]; then
    sed -i "s/board_id = '.*'/board_id = '7ab070a3-daf5-4310-aa16-c74f91e5443a'/" /root/.config/autodarts/config.toml
    sed -i "s/api_key = '.*'/api_key = 'HffAeKLyNaUPERuJDxlYSZAeUr98kx5D'/" /root/.config/autodarts/config.toml
    echo "Die Dartscheibe wurde erfolgreich für Hugo konfiguriert!"
fi

if [[ "$x" == "2" ]]; then
    sed -i "s/board_id = '.*'/board_id = 'b3dfde8d-d426-442a-bd56-68a611becd80'/" /root/.config/autodarts/config.toml
    sed -i "s/api_key = '.*'/api_key = 'PbLqfAccqTRfVpbTabJwS9Vf4l4qT4T2'/" /root/.config/autodarts/config.toml
    echo "Die Dartscheibe wurde erfolgreich für Philip konfiguriert!"
fi

echo "Das Board wird nun neugestartet."
echo ""
systemctl start autodarts