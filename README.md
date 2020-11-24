## GGOCI

GGOCI is a fork of the Qt SQL driver for OCI (QOCI) and is based on Qt 5.12.10. This fork applies a number of modifications to the Qt version:

1. QOCI always returns a string for the numeric precision (when detailed). GGOCI uses the precision to return the proper type (int, double, long).
2. SQLCS_IMPLICIT instead of SQLCS_NCHAR.
3. Precision policy of QSql is not supported, because of the detailed precision handling mentioned in the first point.

### Compiling

This driver is tested and used on Windows 10 and compiles with Visual Studio 2017 and Qt 5.12.x. To compile on Windows:

* Start a Qt 5.12.x prompt with Visual Studio 2017.
* Add the Oracle paths to INCLUDE and LIB. For example:
  * set INCLUDE=%INCLUDE%;c:\oracle\oci\include
  * set LIB=%LIB%;c:\oracle\oci\lib\msvc
* Go to the plugins\sqldrivers\oci folder of this repository
* qmake oci.pro
* nmake
