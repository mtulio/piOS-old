CC:= $(CROSS_COMPILE)gcc
STRIP:= $(CROSS_COMPILE)strip

CFLAGS += -I.
CFLAGS += -lm

################# Objects

OBJECTS := app_mtulio01

################# Main targets
## DEFAULT TARGET
.PHONY: all
all: APP_MTULIO01

APP_MTULIO01: 
	$(CC) ${CFLAGS} -o app_mtulio01 $(OBJECTS) 
	$(STRIP) app_mtulio01

clean:
	rm *.o
