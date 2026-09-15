PORT=4000

help:
	@echo "Use 'make build-image', 'make serve', or 'make lint'"

# Build a docker image to serve the gsocguides locally.
build-image:
	docker build -t gsocguides:latest .

# Start the local Jekyll server.
serve:
	docker run --rm -v ${PWD}:/src -p ${PORT}:${PORT} gsocguides:latest jekyll serve -H 0.0.0.0 -P ${PORT}

# Run markdownlint on markdown files.
lint:
	npx -y markdownlint-cli2

