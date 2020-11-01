# ubuntu1804 setup

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

sudo apt install zlib1g-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev
puenv install 3.8.6