#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# <Put a Description Here>
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <Put a description of the supported targets here>
#
# Platform Overrides:
#      <Put a description of the supported Overrides here
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
#PLATFORM = MSP432

ifeq ($(PLATFORM),MSP432)

# Architectures Specific Flags
LINKER_FILE = ../msp432p401r.lds
CPU = cortex-m4
ARCH = thumb
SPECS = nosys.specs
# Compiler Flags and Defines
CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld

LDFLAGS_ARCH = -T $(LINKER_FILE)
CFLAGS_ARCH = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS)


LDFLAGS = -Wl,-Map=$(TARGET).map $(LDFLAGS_ARCH)
CFLAGS = $(CFLAGS_ARCH) -Wall -Werror -g -O0 -std=c99
endif



ifeq ($(PLATFORM),HOST)
CC = gcc
LDFLAGS = -Xlinker -Map=$(TARGET).map 

endif


CPPFLAGs =

TARGET = c1m1

.PHONY: build
build: $(TARGET).out

.PHONY: compile-all
compile-all: $(TARGET).out

.PHONY: clean
clean:  
	rm -f $(OBJS) $(TARGET).out $(TARGET).map
	rm *.asm
	rm *.i

%.o : %.c
	$(CC) -c $< $(CFLAGS) -o $@

OBJS = $(SOURCES:.c=.o)


%.asm : %.c
	gcc -S -o $@ $<
 
%.i : %.c
	gcc -E -o $@ $<

$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) $(LDFLAGS) -o $@











