##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(scrollbar)
discard "forward decl of QScrollBarPrivate"
discard "forward decl of QStyleOptionSlider"
type
  QScrollBar* {.importcpp: "QScrollBar", header: "qscrollbar.h", bycopy.} = object of QAbstractSlider


proc constructQScrollBar*(parent: ptr QWidget = nil): QScrollBar {.constructor,
    importcpp: "QScrollBar(@)", header: "qscrollbar.h".}
proc constructQScrollBar*(a1: Orientation; parent: ptr QWidget = nil): QScrollBar {.
    constructor, importcpp: "QScrollBar(@)", header: "qscrollbar.h".}
proc destroyQScrollBar*(this: var QScrollBar) {.importcpp: "#.~QScrollBar()",
    header: "qscrollbar.h".}
proc sizeHint*(this: QScrollBar): QSize {.noSideEffect, importcpp: "sizeHint",
                                      header: "qscrollbar.h".}
proc event*(this: var QScrollBar; event: ptr QEvent): bool {.importcpp: "event",
    header: "qscrollbar.h".}