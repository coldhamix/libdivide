CONFIG -= qt

TEMPLATE = lib
DEFINES += LIBDIVIDE_LIBRARY

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

#nasm.name = nasm ${QMAKE_FILE_IN}
#nasm.input = ASM_FILES
#nasm.variable_out = OBJECTS
#nasm.commands = nasm -f win64 ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
#nasm.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_IN_BASE}$${first(QMAKE_EXT_OBJ)}
#nasm.CONFIG += target_predeps

#QMAKE_EXTRA_COMPILERS  += nasm

#ASM_FILES += divide.asm

SOURCES += \
    libdivide.cpp

HEADERS += \
    LibDivide_global.h \
    libdivide.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

DISTFILES +=
