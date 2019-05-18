title = TITLE
POST_DATE := $(shell date +%Y-%m-%d)
POST_TIME := $(shell date +%T\ %z)
POST_SLUG := $(shell date +%H%M%S)
POST_PATH := journal/_drafts/
POST_FILE := $(POST_PATH)$(POST_DATE)-$(title).md
MICRO_POST_FILE := $(POST_PATH)$(POST_DATE)-$(POST_SLUG).md

serve: Gemfile.lock
	bundle exec jekyll serve --host=0.0.0.0 --livereload --drafts

new-micro-post:
	touch $(MICRO_POST_FILE)
	echo "---\ndate: $(POST_DATE) $(POST_TIME)\n---" >> $(MICRO_POST_FILE)

new-post:
	touch $(POST_FILE)
	echo "---\ndate: $(POST_DATE) $(POST_TIME)\ntitle: $(title)\n---" >> $(POST_FILE)

post-date:
	@echo $(POST_DATE)
	@echo $(POST_DATE) | pbcopy

post-time:
	@echo $(POST_TIME)
	@echo $(POST_TIME) | pbcopy

.PHONY: serve new-micro-post new-post post-date post-time
