#!/bin/bash
# ==================================================
# Filename: setup.bash 
# Date    : 2022-11-28
# Author  : Nguyen Ha Nhat Phuong
# Contact : phuong2710@gmail.com
# ==================================================

PWD=$(pwd)
VIM_FOL="~/.vim"
VIM_FILE="~/.vimrc"
if [ -d $VIM_FOL ] || [ -f $VIM_FILE ]; then
	if [ ! -L $VIM_FOL ] || [ ! -L $VIM_FILE ]; then
		if [ -d ~/myvimbackup/ ]; then
		  echo "[WARNING] Already created ~/myvimbackup/"
		else
		  echo "[INFO] Creating ~/myvimbackup/"
		  mkdir ~/myvimbackup/
		fi
		read -p "--> This process will move your current .vim/ and .vimrc to your ~/myvimbackup/? [y/n] " yn                                                 
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
		echo "[INFO] Moving from $VIM_FOL/ to ~/myvimbackup/.vim/"
    if [ -w $VIM_FOL ]; then
		  mv $VIM_FOL ~/myvimbackup/.vim/
    else
      echo "Cannot move file $VIM_FOL . Please set permission: \"chmod +w $VIM_FOL\""
      exit
	fi
	echo "[INFO] Link $VIM_FOL/ to $PWD/vim"
	ln -s -T $PWD/vim/ $VIM_FOL 
fi
		
if [ -f $VIM_FILE ] || [ -L $VIM_FILE ]; then
	if [ -L $VIM_FILE ]; then
		echo "[INFO] Unlink $VIM_FILE"
		unlink $VIM_FILE
	else
		echo "[INFO] Moving from $VIM_FILE/ to ~/myvimbackup/.vimrc/"
    if [ -w $VIM_FILE ]; then
		  mv $VIM_FILE ~/myvimbackup/.vimrc
    else
      echo "Cannot move file $VIM_FILE . Please set permission: \"chmod +w $VIM_FILE\""
      exit
	fi
	echo "[INFO] Link $VIM_FILE to $PWD/vimrc.txt"
	ln -s -T $PWD/vimrc.txt $VIM_FILE
fi
