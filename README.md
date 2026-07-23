# dotfiles
General Dotfiles

## Package parity
Lists all packages installed
    paru -Qqe | grep -v "$(paru -Qqm)" > paru.lst
Downloads all packages listed
    cat paru.lst | xargs paru -S --needed --noconfirm

## Change shell
chsh -s $(which zsh)
