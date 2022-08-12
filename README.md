# SYL-TMUX

## Installing TMUX

Many Unix machines now come with TMUX built in.  Check by running

```
tmux ls
```

If you get a message stating tmux is an unknown command you will need to install

### Mac

The easiest way to install TMUX on Mac is using brew

```
brew install tmux
```

### Arch

```
pacman -S tmux
```

### Ubuntu/Debian

```
apt install tmux
```

### Fedora

```
dnf install tmux
```

Further instructions can be found [here](https://github.com/tmux/tmux/wiki/installing)

## Installing TMUX Plugin Manager

Installing TPM is very simple

1. Clone the TPM repo

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

2. Include TPM in your tmux config file

```
set -g @plugin 'tmux-plugins/tpm'

... insert plugins here ...

run '~/.tmux/plugins/tpm/tpm'
```

It is wise to keep the run command at the very bottom of your tmux.conf

Remember you need to reload your configuration file whenever you make a change to your settings

```
source ~/.tmux.conf
```

NOTE: This command needs to be ran inside of the tmux terminal.  You can access your tmux terminal
from inside of a tmux session and entering `prefix + :`

## Installing TMUX plugins

Assuming you have TPM installed, installing tmux plugs is very easy.  Simply add the following line
to your tmux.conf

```
set -g @plugin 'tmux-plugins/<insert plugin here>'
```

Remember this must be added after the tpm plugin and the line running tpm

Once that line has been added, resource your tmux config file and tell tmux to install 
plugins with `prefix + I`

## More on TPM

More information on TPM can be found [here](https://github.com/tmux-plugins/tpm)

## Additional Files

If you would like to use my tmux conf, either in its entirity or as a template, it can be found
[here](https://github.com/Christopher-Wolf-ibm/SYL-TMUX/blob/main/tmux.conf)

TMUX commands can get a bit long, if you would like to use a script to simplify its use, that
can be found [here](https://github.com/Christopher-Wolf-ibm/SYL-TMUX/blob/main/tm.sh)
