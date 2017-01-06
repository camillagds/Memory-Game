# --------------------------------------------------------------------
# Instalar aplicativos
# --------------------------------------------------------------------

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null

brew update
brew install curl
brew cask install virtualbox
brew cask install github

# --------------------------------------------------------------------
# Instalar Boot to Docker
# --------------------------------------------------------------------

brew install docker
brew cask install boot2docker

# --------------------------------------------------------------------
# Instalar VM
# --------------------------------------------------------------------

boot2docker init
boot2docker up
boot2docker ip

# --------------------------------------------------------------------
# Subir docker
# --------------------------------------------------------------------

mkdir $home/TempDesenv
cd $home/TempDesenv
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