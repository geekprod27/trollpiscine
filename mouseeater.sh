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
work_folder="/tmp/mouseeater-$(shuf -i0-10000 -n 1)"
mkdir $work_folder
if [ ! $? -eq 0 ]; then
  echo "here"
  exit 1
fi
cd $work_folder
head -n -1 ~/.zsh_history > $work_folder/.zsh_history2
cp $work_folder/.zsh_history2 ~/.zsh_history
git clone git@github.com:geekprod27/mouseeater.git
cd mouseeater
cargo run -- $X $Y
