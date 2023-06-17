# install curl
sudo apt install curl -y

# install rust and cargo
curl https://sh.rustup.rs -sSf | sh

git clone https://github.com/propbreakerfpv/dotfilers.git
cd dotfilers
/bin/bash -c cargo install --path .
