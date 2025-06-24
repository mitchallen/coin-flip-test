install:
	npm install

build:
	npx tsc

start:
	npx ts-node src/index.ts

clean:
	rm -rf dist
