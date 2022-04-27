# Paths
rememberitPath=~/dev/personal/rememberit-project
frontendPath=$rememberitPath/rememberit
backendPath=$rememberitPath/server

# Commands
frontStartCommand="npm run start"
backendStartCommand="npm run dev"

#Create session
tmux new -c $frontendPath -s rememberit -d

# window 1 - Frontend
tmux rename-window -t rememberit:1 frontend
tmux send-keys -t rememberit:1 "vim ." Enter
tmux split-window -h -c $frontendPath -t rememberit:1 
tmux send-keys -t rememberit:1.1 "$frontStartCommand" Enter 

# window 2 - Backend
tmux new-window -c $backendPath -n backend -t rememberit:2
tmux send-keys -t rememberit:2 "vim ." Enter
tmux split-window -h -c $backendPath -t rememberit:2
tmux send-keys -t rememberit:2.1 "$backendStartCommand" Enter 
tmux split-window -c $backendPath -t rememberit:2.1

# Open docker and start mongo instance
tmux send-keys -t rememberit:2.2 "open -g -a Docker &" Enter
tmux send-keys -t rememberit:2.2 "sleep 4 &" Enter
tmux send-keys -t rememberit:2.2 "wait" Enter
tmux send-keys -t rememberit:2.2 "docker start rememberit-mongo" Enter 
