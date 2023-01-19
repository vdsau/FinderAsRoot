# 07.12.2021
# by @vdsau
# updated file 19.01.2023

sudo /System/Library/CoreServices/Finder.app/Contents/MacOS/Finder > /dev/null 2>&1 & 

sudo osascript -e 'tell application "Terminal" to activate' \
  -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down' \
  -e 'tell application "Terminal" to do script "killall Finder" in selected tab of the front window' \
  -e 'tell application "Terminal" to do script "open ." in selected tab of the front window'

sudo default write com.apple.finder AppleShowAllFiles TRUE