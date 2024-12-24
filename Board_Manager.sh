printf "Willkommen bei Czaja's Board Manager!\n"
printf "Was willst du tun?\n"
printf "(1) Darscheibe Nutzer wechseln\n"
printf "(2) Dartscheibe updaten\n"
printf "(3) Darscheibe ausschalten\n"
read -n 1 -p "Deine Auswahl: " x
printf "\n\n"

if [[ "$x" == "1" ]]; then
    sshpass -p 'odroid' ssh root@192.168.178.43 '/root/setup_board.sh'
elif [[ "$x" == "2" ]]; then
    sshpass -p 'odroid' ssh root@192.168.178.43 '/root/update_board.sh'
elif [[ "$x" == "3" ]]; then
    sshpass -p 'odroid' ssh root@192.168.178.43 '/root/board_shutdown.sh'
else
    printf "Ungueltiger Eingabewert! Das Programm wird geschlossen.\n"
    exit 1
fi