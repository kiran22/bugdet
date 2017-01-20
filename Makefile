######################################################################
#
# This is a sample makefile for prime example for unix/linux
#
#                  Copyright (c) 2001-2011 Testwell Oy
######################################################################
# Last modified 6.9.2011

# C Compiler
CC	    = gcc

# C Linker
LINK	= gcc

######################################################################

# Executable name
EXENAME	= Bugs

# Sourcefiles and objectfiles
SRCS    = dbutil.c fileLeaks.c memoryLeaks.c divisionByZero.c useBeforeInit.c nullPointerDeref.c nullPointerDerefBenchmark.c arrayOutOfBounds.c bufferOverflow.c unreachableCode.c sqlInjection.c sql.c integerOverflow.c 
OBJS    = $(SRCS:.c=.o)

# Rule for compiling .c files:
.c.o:
	$(CC) -c $<

# The main target, builds executable
all: $(OBJS)
	$(LINK) -o $(EXENAME) $(OBJS)

# Clean target
clean:
	rm -f $(OBJS) $(EXENAME)


