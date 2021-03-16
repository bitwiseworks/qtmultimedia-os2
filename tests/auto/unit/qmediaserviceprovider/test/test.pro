CONFIG += testcase
TARGET = ../tst_qmediaserviceprovider

QT += multimedia-private testlib

SOURCES += ../tst_qmediaserviceprovider.cpp

win32|os2:debug_and_release {
    CONFIG(debug, debug|release) {
        TARGET = ../../debug/tst_qmediaserviceprovider
    } else {
        TARGET = ../../release/tst_qmediaserviceprovider
    }
}

mac: CONFIG -= app_bundle

