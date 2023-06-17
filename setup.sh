# install curl
sudo apt install curl -y

# install rust and cargo
curl https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env"

git clone https://github.com/propbreakerfpv/dotfilers.git
cd dotfilers
cargo install --path .
