complete -c dmux -A -f
complete -c dmux -f -n "tmux ls > /dev/null" -a "(tmux ls -F \"#{session_name}\")" -d 'tmux session'
complete -c dmux -f -s k -l kill-both -d 'Kill both sessions on exit'
complete -c dmux -f -s f -l force-kill-both -d 'Force kill'
complete -c dmux -f -s h -l help -d 'Help'
complete -c dmux -f -s v -l version -d 'Version'
