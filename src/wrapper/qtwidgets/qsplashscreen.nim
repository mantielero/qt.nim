import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(splashscreen)
discard "forward decl of QSplashScreenPrivate"


proc constructQSplashScreen*(pixmap: QPixmap = qPixmap();
                            f: WindowFlags = windowFlags()): QSplashScreen {.
    constructor, importcpp: "QSplashScreen(@)", header: "qsplashscreen.h".}
proc constructQSplashScreen*(screen: ptr QScreen; pixmap: QPixmap = qPixmap();
                            f: WindowFlags = windowFlags()): QSplashScreen {.
    constructor, importcpp: "QSplashScreen(@)", header: "qsplashscreen.h".}
proc destroyQSplashScreen*(this: var QSplashScreen) {.
    importcpp: "#.~QSplashScreen()", header: "qsplashscreen.h".}
proc setPixmap*(this: var QSplashScreen; pixmap: QPixmap) {.importcpp: "setPixmap",
    header: "qsplashscreen.h".}
proc pixmap*(this: QSplashScreen): QPixmap {.noSideEffect, importcpp: "pixmap",
    header: "qsplashscreen.h".}
proc finish*(this: var QSplashScreen; w: ptr QWidget) {.importcpp: "finish",
    header: "qsplashscreen.h".}
proc repaint*(this: var QSplashScreen) {.importcpp: "repaint",
                                     header: "qsplashscreen.h".}
proc message*(this: QSplashScreen): QString {.noSideEffect, importcpp: "message",
    header: "qsplashscreen.h".}
proc showMessage*(this: var QSplashScreen; message: QString;
                 alignment: cint = alignLeft; color: QColor = black) {.
    importcpp: "showMessage", header: "qsplashscreen.h".}
proc clearMessage*(this: var QSplashScreen) {.importcpp: "clearMessage",
    header: "qsplashscreen.h".}
