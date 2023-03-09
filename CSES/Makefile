##
# Project Title UVA problem code
#
# @file
# @version 1.0

MAKE=make

SUBDIRS := introductory

.PHONY: all $(SUBDIRS) clean
all: $(SUBDIRS)


$(SUBDIRS):
	$(MAKE) -C $@

clean:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean; \
	done

# end
