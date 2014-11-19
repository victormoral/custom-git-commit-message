# Variables
VERSION=0.1

#	Files
SCRIPTS=scripts/custom-git-commit-msg
HOOKS=hooks/prepare-commit-msg

#	Places
BINDIR=$(DESTDIR)/usr/bin

#	Tools
INSTALL=sudo install

#	Targets
all:

install: install-scripts

install-scripts:
	$(INSTALL) -m 0555 $(SCRIPTS) $(BINDIR)


