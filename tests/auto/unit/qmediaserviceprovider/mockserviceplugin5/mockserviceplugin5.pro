TARGET_SHORT =mocksp5
QT += multimedia-private

HEADERS += ../mockservice.h
SOURCES += mockserviceplugin5.cpp
OTHER_FILES += mockserviceplugin5.json

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0

PLUGIN_TYPE = mediaservice
PLUGIN_CLASS_NAME = MockServicePlugin5
load(qt_plugin)

CONFIG -= create_cmake
DESTDIR = ../$${PLUGIN_TYPE}
win32|os2:debug_and_release {
    CONFIG(debug, debug|release) {
        DESTDIR = ../debug/$${PLUGIN_TYPE}
    } else {
        DESTDIR = ../release/$${PLUGIN_TYPE}
    }
}

target.path = $$[QT_INSTALL_TESTS]/tst_qmediaserviceprovider/$${PLUGIN_TYPE}
