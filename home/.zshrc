ZSH_THEME="dstufft"

alias rake="noglob rake"

alias canarymod="java -jar canarymod.jar"

# Mac Helpers
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

# Leo's commandments
alias flounce='echo "I can'\''t work under these conditions" | lolcat; sleep 1; exit'
alias hissy_fit='echo "I can'\''t work under these conditions" | lolcat; sleep 1;sudo shutdown -h now'

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx tmux github fasd history-substring-search zsh-syntax-highlighting zsh-autosuggestions nyan)

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export PATH=$PATH:"/usr/local/bin:/usr/local/bin/git:/usr/local/heroku/bin:/Users/NOAH/.rvm/gems/ruby-2.1.1/bin:/Users/NOAH/.rvm/gems/ruby-2.1.1@global/bin:/Users/NOAH/.rvm/rubies/ruby-2.1.1/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/NOAH/.rvm/bin"

export MANPAGER="col -b | vim -c 'set ft=man ts=8 nomod nolist nonu' -c 'nnoremap i <nop>' -"

export EDITOR="/usr/bin/vim"

alias cdh='cd ~/.homesick/repos/home-files/home'
alias hup='cdh && sh ~/.homesick/repos/home-files/commit.sh && source ~/.zshrc && cd - && clear'

#############
# FUNCTIONS
#############

function mygr8() {
  bin/rake db:migrate
  bin/rake db:migrate RAILS_ENV=test
}

mcd() { # creates a directory and places you in it
  mkdir -p $1
  cd $1
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Config for 'z': http://jilles.me/badassify-your-terminal-and-shell/
. `brew --prefix`/etc/profile.d/z.sh
source /usr/local/share/zsh/site-functions
alias s="~/chat.txt << "

alias rubes="ruby -run -ehttpd . -p8000"
alias roigrok="ngrok -subdomain=roi 8000"

bindkey -v

