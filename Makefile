# Variables
VERSION=0.1

#	Files
FILTER=scripts/custom-git-commit-msg
SCRIPTS=$(FILTER) scripts/install-custom-git-hooks
HOOK=hooks/prepare-commit-msg
SAMPLE=samples/commit-msg.4
SAMPLE_TEMP=samples/test.msg

#	Places
BINDIR=$(DESTDIR)/usr/bin
HOOKSDIR=$(DESTDIR)/usr/share/custom-git-hooks

#	Tools and parameters
PERL_DEBUG=perl -Ilib -d:ptkdb
INSTALL=sudo install
TEST_SCRIPT=sh -x 
MKDIR=sudo install -d 

#	Targets
all:

test-hook:	prepare-sample
	$(TEST_SCRIPT) $(HOOK) $(SAMPLE_TEMP)
	cat $(SAMPLE_TEMP)

prepare-sample:
	cp $(SAMPLE) $(SAMPLE_TEMP)

install: install-scripts install-hooks

install-hooks:
	$(MKDIR) $(HOOKSDIR)
	$(INSTALL) -m 0444 $(HOOK) $(HOOKSDIR)

install-scripts:
	$(INSTALL) -m 0555 $(SCRIPTS) $(BINDIR)

debug:
	$(PERL_DEBUG) $(FILTER) < $(SAMPLE)

