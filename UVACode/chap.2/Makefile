include ../uva.mk

DOTNET_EXE = uva11222.exe \
	  uva11988.exe \
	  uva146.exe \
	  uva10107.exe \
	  uva10258.exe

CC_ELF = uva11222.celf \
		 uva11988.celf \
		 uva514.celf \
		 uva146.celf \
		 uva10107.celf \
		 uva10258.celf

JAVA = uva10107.class

all: $(DOTNET_EXE) $(CC_ELF)

csharp: $(DOTNET_EXE)

cimpl: $(CC_ELF)

java: $(JAVA)

.PHONY: clean
clean:
	@echo "Cleaning"
	-rm -f $(DOTNET_EXE) $(CC_ELF) $(JAVA)
	-rm -f *.mdb *.pdb
	-rm -f *.class
	-rm -f a.out
