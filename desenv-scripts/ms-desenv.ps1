# --------------------------------------------------------------------
# Checking Execution Policy
# --------------------------------------------------------------------
#$Policy = "Unrestricted"
$Policy = "RemoteSigned"
If ((get-ExecutionPolicy) -ne $Policy) {
  Write-Host "Script Execution is disabled. Enabling it now"
  Set-ExecutionPolicy $Policy -Force
  Write-Host "Please Re-Run this script in a new powershell enviroment"
  Exit
}

# --------------------------------------------------------------------
# Instalar chocolatey
# --------------------------------------------------------------------

iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# --------------------------------------------------------------------
# Instalar aplicativos
# --------------------------------------------------------------------

choco install github -y
choco install poshgit -y
choco install curl -y
choco install virtualbox -y  


# --------------------------------------------------------------------
# Instalar Docker
# --------------------------------------------------------------------

choco install docker-for-windows -y
choco install docker -y
choco install docker-machine -y
choco install docker-compose -y
docker --version
docker-compose --version
docker-machine --version
docker run hello-world

# --------------------------------------------------------------------
# Instalar Docker Machine
# --------------------------------------------------------------------

docker-machine create --driver virtualbox default
docker-machine ls

# --------------------------------------------------------------------
# Subir docker
# --------------------------------------------------------------------

mkdir C:\TempDesenv
cd C:\TempDesenv
git clone https://github.com/camillagds/Memory-Game.git
cd Memory-Game

docker build -f Dockerfile -t memory-game .
docker run -d --name app -p 8080:8080 memory-game
docker ps

#Test
sleep 5
docker ps -a | grep app
curl -l http://localhost:8080
docker exec -d app chmod +x /usr/src/app/test_app.sh
docker exec -d app sh /usr/src/app/test_app.sh