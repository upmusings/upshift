title = TITLE
POST_DATE := $(shell date +%Y-%m-%d)
POST_TIME := $(shell date +%T\ %z)
POST_SLUG := $(shell date +%H%M%S)
POST_PATH := journal/_posts/
POST_FILE := $(POST_PATH)$(POST_DATE)-$(title).md
MICRO_POST_FILE := $(POST_PATH)$(POST_DATE)-$(POST_SLUG).md

serve: Gemfile.lock
	bundle exec jekyll serve --livereload

new-micro-post:
	touch $(MICRO_POST_FILE)
	echo "---\nlayout: post\ndate: $(POST_DATE) $(POST_TIME)\n---" >> $(MICRO_POST_FILE)

new-post:
	touch $(POST_FILE)
	echo "---\nlayout: post\ndate: $(POST_DATE) $(POST_TIME)\ntitle: $(title)\n---" >> $(POST_FILE)

.PHONY: serve new-micro-post new-post
