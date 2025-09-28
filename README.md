# Edinborg-tools — نصب سریع ⚡

**برای اجرای `tools.sh` فقط دستورات زیر رو توی ترمینال کپی کن و اجرا کن.**

---

## Termux
```bash
pkg update -y
pkg install git python curl wget -y
git clone https://github.com/edinborgTM/Edinborg-tools.git
cd Edinborg-tools
chmod +x tools.sh
./tools.sh
```
## Kali Linux
```
sudo apt update
sudo apt install -y git python3 curl wget
git clone https://github.com/edinborgTM/Edinborg-tools.git
cd Edinborg-tools
chmod +x tools.sh
sudo cp tools.sh /usr/local/bin/edinborg-tools
sudo chmod +x /usr/local/bin/edinborg-tools
./tools.sh
edinborg-tools
```
