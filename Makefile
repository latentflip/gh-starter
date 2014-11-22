include node_modules/make-better/core.inc
include node_modules/make-better/frontend.inc

STYLUS_DIR := ./styl

# General targets
build: html css
html: index.html
css: css/main.css

# Specific targets
index.html: index.jade
	jade -P index.jade

css/main.css: $(STYLUS_FILES)
	stylus -u yeticss \
    		-u autoprefixer-stylus \
    		-o css styl/main.styl