open-hello.st: up
	./bin/emacs hello.st

emacs: up
	./bin/emacs

gst: up
	./bin/gst

up: resolv.conf
	docker compose up -d

up-build: resolv.conf
	docker compose up -d --build

down:
	docker compose down

down-rmi:
	docker compose down --rmi local
