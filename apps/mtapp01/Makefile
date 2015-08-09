CC:= $(CROSS_COMPILE)gcc
STRIP:= $(CROSS_COMPILE)strip

CFLAGS += -I.
CFLAGS += -lm

################# Objects

OBJECTS := mtapp01.c

################# Main targets
## DEFAULT TARGET
.PHONY: all

all: APP_MTAPP01

APP_MTAPP01: 
	@echo "Building app..."
	@$(CC) ${CFLAGS} -o mtapp01 $(OBJECTS) 
	@$(STRIP) mtapp01
	@echo "Finish! See binary 'mtapp01'"

clean:
	@rm -f *.o 
	@rm -f mtapp01 
