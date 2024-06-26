# include custom bashrc
echo 'source ~/.config/bash/init.bashrc' >> ~/.bashrc

# apt install
apt update && apt upgrade -y
apt install -y curl git

# apt clean
apt clean
rm -rf /var/lib/apt/lists/*

# other install
mkdir -p /root/tmp && cd /root/tmp

# nvim install
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz

# other clean
cd .. && rm -rf tmp

