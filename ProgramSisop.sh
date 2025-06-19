#!/bin/bash

loading_bar() {
    bar="========================"
    bar_length=${#bar}
    echo -ne "Proses sedang berjalan: ["
    for ((i=0; i<bar_length; i++)); do
        echo -ne "${bar:$i:1}"
        sleep 0.05
    done
    echo "]"
}

while true; do
    clear
    figlet -f slant "Welcome mas Anjas" | lolcat
    echo
    echo "1. Tampilkan Kehidupan Saat Ini"
    echo "2. Tampilkan Daftar Direktori"
    echo "3. Informasi Jaringan"
    echo "4. Tampilkan Detail OS"
    echo "5. Tampilkan Waktu Install Pertama OS"
    echo "6. Informasi User"
    echo "7. Keluar"
    echo
    read -p "Pilih opsi [1-7]: " opsi

    case $opsi in
    1)
    	loading_bar
        echo
        echo -e "\e[1;36mSugeng Sonten Adam!\e[0m Tanggal dan Waktu Saat Ini"
        date
        echo
        read -p "Tekan Enter untuk kembali ke menu..."
        ;;
    2)
    	loading_bar
        echo
        echo -e "\e[1;32mIsi Direktori:\e[0m"
        ls -lh --color=always
        echo
        read -p "Tekan Enter untuk kembali ke menu..."
        ;;
    3)
    	loading_bar
        echo
        echo -e "\e[1;36mInformasi Jaringan:\e[0m"
        echo -e "Alamat IP Lokal : $(hostname -I | awk '{print $1}')"
        echo -e "Gateway         : $(ip route | grep default | awk '{print $3}')"
        echo -e "Netmask         : $(ip -o -f inet addr show | awk '{print $4}' | head -n1)"
        echo -e "DNS Server(s)   : $(grep 'nameserver' /etc/resolv.conf | head -n1 | awk '{print $2}')"

        echo
        echo -e "\e[1;36mStatus Koneksi ke Internet:\e[0m"
        wget -q --spider http://google.com && echo "Tersambung ke internet." || echo "Tidak ada koneksi internet."

        echo
        echo -e "\e[1;36mStatus Koneksi LAN/WIFI:\e[0m"
        nmcli device status | grep -E "ethernet|wifi"

        echo -e "\e[1;36m\nLokasi IP:\e[0m"
            city=$(curl -s ipinfo.io/city)
            region=$(curl -s ipinfo.io/region)
            country=$(curl -s ipinfo.io/country)
            echo -e $city, $region, $country
        echo
        read -p "Tekan Enter untuk kembali ke menu..."
        ;;
    4)
    	loading_bar
        echo
        echo -e "\e[1;36mDetail Sistem Operasi:\e[0m"
        . /etc/os-release
        echo -e "Nama OS       : $NAME"
        echo -e "Versi         : $VERSION"
        echo -e "ID            : $ID"
        echo -e "Keterangan    : $PRETTY_NAME"
        echo
        echo -e "\e[1;36mInformasi Kernel:\e[0m"
        uname -r
        echo
        echo -e "\e[1;36mProses CPU Terakhir:\e[0m"
        top -bn1 | grep Cpu
        echo
        echo -e "\e[1;36mPenggunaan Memori:\e[0m"
        free -h
        echo
        echo -e "\e[1;36mPenggunaan Disk:\e[0m"
        df -h
        echo
        read -p "Tekan Enter untuk kembali ke menu..."
        ;;
    5)
        loading_bar
        echo
	echo -e "\e[1;36mWaktu Perkiraan OS Pertama Kali Diinstal\e[0m"
    	sudo ls -lt /var/log/installer/ | tail -n +2 | awk '{print $6, $7, $8}' | head -n 1
    	sudo stat /var/log/installer/cloud-init.log | grep Modify | awk '{print $2, $3}'
        echo
        read -p "Tekan Enter untuk kembali ke menu..."
        ;;
    6)
    	loading_bar
        echo
        echo -e "\e[1;36mInformasi Pengguna Saat Ini:\e[0m"
        username=$(whoami)
        userid=$(id -u)
        groupid=$(id -g)
        realname=$(getent passwd "$username" | cut -d ':' -f 5 | cut -d ',' -f 1)
        shell=$(getent passwd "$username" | cut -d ':' -f 7)
        home=$(getent passwd "$username" | cut -d ':' -f 6)

        echo -e "Username       : $username"
        echo -e "User ID        : $userid"
        echo -e "Group ID       : $groupid"
        echo -e "Nama Lengkap   : $realname"
        echo -e "Shell          : $shell"
        echo -e "Home Directory : $home"
        echo
        read -p "Tekan Enter untuk kembali ke menu..."
        ;;
    7)
        clear

	YELLOW='\033[1;33m'
	RESET='\033[0m'


	pesan="Terimakasih mas Anjas dan mas Rafid"
	panjang=${#pesan}

	# Buat garis horizontal
	garis=$(printf '─%.0s' $(seq 1 $panjang))

	# Cetak kotak
	echo -e "${YELLOW}╭─$garis─╮"
	echo -e "│ $pesan │"
	echo -e "╰─$garis─╯${RESET}"
        break
        ;;
    *)
        echo "Pilihan tidak valid!"
        read -p "Tekan Enter untuk kembali ke menu..."
        ;;
    esac
done
