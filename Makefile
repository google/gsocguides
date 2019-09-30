PORT=4000

help:
	@echo "Use 'make build-image' or 'make serve'"

# Build a docker image to serve the gsocguides locally.
build-image:
	docker build -t gsocguides:latest .

# Start the local Jekyll server.
serve:
	docker run --rm -v ${PWD}:/src -p ${PORT}:${PORT} gsocguides:latest jekyll serve -H 0.0.0.0 -P ${PORT}
