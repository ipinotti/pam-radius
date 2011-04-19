include ../../common.mk

CFLAGS= -O2 -Wall -fPIC -I. -I$(ROOTDIR)/include -I$(ROOTDIR)/$(FSDIR)/include -Dlinux
LDFLAGS= -L$(ROOTDIR)/$(FSDIR)/lib

export CFLAGS LDFLAGS

all:
	$(MAKE) all

install:
	cp -avf pam_radius_auth.so $(ROOTDIR)/$(FSDIR)/lib/security

clean:
	$(MAKE) clean

distclean: clean
