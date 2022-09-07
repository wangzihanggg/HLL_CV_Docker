#-------------------------------------------------
#
# Project created by QtCreator 2017-11-24T21:43:33
#
#-------------------------------------------------

QT += serialport
QT += core gui
QT += xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG+=debug_and_release
CONFIG(debug, debug|release){
    TARGET = JUST_HLL_Robomaster_CV
} else {
    TARGET = JUST_HLL_Robomaster_CV
}

TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

win32{
INCLUDEPATH += F:/OpenCV/OpenCV4.1.1/opencv_4.1.1_build_qt/include\
               F:/OpenCV/OpenCV4.1.1/opencv_4.1.1_build_qt/include/opencv2

LIBS += F:/OpenCV/OpenCV4.1.1/opencv_4.1.1_build_qt/x64/mingw/lib/libopencv_*.dll.a
}

linux{
INCLUDEPATH += /usr/local/include\
               /usr/local/include/opencv4\
               /usr/local/include/opencv4/opencv2


LIBS += /usr/local/lib/libopencv_*.so.4.1.1

debug{
OBJECTS_DIR = /home/hll/build-JUST_HLL_Robomaster_CV-Desktop_Qt_5_12_2_GCC_64bit-Debug
UI_HEADERS_DIR = $$OBJECTS_DIR
UI_SOURCES_DIR = $$OBJECTS_DIR
MOC_DIR = $$OBJECTS_DIR
DESTDIR = $$OBJECTS_DIR
}
release{
OBJECTS_DIR = /home/hll/build-JUST_HLL_Robomaster_CV-Desktop_Qt_5_12_2_GCC_64bit-Release
UI_HEADERS_DIR = $$OBJECTS_DIR
UI_SOURCES_DIR = $$OBJECTS_DIR
MOC_DIR = $$OBJECTS_DIR
DESTDIR = $$OBJECTS_DIR
}
}

FORMS += \
    code/mainwindow.ui

HEADERS += \
    code/armour_detector.h \
    code/armour_tracker.h \
    code/mainwindow.h \
    code/tool.h \
    code/serial.h \
    code/camera.h \
    code/video.h \
    code/common.h \
    code/image.h \
    code/control.h \
    code/prediction.h \
    code/ranging.h

SOURCES += \
    code/armour_detector.cpp \
    code/armour_tracker.cpp \
    code/mainwindow.cpp \
    code/tool.cpp \
    code/main.cpp \
    code/serial.cpp \
    code/camera.cpp \
    code/video.cpp \
    code/image.cpp \
    code/control.cpp \
    code/prediction.cpp \
    code/ranging.cpp

DISTFILES += \
    statics/params.xml \
    statics/cameraParams.xml

DEFINES += DEBUG

QMAKE_CXXFLAGS += -Wno-sign-compare
QMAKE_CXXFLAGS += -Wno-covered-switch-default
