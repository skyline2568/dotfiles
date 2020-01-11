# 
# Mac Setup script
# 
sw_vers

# $B%7%9%F%`4D6-@_Dj(B(defaults command)
# -----------------------------------

# Dock: $B<+F0E*$K1#$9(B
defaults write com.apple.dock autohide -bool true

# $B%^%&%9%+!<%=%kB.EY@_Dj(B
defaults write "Apple Global Domain" com.apple.mouse.scaling 3.0

# MissionControl
# $B:G6a$N;HMQN($K1~$8$FJB$YBX$($k(B
defaults write com.apple.dock mru-spaces -bool true

# $B%"%W%j%1!<%7%g%s$4$H$K%&%#%s%I%&$r$^$H$a$k(B
defaults write com.apple.dock expose-group-apps -bool true

# HotCorner
defaults write com.apple.dock wvous-tl-corner -int 13 # $B2hLL$r%m%C%/(B
# defaults write com.apple.dock wvous-tl-corner -int 5 # $B%+!<%=%k1&>e(B(tr)$B$G%9%/%j!<%s%;%$%P!<$r3+;O(B
# defaults write com.apple.dock wvous-tl-corner -int 8 # $B%G%#%9%W%l%$$r%9%j!<%W(B
defaults write com.apple.dock wvous-tl-modifier -int 0

# Finder:$B1#$7%U%!%$%k(B/$B%U%)%k%@$rI=<((B
defaults write com.apple.finder AppleShowAllFiles true

# Finder:$B3HD%;R$rI=<((B
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Dock icon size
defaults write com.apple.dock tilesize -int 39

# Automatically hide or show the Dock
defaults write com.apple.dock autohide -bool true

# Wipe all app icons from the Dock exclude Finder and Trash
defaults write com.apple.dock persistent-apps -array

# $B@_Dj$rH?1G(B
killall Dock


# Finder
# Set `${HOME}` as the default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
# ------------------------------------


xcode-select --install 

# git
# ------------------------------------
git --version
#brew install git
git config --global user.name "Yuta Fukagawa"
git config --global user.email "25516089+yfskyline@users.noreply.github.com"
git config --global alias.co "checkout"
git config --global core.editor "vim"

# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# install Homebrew ($B%Q%9%o!<%IF~NOMW5a$5$l$?$i%m%0%$%s%Q%9%o!<%I(B)
if [ ! -x "`which brew`" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi
# ------------------------------------



# mas-cli
# ------------------------------------
# install mas-cli
if [ ! -x "`which mas`" ]; then
  brew install mas
fi
# $BM=$a(BApple ID$B$G%m%0%$%s$7$F$*$/I,MW$,$"$k(B
mas install 803453959 # Slack
mas install 539883307 # LINE
mas install 1333542190 # 1Password 7 (7.4.1)
mas install 1037126344 # Apple Configurator 2 (2.11.1)
mas install 497799835 # Xcode (11.3)
mas install 1482454543 #  Twitter (8.4.2)
mas install 1295203466 #  Microsoft Remote Desktop (10.3.7)
mas install 836500024 # WeChat (2.3.29)
mas install 904280696 # Things (3.11)
mas install 513610341 # com.peacockmedia.integrity (9.3.6)
mas install 961632517 # Be Focused Pro (1.7.5)
mas install 1025073421 #  Musicnotes (1.4)

# ------------------------------------



# homebrew-cask
# ------------------------------------
brew bundle

brew cask install virtualbox
brew cask install mactex
#brew cask install mamp

brew cask install google-chrome

brew cask install google-drive-file-stream

brew cask install visual-studio-code

brew cask install karabiner-elements

# brew cask install ccleaner

brew cask install boostnote
#Interface Theme: Dark
#Editor Theme: night
# ------------------------------------




