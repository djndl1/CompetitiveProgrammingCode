include ../../toolchains.mk

CC_EXE = power_set.cc.exe

all: $(CC_EXE)

cpp: $(CC_EXE)

.PHONY: clean
clean:
	@echo "Cleaning"
	-rm -f $(DOTNET_EXE) $(CC_EXE)
	-rm -f *.mdb *.pdb
	-rm -f *.class
	-rm -f a.out
