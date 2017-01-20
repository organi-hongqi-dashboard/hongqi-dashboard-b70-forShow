# QT Modules
QT += qml quick serialport

# Target
TARGET = tran
TEMPLATE = app

# Extra Configs
DEFINES += DEBUG
CONFIG(release, debug|release) {
    DEFINES += QT_NO_DEBUG_OUTPUT
}

# Include Path
INCLUDEPATH += ../src

# Add Basic Module Files
HEADERS += \
    ../src/specific_protocol.h \
    ../src/general_protocol.h \
    ../src/specific_tran.h \
    ../src/general_tran.h

SOURCES += main.cpp \
    ../src/general_protocol.cpp \
    ../src/general_tran.cpp \
    ../src/specific_tran.cpp

# Add Todi Custom Module
CONFIG += Todi_Spe_Protocol
Todi_Spe_Protocol {
DEFINES += Todi
    HEADERS +=
    SOURCES +=
    OTHER_FILES +=
}

# Add MoLiHua Custom Module
#CONFIG += MoLiHua_Spe_Protocol
#MoLiHua_Spe_Protocol {
#DEFINES += MoLiHua
#    HEADERS += \
#        ../src/molihua_protocol.h \
#        ../src/molihua_tran.h
#    SOURCES += ../src/molihua_tran.cpp
#    OTHER_FILES += MoLiHuaSpecialInfo.qml
#}

# Qml Files
OTHER_FILES += \
    main.qml \
    MText.qml \
    GeneralInfo.qml

# Resources
RESOURCES += tran.qrc
QMAKE_RESOURCE_FLAGS += -no-compress

# Objects Pathes
DESTDIR = bin
UI_DIR = build
MOC_DIR = build
RCC_DIR = build
OBJECTS_DIR = build

DISTFILES += \
    SpecialInfo.qml
