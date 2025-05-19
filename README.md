# How to use this
Collection of my dot files. Tracked via git bare repo.

_Inspired by [Mat Jones](https://mjones44.medium.com/storing-dotfiles-in-a-git-repository-53f765c0005d) and [Kirill](https://coffeeaddict.dev/how-to-manage-dotfiles-with-git-bare-repo/)._

## Installing dotfiles on a new machine
```
curl https://raw.githubusercontent.com/yongpeishi/dotfiles/master/scripts/config-init | bash
```

## Tracking new files or directories
```
dotconfig add -f ~/.somewhere/something/some-dotfile
dotconfig add -f .whole-directory

dotconfig commit -m "add some-dotfile"
dotconfig push
```

That's it! 🎉

# Other steps to setup new computer
Outside the dotfiles, here's other misc when setting up new computer.

**VSCode** extensions:
```
dbaeumer.vscode-eslint
esbenp.prettier-vscode
github.copilot
github.copilot-chat
vscodevim.vim
```
