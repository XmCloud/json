
include config

TOPDIR = ../
SRCDIR = $(TOPDIR)src
LIBDIR = $(TOPDIR)lib/$(PLATFORM)/

CFLAGS	+= -I$(TOPDIR)include
CFLAGS	+= -I$(SRCDIR)
CFLAGS  += -Wall -O1 -O2
CFLAGS  += -fomit-frame-pointer
#CFLAGS  += -g
CFLAGS   += -Wl,--whole-archive -lpthread       
CFLAGS   += -Wl,--no-whole-archive -lc

AFLAGS	+= -rsv

LIB_OBJS += $(SRCDIR)/json_reader.o
LIB_OBJS += $(SRCDIR)/json_value.o
LIB_OBJS += $(SRCDIR)/json_writer.o

LIB_TARGET= $(LIBDIR)libjson.a
TARGET	= $(LIB_TARGET)
all: $(TARGET)

$(LIB_TARGET): $(LIB_OBJS)
	$(RM) $@;
	mkdir -p $(LIBDIR)
	$(AR) $(AFLAGS) $@ $^


.c.o:
	$(CC) -c $(CFLAGS) $^ -o $@

.cpp.o:
	$(CPP) -c $(CFLAGS) $^ -o $@

clean:
	$(RM) $(TARGET) $(LIB_OBJS)

