.PHONY = build deps start clean start_infrastructure

# Build image
build:
	docker build -t $(IMAGE_NAME):dev .

# Install dependencies
deps:
	npm install

# Start app
start:
	docker-compose up -d

# Clean containers
clean:
	docker-compose down --rmi local --volumes --remove-orphans

# Build and start infrastructure
start_infrastructure:
	docker-compose up -d postgres
