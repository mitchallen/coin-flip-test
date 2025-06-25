.PHONY: help install build npx-run clean npm-build npm-start npm-dev

help:
	@echo "Available targets:"
	@echo "  make install     # Install dependencies"
	@echo "  make build       # Compile TypeScript to dist/"
	@echo "  make npx-run     # Run the demo app (TypeScript via ts-node)"
	@echo "  make npm-build   # Run 'npm run build' (TypeScript compile)"
	@echo "  make npm-start   # Run 'npm start' (run compiled JS from dist/)"
	@echo "  make npm-dev     # Run 'npm run dev' (ts-node src/index.ts)"
	@echo "  make clean       # Remove build output (dist/)"

install:
	npm install

build:
	npx tsc

npx-run:
	npx ts-node src/index.ts

npm-build:
	npm run build

npm-start:
	npm start

npm-dev:
	npm run dev

clean:
	rm -rf dist

# Show help if no target is given
.DEFAULT_GOAL := help
