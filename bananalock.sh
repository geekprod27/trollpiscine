#!/bin/sh
clean()
{
    cd /tmp
    rm -rf $work_folder
    kill -9 $PPID
}
trap clean EXIT
work_folder="/tmp/banana42-$(shuf -i0-10000 -n 1)"
mkdir $work_folder
if [ ! $? -eq 0 ]; then
  echo "here"
  exit 1
fi
cd $work_folder
head -n -1 ~/.zsh_history > $work_folder/.zsh_history2
cp $work_folder/.zsh_history2 ~/.zsh_history
direct_link=$(curl -L https://www.mediafire.com/file/bnzuzinbfefny1t/bananalock.mp4/file  | grep "download.*bananalock.mp4" | sed 's/.*href="\([^ ]*\)".*/\1/')
curl -L $direct_link -o bananalock.mp4
# lance ici le pimp my lock
