sudo apt-get update
sudo apt-get install curl
curl -sSL https://get.rvm.io | bash -s stable
source /home/pipeline/.rvm/scripts/rvm
rvm requirements
rvm install 2.4.1
rvm use 2.4.1 --default
sudo apt-get -y install nodejs
gem install jekyll bundler jekyll-feed jekyll-asciidoc
export JEKYLL_ENV=production
jekyll build --source src/main/content --destination src/main/webapp
mvn -B package
