# .myConfig

## Setup
```sh
# Download Git
sudo apt-get install git
ssh-keygen -t -rsa -C "<YOUR_EMAIL@EXAMPLE.COM>"

# ...
# MANUAL!  Upload your public key to Github and Heroku
# ...

# Clone this repo and run it
cd $HOME && git clone git@github.com:ross-nordstrom/.myConfig.git
cd .myConfig
./bootstrap
```

## Config
This creates a bunch of ".xxxx" files under `~/.myConfig/`. The bootstrap file will source them from the standard paths.
