#! /bin/bash

tmux \
	new-session -d \; \
	split-window '. dockers/dev_env/docker-run' \; \
	resize-pane -U 20 \; \
	attach
