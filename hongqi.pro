# QT Modules
QT += qml quick serialport

# Target
TARGET = b70
TEMPLATE = app

# Extra Configs
DEFINES += HONGQI_RECV
DEFINES += HONGQI
DEFINES += TIMER_FREQ

CONFIG(release, debug|release) {
    DEFINES += QT_NO_DEBUG_OUTPUT
}
CONFIG += qtquickcompiler
QMAKE_DISTCLEAN += *_qtquickcompiler.qrc

# Sources and Headers
SOURCE_FOLDER = src
HEADER_FOLDER = src/include

INCLUDEPATH += $$HEADER_FOLDER /opt/buildroot/sources/linux/include/
HEADERS += \
    src/include/specific_carstatus.h \
    src/include/specific_protocol.h \
    src/include/general_carstatus.h \
    src/include/general_protocol.h \
    src/include/fontName.h
SOURCES += $$SOURCE_FOLDER/main.cpp \
    src/specific_carstatus.cpp \
    src/general_carstatus.cpp \
    src/general_protocol.cpp

# Qml Files
QML_FOLDER = qml/content
OTHER_FILES += qml/mainViewer.qml \
    $$QML_FOLDER/*.qml \
    $$QML_FOLDER/warning/*.qml \
    $$QML_FOLDER/functionMode/*.qml \
    $$QML_FOLDER/qmldir


# Resources
RESOURCES += hongqi.qrc
QMAKE_RESOURCE_FLAGS += -no-compress


fontsFiles.files = fonts/MicroSoftYahei.TTF
fontsFiles.path = /usr/lib/fonts
INSTALLS += fontsFiles

#target.path = /opt/Hongqi
#INSTALLS += target

# Target Pathes
#modelFiles.files = car.dae
#modelFiles.path = /opt/QtQuick/model
#INSTALLS += modelFiles

#target.path = /opt/QtQuick
#INSTALLS += target

# Objects Pathes
DESTDIR = bin
UI_DIR = build
MOC_DIR = build
RCC_DIR = build
OBJECTS_DIR = build

DISTFILES += \
    qml/content/MenuPanel.qml \
    qml/content/EnergyFlow.qml
