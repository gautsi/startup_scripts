#! /bin/bash

tmux \
	new-session -d \; \
	split-window '. dockers/dev_env/docker-run' \; \
	resize-pane -U 20 \; \
	send-keys cd Space gautsi.github.io C-m \; \
	send-keys . Space bin/setup C-m \; \
	attach
