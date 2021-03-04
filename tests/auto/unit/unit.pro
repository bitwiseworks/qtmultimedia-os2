TEMPLATE = subdirs

SUBDIRS += multimedia.pro
qtHaveModule(widgets): SUBDIRS += multimediawidgets.pro
qtHaveModule(qml):qtConfig(opengl): SUBDIRS += multimediaqml.pro
