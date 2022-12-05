##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(mdiarea)
discard "forward decl of QMenu"
discard "forward decl of QMdiArea"
discard "forward decl of ControlContainer"
discard "forward decl of QMdiSubWindowPrivate"
type
  QMdiSubWindow* {.importcpp: "QMdiSubWindow", header: "qmdisubwindow.h", bycopy.} = object of QWidget

  QMdiSubWindowSubWindowOption* {.size: sizeof(cint),
                                 importcpp: "QMdiSubWindow::SubWindowOption",
                                 header: "qmdisubwindow.h".} = enum
    AllowOutsideAreaHorizontally = 0x1, ##  internal
    AllowOutsideAreaVertically = 0x2, ##  internal
    RubberBandResize = 0x4, RubberBandMove = 0x8


proc constructQMdiSubWindow*(parent: ptr QWidget = nil;
                            flags: WindowFlags = windowFlags()): QMdiSubWindow {.
    constructor, importcpp: "QMdiSubWindow(@)", header: "qmdisubwindow.h".}
proc destroyQMdiSubWindow*(this: var QMdiSubWindow) {.
    importcpp: "#.~QMdiSubWindow()", header: "qmdisubwindow.h".}
proc sizeHint*(this: QMdiSubWindow): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qmdisubwindow.h".}
proc minimumSizeHint*(this: QMdiSubWindow): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qmdisubwindow.h".}
proc setWidget*(this: var QMdiSubWindow; widget: ptr QWidget) {.importcpp: "setWidget",
    header: "qmdisubwindow.h".}
proc widget*(this: QMdiSubWindow): ptr QWidget {.noSideEffect, importcpp: "widget",
    header: "qmdisubwindow.h".}
proc maximizedButtonsWidget*(this: QMdiSubWindow): ptr QWidget {.noSideEffect,
    importcpp: "maximizedButtonsWidget", header: "qmdisubwindow.h".}
proc maximizedSystemMenuIconWidget*(this: QMdiSubWindow): ptr QWidget {.noSideEffect,
    importcpp: "maximizedSystemMenuIconWidget", header: "qmdisubwindow.h".}
proc isShaded*(this: QMdiSubWindow): bool {.noSideEffect, importcpp: "isShaded",
                                        header: "qmdisubwindow.h".}
proc setOption*(this: var QMdiSubWindow; option: QMdiSubWindowSubWindowOption;
               on: bool = true) {.importcpp: "setOption", header: "qmdisubwindow.h".}
proc testOption*(this: QMdiSubWindow; a2: QMdiSubWindowSubWindowOption): bool {.
    noSideEffect, importcpp: "testOption", header: "qmdisubwindow.h".}
proc setKeyboardSingleStep*(this: var QMdiSubWindow; step: cint) {.
    importcpp: "setKeyboardSingleStep", header: "qmdisubwindow.h".}
proc keyboardSingleStep*(this: QMdiSubWindow): cint {.noSideEffect,
    importcpp: "keyboardSingleStep", header: "qmdisubwindow.h".}
proc setKeyboardPageStep*(this: var QMdiSubWindow; step: cint) {.
    importcpp: "setKeyboardPageStep", header: "qmdisubwindow.h".}
proc keyboardPageStep*(this: QMdiSubWindow): cint {.noSideEffect,
    importcpp: "keyboardPageStep", header: "qmdisubwindow.h".}
proc setSystemMenu*(this: var QMdiSubWindow; systemMenu: ptr QMenu) {.
    importcpp: "setSystemMenu", header: "qmdisubwindow.h".}
proc systemMenu*(this: QMdiSubWindow): ptr QMenu {.noSideEffect,
    importcpp: "systemMenu", header: "qmdisubwindow.h".}
proc mdiArea*(this: QMdiSubWindow): ptr QMdiArea {.noSideEffect, importcpp: "mdiArea",
    header: "qmdisubwindow.h".}
proc showSystemMenu*(this: var QMdiSubWindow) {.importcpp: "showSystemMenu",
    header: "qmdisubwindow.h".}
proc showShaded*(this: var QMdiSubWindow) {.importcpp: "showShaded",
                                        header: "qmdisubwindow.h".}