CSC=csc
MONO=mono
CSHARP_FLAGS = -debug -langversion:8

CXX=/usr/bin/g++
CFLAGS=-g -std=c++11
LDFLAGS=-lm -DONLINE_JUDGE

JAVAC=javac
JAVA_FLAGS=-g -Xlint

VALAC=valac
VALA_FLAGS=-g

%.exe: %.cs
	$(CSC) $< $(CSHARP_FLAGS) -out:$@

%.celf: %.cc
	$(CXX) $< $(CFLAGS) $(LDFLAGS) -o $@

%.class: %.java
	$(JAVAC) $(JAVA_FLAGS) $<

%.velf: %.vala
	$(VALAC) $(VALA_FLAGS) $< -o $@
