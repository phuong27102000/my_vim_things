#!/bin/bash
# ==================================================
# Filename: setup.bash 
# Date    : 2022-11-28
# Author  : Nguyen Ha Nhat Phuong
# Contact : phuong2710@gmail.com
# ==================================================

PWD=$(pwd)
VIM_FOL=~/.vim
VIM_FILE=~/.vimrc
VIM_BACKUP=~/.myvimbackup
VIM_PSN=$VIM_BACKUP/personal.vim
if [ -d $VIM_FOL ] || [ -f $VIM_FILE ]; then
	if [ ! -L $VIM_FOL ] || [ ! -L $VIM_FILE ]; then
		if [ -d $VIM_BACKUP/ ]; then
		  echo "[WARNING] Already created $VIM_BACKUP/"
		else
		  echo "[INFO] Creating $VIM_BACKUP/"
		  mkdir $VIM_BACKUP/
		fi
		read -p "--> This process will move your current .vim/ and .vimrc to your $VIM_BACKUP/? [y/n] " yn                                                 
		case $yn in
		  [Yy]* ) echo "[INFO] Process continues";;
		  * ) echo "[INFO] Cancelled process."; exit;;
		esac
	fi
fi

if [ -d $VIM_FOL/ ] || [ -L $VIM_FOL ]; then
	if [ -L $VIM_FOL ]; then
		echo "[INFO] Unlink $VIM_FOL/"
		unlink $VIM_FOL
	else
		echo "[INFO] Moving from $VIM_FOL/ to $VIM_BACKUP/.vim/"
    if [ -w $VIM_FOL ]; then
		  mv $VIM_FOL $VIM_BACKUP/.vim/
    else
      echo "Cannot move file $VIM_FOL . Please set permission: \"chmod +w $VIM_FOL\""
      exit
    fi
	fi
	echo "[INFO] Link $VIM_FOL/ to $PWD/vim"
	ln -s -T $PWD/vim/ $VIM_FOL 
fi
		
if [ -f $VIM_FILE ] || [ -L $VIM_FILE ]; then
	if [ -L $VIM_FILE ]; then
		echo "[INFO] Unlink $VIM_FILE"
		unlink $VIM_FILE
	else
		echo "[INFO] Moving from $VIM_FILE/ to $VIM_BACKUP/.vimrc/"
    if [ -w $VIM_FILE ]; then
		  mv $VIM_FILE $VIM_BACKUP/.vimrc
    else
      echo "Cannot move file $VIM_FILE . Please set permission: \"chmod +w $VIM_FILE\""
      exit
    fi
	fi
	echo "[INFO] Link $VIM_FILE to $PWD/vimrc.txt"
	ln -s -T $PWD/vimrc.txt $VIM_FILE
fi

if [ ! -f $VIM_PSN ]; then
  touch $VIM_PSN
  echo "[INFO] Created $VIM_PSN"
fi
