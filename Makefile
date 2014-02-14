volume = -v /home/tom/Dropbox/Projects/nginx-lua-test/lua:/etc/nginx/lua/:ro
open_ports = -p 4000:4000 -p 5000:5000
default_run_flags = $(volume) $(open_ports) nginx-lua-test
default_build_flags = --rm=true -t nginx-lua-test .

build: Dockerfile
	docker build $(default_build_flags)

clean: Dockerfile
	docker build --no-cache=true $(default_build_flags)

run: build
	docker run $(default_run_flags)

shell:
	docker run -i -t --entrypoint="/bin/bash" $(default_run_flags)
