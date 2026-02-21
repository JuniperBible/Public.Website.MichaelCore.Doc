.PHONY: dev build clean install

# Development server
dev:
	hugo server --disableFastRender --buildDrafts

# Build the site
build:
	hugo --minify

# Clean generated files
clean:
	rm -rf public resources

# Install dependencies
install:
	hugo mod get -u
	hugo mod tidy

# Update theme
update:
	hugo mod get -u github.com/alex-shpak/hugo-book
	hugo mod tidy
