import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(scrollarea)
discard "forward decl of QScrollAreaPrivate"


proc constructQScrollArea*(parent: ptr QWidget = nil): QScrollArea {.constructor,
    importcpp: "QScrollArea(@)", header: "qscrollarea.h".}
proc destroyQScrollArea*(this: var QScrollArea) {.importcpp: "#.~QScrollArea()",
    header: "qscrollarea.h".}
proc widget*(this: QScrollArea): ptr QWidget {.noSideEffect, importcpp: "widget",
    header: "qscrollarea.h".}
proc setWidget*(this: var QScrollArea; widget: ptr QWidget) {.importcpp: "setWidget",
    header: "qscrollarea.h".}
proc takeWidget*(this: var QScrollArea): ptr QWidget {.importcpp: "takeWidget",
    header: "qscrollarea.h".}
proc widgetResizable*(this: QScrollArea): bool {.noSideEffect,
    importcpp: "widgetResizable", header: "qscrollarea.h".}
proc setWidgetResizable*(this: var QScrollArea; resizable: bool) {.
    importcpp: "setWidgetResizable", header: "qscrollarea.h".}
proc sizeHint*(this: QScrollArea): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qscrollarea.h".}
proc focusNextPrevChild*(this: var QScrollArea; next: bool): bool {.
    importcpp: "focusNextPrevChild", header: "qscrollarea.h".}
proc alignment*(this: QScrollArea): Alignment {.noSideEffect, importcpp: "alignment",
    header: "qscrollarea.h".}
proc setAlignment*(this: var QScrollArea; a2: Alignment) {.importcpp: "setAlignment",
    header: "qscrollarea.h".}
proc ensureVisible*(this: var QScrollArea; x: cint; y: cint; xmargin: cint = 50;
                   ymargin: cint = 50) {.importcpp: "ensureVisible",
                                     header: "qscrollarea.h".}
proc ensureWidgetVisible*(this: var QScrollArea; childWidget: ptr QWidget;
                         xmargin: cint = 50; ymargin: cint = 50) {.
    importcpp: "ensureWidgetVisible", header: "qscrollarea.h".}
