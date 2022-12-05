##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QFocusFramePrivate"
discard "forward decl of QStyleOption"
type
  QFocusFrame* {.importcpp: "QFocusFrame", header: "qfocusframe.h", bycopy.} = object of QWidget


proc constructQFocusFrame*(parent: ptr QWidget = nil): QFocusFrame {.constructor,
    importcpp: "QFocusFrame(@)", header: "qfocusframe.h".}
proc destroyQFocusFrame*(this: var QFocusFrame) {.importcpp: "#.~QFocusFrame()",
    header: "qfocusframe.h".}
proc setWidget*(this: var QFocusFrame; widget: ptr QWidget) {.importcpp: "setWidget",
    header: "qfocusframe.h".}
proc widget*(this: QFocusFrame): ptr QWidget {.noSideEffect, importcpp: "widget",
    header: "qfocusframe.h".}