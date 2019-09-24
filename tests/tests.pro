include(../config.pri)
TEMPLATE = app

QT       += core network testlib script gui

CONFIG   += console precompile_header
CONFIG   -= app_bundle

PRECOMPILED_HEADER = pch.h
!msvc {
	QMAKE_CXXFLAGS += --std=c++11
}

INCLUDEPATH = . ../pillowcore
DEPENDPATH = . ../pillowcore
LIBS += -L../lib -l$${PILLOWCORE_LIB_NAME}
POST_TARGETDEPS += ../lib/$$PILLOWCORE_LIB_FILE

SOURCES += main.cpp \
	HttpServerTest.cpp \
	HttpConnectionTest.cpp \
	HttpHandlerTest.cpp \
	HttpsServerTest.cpp \
	HttpHandlerProxyTest.cpp \
	ByteArrayHelpersTest.cpp \
	HttpClientTest.cpp \
	HttpHeaderTest.cpp

HEADERS += \
	HttpServerTest.h \
	HttpConnectionTest.h \
	HttpHandlerTest.h \
	HttpsServerTest.h \
	HttpHandlerProxyTest.h \
	Helpers.h \
	pch.h

RESOURCES += tests.qrc

OTHER_FILES += \
	tests.qbs
