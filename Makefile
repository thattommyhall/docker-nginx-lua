build:
	docker build --rm=true -t nginx-lua-test .
clean:
	docker build --no-cache=true --rm=true -t nginx-lua-test .
run:
	docker run -p 4000:4000 nginx-lua-test
