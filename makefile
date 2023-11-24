.phony: all
all: build dev

dev:
	npm run dev

prod:
	npm run format
	npm run build
