CSC=csc
MONO=mono
CSHARP_FLAGS = -debug -langversion:8

INC:=$(dir $(lastword $(MAKEFILE_LIST)))./include

CXX=/usr/bin/g++
CFLAGS=-g -std=c++11
LDFLAGS=-lm -DONLINE_JUDGE

JAVAC=javac
JAVA_FLAGS=-g -Xlint

VALAC=valac
VALA_FLAGS=-g

%.cs.exe: %.cs
	$(CSC) $< $(CSHARP_FLAGS) -out:$@

%.cpp.exe: %.cpp
	$(CXX) $< $(CFLAGS) $(LDFLAGS) -o $@ -I$(INC)

%.cc.exe: %.cc
	$(CXX) $< $(CFLAGS) $(LDFLAGS) -o $@ -I$(INC)

%.java.class: %.java
	$(JAVAC) $(JAVA_FLAGS) $<

%.vala.exe: %.vala
	$(VALAC) $(VALA_FLAGS) $< -o $@
