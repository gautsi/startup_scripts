#! /bin/bash

# start up neo4j

. dockvol/neo4j/bin/build

tmux \
	new-session -d \; \
	split-window '. dockers/dev_env/docker-run' \; \
	resize-pane -U 20 \; \
	send-keys cd Space neo4j C-m \; \
	send-keys . Space bin/setup C-m \; \
	attach
