REPOS_PATH = ~/Repos/Perso/aliases # Should be on PATH
ALIASES_SCRIPT = aliases.py

all: test

init:
	mkdir -p $(REPOS_PATH)

test:
	pytest
	@if [ $$? -eq 0 ]; then \
		$(MAKE) -s build; \
	fi

.SILENT:
build:
	cp $(ALIASES_SCRIPT) $(REPOS_PATH)
	chmod 770 $(REPOS_PATH)
