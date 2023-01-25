include ../uva.mk

DOTNET_EXE = 1-2-3.1.exe \
      uva_11799.exe \
      uva_11942.exe

CC_ELF = uva_11799.celf \
      uva_11942.celf \
	    uva_12468.celf \
			uva_12554.celf \
			uva_573.celf \
			uva_661.celf \
			uva_10141.celf \
			uva10324.celf \
			uva119.celf \
			uva10424.celf \
			uva394.celf \
			uva467.celf \
			uva482.celf \
			uva11764.celf \
			uva12503.celf

VALA_ELF = uva11764.velf \
			uva12503.velf

all: $(DOTNET_EXE) $(CC_ELF) $(VALA_ELF)

csharp: $(EXE)

cimpl: $(CC_ELF)

vala: $(VALA_ELF)

.PHONY: clean
clean:
	@echo "Cleaning"
	-rm -f $(DOTNET_EXE) $(CC_ELF) $(VALA_ELF)
	-rm -f *.mdb *.pdb
	-rm -f *.class
	-rm -f a.out
