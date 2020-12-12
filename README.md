# ubuntu1804 setup

## リポジトリの変更

理化学研究所のリポジトリに変更する例

sudo sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.riken.go.jp/Linux/ubuntu/%g" /etc/apt/sources.list

北陸先端科学技術大学院大学に変更する例

sudo sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list

KDDI研究所に変更する例

sudo sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://www.ftp.ne.jp/Linux/packages/ubuntu/archive/%g" /etc/apt/sources.list

## デスクトップ環境をmateに変更

sudo apt -y install ubuntu-mate-desktop 

## 日本語化　mozcの設定

sift + spaceで変換　無変換が切り替わるように設定する

## .sshの設定

既存のファイルをコピーする

## node.jsのENOSPC no space left on device対策

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

## ホームディレクトリを英字表記に変更

sudo apt install xdg-user-dirs-gtk

LANG=C xdg-user-dirs-gtk-update

## ツール類の置き場を準備する

mkdir -p ~/tools

## プロジェクトの置き場を準備する

mkdir -p ~/projects

## 必要なアプリケーションをインストール

### anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv

echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(anyenv init -)"' >> ~/.bashrc

exec $SHELL -l

anyenv install nodenv

anyenv install goenv

anyenv install pyenv

exec $SHELL -l

### docker

sudo apt install docker-compose

### vs code
visual studio code deb package download

### google chrome
chrome deb package deb download

### go

goenv install 1.15.3

### nodejs

nodenv install 15.0.1

### python

sudo apt install zlib1g-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev build-essential

pyenv install 3.8.6

pip install pipenv

echo 'export PIPENV_VENV_IN_PROJECT=true' >> ~/.bashrc

