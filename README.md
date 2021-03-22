# dotfiles
# Do the thang! WEE

# NOTE
This repo assumes two things.
1. Must be using iTerm2. Mac default terminal doesn't work well with this custom bash.
2. Working dir needs to be `$HOME/dev`

To utilize these awesomesauce dotfiles, do the following.

1. clone down this repo at `$HOME/dev/`
2. run `source $HOME/dev/dotfiles/zshrc`
3. run `make_syms` to build all the symlinks correctly. There are force flags for each block here if you need. Look at `hooks/post-up/make_rc_files.sh`
4. run `new_setup` to install all neccessary initial components and chsh to zsh
5. install your own oh-my-zsh theme, or run the powerline10k one installed here with `p10k configure`

What does this get you? Oh baby, lots of stuff!. This will managed all your dotfiles for pry config, git config, bundle config, and aliases as well
as install all of the following. You can skip the zsh and oh-my-zsh with prompts if you don't want those.

1. zsh
2. oh-my-zsh
3. geckodriver
4. pry
5. rbenv
6. ruby 2.6.3
7. mysql@5.7
8. i2cssh
9. symlinks
10. custom git config
11. a ton of useful aliases.
12. much much more
