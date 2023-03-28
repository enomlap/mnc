# mnc
(M)odify GLOBAL ATTRIBUTION value of (n)et(C)DF file

This is a very small utility for modify GLOBAL attribution value of an netCDF file, no need to CDO/NCO to do this simple job.

I originally write this tool using FORTRAN 90 by calling the NF90\_ functions, but I found that for my system (CENT OS 6.6, x86_64, netcdf version of 3.5), NF90 function list lost the \_get_att\_(real,double,...) functions, it will change everything to REAL! That is a diaster!
So, I rewrite this code to Fortran 77( or, you can change it to C).

USAGE:
/home/z/WRFV3/WRFOUT/rnc.exe /home/z/CMAQ/data/mcip3/YC03/MET_DOT_3D_2016361.ncf XORIG DOUBLE -252000.3125 ;

/home/z/WRFV3/WRFOUT/rnc.exe /home/z/CMAQ/data/mcip3/YC03/MET_DOT_3D_2016361.ncf YORIG DOUBLE -1054777.5 ;

ATTENTION:
1. I just write the code for change REAL/DOUBLE PRECISION type, no other type is count in! I have no time to add it, I'll add them later if I have time, it's very easy.
2. Change the 'Makefile' for your fortran compiler.

zuohj,Feb 23, 2017
