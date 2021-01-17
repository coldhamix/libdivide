CONFIG -= qt

TEMPLATE = lib
DEFINES += LIBDIVIDE_LIBRARY

CONFIG += c++11

SOURCES += \
    libdivide.cpp

HEADERS += \
    LibDivide_global.h \
    libdivide.h

unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

DISTFILES +=
