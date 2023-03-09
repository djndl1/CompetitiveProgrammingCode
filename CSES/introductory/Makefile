include ../toolchains.mk

CC_EXE = weird_algorithm.cc.exe

all: $(CC_EXE)

cpp: $(CC_EXE)

.PHONY: clean
clean:
	@echo "Cleaning"
	-rm -f $(DOTNET_EXE) $(CC_EXE)
	-rm -f *.mdb *.pdb
	-rm -f *.class
	-rm -f a.out
