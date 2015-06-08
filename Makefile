.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

all : example

example : example.o novas.o novascon.o nutation.o solsys1.o \
                eph_manager.o readeph0.o
	cc -o example example.o novas.o novascon.o nutation.o solsys1.o eph_manager.o readeph0.o -lm
example.o : example.c novas.c novascon.c nutation.c solsys1.c \
                   eph_manager.c readeph0.c novas.h eph_manager.h
	cc -c example.c novas.c novascon.c nutation.c solsys1.c \
					eph_manager.c readeph0.c
