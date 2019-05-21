POST_DATE := $(shell date +%Y-%m-%d)
POST_TIME := $(shell date +%T\ %z)
POST_SLUG := $(shell date +%H%M%S)
POST_FILE := words/_drafts/$(POST_DATE)-$(POST_SLUG).md

serve: Gemfile.lock
	bundle exec jekyll serve --host=0.0.0.0 --livereload --drafts

new-post:
	touch $(POST_FILE)
	echo "---\ndate: $(POST_DATE) $(POST_TIME)\n---" >> $(POST_FILE)

post-timestamps:
	@echo $(POST_DATE)-$(POST_SLUG)
	@echo $(POST_DATE) $(POST_TIME)

.PHONY: serve new-post post-timestamps
