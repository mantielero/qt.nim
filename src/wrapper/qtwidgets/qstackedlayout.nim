import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QStackedLayoutPrivate"



proc constructQStackedLayout*(): QStackedLayout {.constructor,
    importcpp: "QStackedLayout(@)", header: "qstackedlayout.h".}
proc constructQStackedLayout*(parent: ptr QWidget): QStackedLayout {.constructor,
    importcpp: "QStackedLayout(@)", header: "qstackedlayout.h".}
proc constructQStackedLayout*(parentLayout: ptr QLayout): QStackedLayout {.
    constructor, importcpp: "QStackedLayout(@)", header: "qstackedlayout.h".}
proc destroyQStackedLayout*(this: var QStackedLayout) {.
    importcpp: "#.~QStackedLayout()", header: "qstackedlayout.h".}
proc addWidget*(this: var QStackedLayout; w: ptr QWidget): cint {.
    importcpp: "addWidget", header: "qstackedlayout.h".}
proc insertWidget*(this: var QStackedLayout; index: cint; w: ptr QWidget): cint {.
    importcpp: "insertWidget", header: "qstackedlayout.h".}
proc currentWidget*(this: QStackedLayout): ptr QWidget {.noSideEffect,
    importcpp: "currentWidget", header: "qstackedlayout.h".}
proc currentIndex*(this: QStackedLayout): cint {.noSideEffect,
    importcpp: "currentIndex", header: "qstackedlayout.h".}
## using statement

proc widget*(this: QStackedLayout; a2: cint): ptr QWidget {.noSideEffect,
    importcpp: "widget", header: "qstackedlayout.h".}
proc count*(this: QStackedLayout): cint {.noSideEffect, importcpp: "count",
                                      header: "qstackedlayout.h".}
proc stackingMode*(this: QStackedLayout): QStackedLayoutStackingMode {.noSideEffect,
    importcpp: "stackingMode", header: "qstackedlayout.h".}
proc setStackingMode*(this: var QStackedLayout;
                     stackingMode: QStackedLayoutStackingMode) {.
    importcpp: "setStackingMode", header: "qstackedlayout.h".}
proc addItem*(this: var QStackedLayout; item: ptr QLayoutItem) {.importcpp: "addItem",
    header: "qstackedlayout.h".}
proc sizeHint*(this: QStackedLayout): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qstackedlayout.h".}
proc minimumSize*(this: QStackedLayout): QSize {.noSideEffect,
    importcpp: "minimumSize", header: "qstackedlayout.h".}
proc itemAt*(this: QStackedLayout; a2: cint): ptr QLayoutItem {.noSideEffect,
    importcpp: "itemAt", header: "qstackedlayout.h".}
proc takeAt*(this: var QStackedLayout; a2: cint): ptr QLayoutItem {.importcpp: "takeAt",
    header: "qstackedlayout.h".}
proc setGeometry*(this: var QStackedLayout; rect: QRect) {.importcpp: "setGeometry",
    header: "qstackedlayout.h".}
proc hasHeightForWidth*(this: QStackedLayout): bool {.noSideEffect,
    importcpp: "hasHeightForWidth", header: "qstackedlayout.h".}
proc heightForWidth*(this: QStackedLayout; width: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qstackedlayout.h".}
proc setCurrentIndex*(this: var QStackedLayout; index: cint) {.
    importcpp: "setCurrentIndex", header: "qstackedlayout.h".}
proc setCurrentWidget*(this: var QStackedLayout; w: ptr QWidget) {.
    importcpp: "setCurrentWidget", header: "qstackedlayout.h".}
