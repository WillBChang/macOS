sh_flag='/\#\+begin_src\ sh/{flag=1; next} /\#\+end_src/{flag=0} flag'
fish_flag='/\#\+begin_src\ fish/{flag=1; next} /\#\+end_src/{flag=0} flag'
elisp_flag='/\#\+begin_src\ emacs-lisp/{flag=1; next} /\#\+end_src/{flag=0} flag'

for org in $(ls */*.org);do
    awk "$sh_flag" $org > "${org%.org}.sh"
done

echo "Setup System Preferences"
sh system-preferences/general.sh
sh system-preferences/desktop+screen-saver.sh
sh system-preferences/dock.sh
sh system-preferences/accessibility.sh
sh system-preferences/security+privacy.sh
sh system-preferences/keyboard.sh
sh system-preferences/trackpad.sh
sh system-preferences/display.sh
sh system-preferences/battery.sh

echo "Install and setup Command Line Tools"
sh command-line-tools/brew.sh
sh command-line-tools/fish.sh
awk "$fish_flag" command-line-tools/fish.org > "$HOME/.config/fish/config.fish"
sh command-line-tools/git.sh
sh command-line-tools/asdf.sh
sh command-line-tools/node.sh
sh command-line-tools/ruby.sh
sh command-line-tools/trash.sh

echo "Install and setup applications"
sh applications/alfred.sh
sh applications/emacs.sh
sh applications/chrome.sh
sh applications/terminal.sh
sh applications/finder.sh
sh applications/rubymine.sh
sh applications/xcode.sh
sh applications/font-book.sh
