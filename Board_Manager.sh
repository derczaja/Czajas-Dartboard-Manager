echo "Willkommen bei Czaja's Board Manager!"
echo ""
echo "Was willst du tun?"
echo "(1) Darscheibe Nutzer wechseln"
echo "(2) Darscheibe ausschalten"
read -n 1 -p "Deine Auswahl: " x
echo ""
echo ""


if [[ "$x" != "1" && "$x" != "2" ]]; then
    echo "UngÃ¼ltiger Eingabewert! Das Programm wird geschlossen."
    exit 1
fi

if [[ "$x" == "1" ]]; then
    sshpass -p 'odroid' ssh root@192.168.178.43 '/root/setup_board.sh'
fi

if [[ "$x" == "2" ]]; then
    sshpass -p 'odroid' ssh root@192.168.178.43 '/root/board_shutdown.sh'
fi
