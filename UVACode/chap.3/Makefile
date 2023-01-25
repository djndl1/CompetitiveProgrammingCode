include ../uva.mk

CC_ELF = uva_11565.celf \
		 uva11742.celf \
		 uva12455.celf \
		 uva_441.celf \
	     uva_725.celf

.PHONY: all cimpl clean
all: cimpl

cimpl: $(CC_ELF)

clean:
	@echo "Cleaning"
	-rm -f $(DOTNET_EXE) $(CC_ELF) $(JAVA)
	-rm -f *.mdb *.pdb
	-rm -f *.class
	-rm -f a.out
