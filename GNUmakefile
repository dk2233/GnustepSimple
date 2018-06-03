
#GNUSTEP_MAKEFILES = /usr/share/GNUstep/Makefiles
#include $(GNUSTEP_MAKEFILES)/common.make
#TOOL_NAME = main
#LogTest_OBJC_FILES = main.m
#include $(GNUSTEP_MAKEFILES)/tool.make


GNUSTEP = `gnustep-config --objc-flags` 
SOURCES=main.m 

LIBRARIES:=  -lgnustep-base

LDFLAGS= `gnustep-config --objc-libs` $(LIBRARIES)

OUT=test
OBJS=main.o 


all: $(SOURCES) $(OUT)

clean: 
	rm -f *.o
	rm -f *.d
	rm -f $(OUT)


$(OUT): $(OBJS)
	gcc $^ $(LDFLAGS) -o $@

%.o : %.m 
	gcc $< -c  $(GNUSTEP) -std=c99 -o $@
