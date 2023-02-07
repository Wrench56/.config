echo "Usage: ./fix_discord_presence.sh <windows_username> <wsl_username>"

sudo apt-get install socat
sudo apt install golang-go
export PATH=$PATH:/usr/local/go/bin
go env -w GO111MODULE=auto
go get -d github.com/jstarks/npiperelay
mkdir -p /mnt/c/Users/$1/go/bin
go install github.com/jstarks/npiperelay@latest
GOOS=windows go build -o /mnt/c/Users/$1/go/bin/npiperelay.exe github.com/jstarks/npiperelay
sudo ln -s /mnt/c/Users/$1/go/bin/npiperelay.exe /usr/local/bin/npiperelay.exe
sudo groupadd discord
sudo usermod -a -G discord $2
echo "Executing socat..."
exec socat UNIX-LISTEN:/var/run/discord-ipc-0,fork,group=discord,umask=007 EXEC:"npiperelay.exe -ep -s //./pipe/discord-ipc-0",nofork
