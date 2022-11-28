#!/bin/bash
# ==================================================
# Filename: setup.bash 
# Date    : 2022-11-28
# Author  : Nguyen Ha Nhat Phuong
# Contact : phuong2710@gmail.com
# ==================================================

PWD=$(pwd)
if [ -d ~/.vim ] || [ -f ~/.vimrc ]; then
	if [ ! -L ~/.vim ] || [ ! -L ~/.vimrc ]; then
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

if [ -d ~/.vim/ ] || [ -L ~/.vim ]; then
	if [ -L ~/.vim ]; then
		echo "[INFO] Unlink ~/.vim/"
		unlink ~/.vim
	else
		echo "[INFO] Moving from ~/.vim/ to ~/myvimbackup/.vim/"
		mv ~/.vim ~/myvimbackup/.vim/
	fi
	echo "[INFO] Link ~/.vim/ to $PWD/vim"
	ln -s -T $PWD/vim/ ~/.vim 
fi
		
if [ -f ~/.vimrc ] || [ -L ~/.vimrc ]; then
	if [ -L ~/.vimrc ]; then
		echo "[INFO] Unlink ~/.vimrc"
		unlink ~/.vimrc
	else
		echo "[INFO] Moving from ~/.vimrc/ to ~/myvimbackup/.vimrc/"
		mv ~/.vimrc ~/myvimbackup/.vimrc
	fi
	echo "[INFO] Link ~/.vimrc to $PWD/vimrc.txt"
	ln -s -T $PWD/vimrc.txt ~/.vimrc
fi
