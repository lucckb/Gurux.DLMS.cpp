SUBDIRS := $(wildcard */.)

all: dirs allx

dirs:
	for dir in $(SUBDIRS); do \
		mkdir -p $$dir/lib; \
		mkdir -p $$dir/obj; \
		mkdir -p $$dir/bin; \
	done


allx: dirs $(SUBDIRS)

clean:
	for dir in $(SUBDIRS); do \
		rm -rf $$dir/lib; \
		rm -rf $$dir/obj; \
		rm -rf  $$dir/bin; \
	done



$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)
