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

## ツール類の置き場を準備

mkdir -p ~/tools


## 個別アプリをインストール

* vs code
* google chrome

## 必要なアプリケーションをインストール

* anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(anyenv init -)"' >> ~/.bashrc
exec $SHELL -l
anyenv install nodenv
anyenv install goenv
anyenv install pyenv
exec $SHELL -l

## goのインストール

## nodejsのインストール

## pythonのインストール
