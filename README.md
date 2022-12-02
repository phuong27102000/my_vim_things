# my_vim_things

### Requirements:
- Supports only 256-bit color terminal

### How to use:
- Run this `source setup.bash` to setup `~/.vim` and `~/.vimrc`
- If you have any **internal syntax-setup** folder, it should be moved to `~/.myvimbackup/internal_syntax/`:
  - Example: `~/.myvimbackup/internal_syntax/txt.vim/start/`
- To open vim with NERDTree tab, 
  - Add this in your ~/.bashrc: `alias v="vim -c NERDTree"`
  - Or your ~/.cshrc: `alias v "vim -c NERDTree"`
