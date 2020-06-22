# Set up all the Terminal colors via Nord
# https://github.com/arcticicestudio/nord-dircolors#quick-start
curl -o ~/.dir_colors https://raw.githubusercontent.com/arcticicestudio/nord-dircolors/develop/src/dir_colors

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
