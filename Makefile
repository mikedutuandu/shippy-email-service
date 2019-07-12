build:
	docker build -t shippy-email-service .

run:
	docker run --net="host" \
		-p 50054 \
		-e MICRO_SERVER_ADDRESS=:50054 \
		-e MICRO_REGISTRY=mdns \
		shippy-email-service
