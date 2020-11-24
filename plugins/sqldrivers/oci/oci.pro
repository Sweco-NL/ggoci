TARGET = ggoci

HEADERS += $$PWD/qsql_oci_p.h
SOURCES += $$PWD/qsql_oci.cpp $$PWD/main.cpp

QMAKE_LFLAGS += oci.lib

darwin:QMAKE_LFLAGS += -Wl,-flat_namespace,-U,_environ

OTHER_FILES += ggoci.json

PLUGIN_CLASS_NAME = QOCIDriverPlugin
include(../qsqldriverbase.pri)

unix {
    !contains(LIBS, .*clnts.*):LIBS += -lclntsh
} else {
    LIBS *= -loci
}
