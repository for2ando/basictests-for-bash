# Makefile for basictests-for-bash

INSTDIR=$(HOME)/bin
INSTFILES=basictests.sh

install: $(INSTFILES)
	install --target-directory=$(INSTDIR) $^

diff: $(INSTFILES)
	$(foreach instfile,$^,diff -u $(INSTDIR)/$(instfile) $(instfile);)

test:
	test-basictests.sh
