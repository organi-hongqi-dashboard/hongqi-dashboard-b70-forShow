# QT Modules
QT += qml quick serialport

# Target
TARGET = recv
TEMPLATE = app

# Extra Configs
DEFINES += DEBUG
#DEFINES += TIMER_FREQ
CONFIG(release, debug|release) {
    DEFINES += QT_NO_DEBUG_OUTPUT
}

# Include Path
INCLUDEPATH += ../src

# Add Basic Module Files
HEADERS += \
    ../src/specific_carstatus.h \
    ../src/specific_protocol.h \
    ../src/general_carstatus.h \
    ../src/general_protocol.h

SOURCES += main.cpp \
    ../src/specific_carstatus.cpp \
    ../src/general_carstatus.cpp \
    ../src/general_protocol.cpp

# Add Todi Custom Module
#CONFIG += Todi_Spe_Protocol
#Todi_Spe_Protocol {
#DEFINES += Todi
#    HEADERS +=
#    SOURCES +=
#    OTHER_FILES +=
#}

# Add MoLiHua Custom Module
#CONFIG += MoLiHua_Spe_Protocol
#MoLiHua_Spe_Protocol {
#DEFINES += MoLiHua
#HEADERS += \
#        ../src/molihua_protocol.h \
#        ../src/molihua_carstatus.h
#    SOURCES += ../src/molihua_carstatus.cpp
#    OTHER_FILES += MoLiHuaSpecialInfo.qml
#}

# Qml Files
OTHER_FILES += \
    main.qml \
    MText.qml \
    GeneralInfo.qml

# Resources
RESOURCES += recv.qrc
QMAKE_RESOURCE_FLAGS += -no-compress

# Objects Pathes
DESTDIR = bin
UI_DIR = build
MOC_DIR = build
RCC_DIR = build
OBJECTS_DIR = build

DISTFILES += \
    SpecialInfo.qml
