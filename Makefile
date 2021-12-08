
# zuo,Feb 07, 2017
# Makefile

FFLAGS=-debug all -g -I/public/software/wrf/netcdf-3.6.3-intel/include/ -c -extend-source 132
LDFLAGS=-debug all -g -L/public/software/wrf/netcdf-3.6.3-intel/lib -lnetcdf
all:rnc.exe

rnc.exe:rnc.o
	ifort $< -o $@ $(LDFLAGS)
	#ifort $< -o $@ -L/public/software/wrf/netcdf-3.6.3-intel/lib -lnetcdf
rnc.o:rnc.F
	ifort $(FFLAGS) $< -o $@

.PHONY:clean
clean:
	rm -f rnc.o rnc.exe
