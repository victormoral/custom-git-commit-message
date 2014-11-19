# Variables
VERSION=0.1

#	Files
SCRIPTS=scripts/custom-git-commit-msg
HOOK=hooks/prepare-commit-msg
SAMPLE=samples/commit-msg.4
SAMPLE_TEMP=samples/test.msg

#	Places
BINDIR=$(DESTDIR)/usr/bin

#	Tools and parameters
INSTALL=sudo install
TEST_SCRIPT=sh -x 

#	Targets
all:

test-hook:	prepare-sample
	$(TEST_SCRIPT) $(HOOK) $(SAMPLE_TEMP) commit
	cat $(SAMPLE_TEMP)

prepare-sample:
	cp $(SAMPLE) $(SAMPLE_TEMP)

install: install-scripts

install-scripts:
	$(INSTALL) -m 0555 $(SCRIPTS) $(BINDIR)

