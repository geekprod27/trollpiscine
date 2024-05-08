#!/bin/sh
X="$(xdpyinfo | grep dimensions | sed 's/x/ /g' | awk '{print $2}')"                                                              
Y="$(xdpyinfo | grep dimensions | sed 's/x/ /g' | awk '{print $3}')"     
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
direct_link="http://royalprog.fr/bananalock.mp4"
curl -L $direct_link -o bananalock.mp4
/sgoinfre/goinfre/Perso/jmaia/Public/pimp_my_lock_v2/pimp_my_lock  $work_folder/bananalock.mp4 0 0 $X $Y
