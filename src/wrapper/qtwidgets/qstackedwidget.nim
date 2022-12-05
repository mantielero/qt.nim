##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(stackedwidget)
discard "forward decl of QStackedWidgetPrivate"
type
  QStackedWidget* {.importcpp: "QStackedWidget", header: "qstackedwidget.h", bycopy.} = object of QFrame


proc constructQStackedWidget*(parent: ptr QWidget = nil): QStackedWidget {.constructor,
    importcpp: "QStackedWidget(@)", header: "qstackedwidget.h".}
proc destroyQStackedWidget*(this: var QStackedWidget) {.
    importcpp: "#.~QStackedWidget()", header: "qstackedwidget.h".}
proc addWidget*(this: var QStackedWidget; w: ptr QWidget): cint {.
    importcpp: "addWidget", header: "qstackedwidget.h".}
proc insertWidget*(this: var QStackedWidget; index: cint; w: ptr QWidget): cint {.
    importcpp: "insertWidget", header: "qstackedwidget.h".}
proc removeWidget*(this: var QStackedWidget; w: ptr QWidget) {.
    importcpp: "removeWidget", header: "qstackedwidget.h".}
proc currentWidget*(this: QStackedWidget): ptr QWidget {.noSideEffect,
    importcpp: "currentWidget", header: "qstackedwidget.h".}
proc currentIndex*(this: QStackedWidget): cint {.noSideEffect,
    importcpp: "currentIndex", header: "qstackedwidget.h".}
proc indexOf*(this: QStackedWidget; a2: ptr QWidget): cint {.noSideEffect,
    importcpp: "indexOf", header: "qstackedwidget.h".}
proc widget*(this: QStackedWidget; a2: cint): ptr QWidget {.noSideEffect,
    importcpp: "widget", header: "qstackedwidget.h".}
proc count*(this: QStackedWidget): cint {.noSideEffect, importcpp: "count",
                                      header: "qstackedwidget.h".}
proc setCurrentIndex*(this: var QStackedWidget; index: cint) {.
    importcpp: "setCurrentIndex", header: "qstackedwidget.h".}
proc setCurrentWidget*(this: var QStackedWidget; w: ptr QWidget) {.
    importcpp: "setCurrentWidget", header: "qstackedwidget.h".}