##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(undoview)
discard "forward decl of QUndoViewPrivate"
discard "forward decl of QUndoStack"
discard "forward decl of QUndoGroup"
discard "forward decl of QIcon"
type
  QUndoView* {.importcpp: "QUndoView", header: "qundoview.h", bycopy.} = object of QListView


proc constructQUndoView*(parent: ptr QWidget = nil): QUndoView {.constructor,
    importcpp: "QUndoView(@)", header: "qundoview.h".}
proc constructQUndoView*(stack: ptr QUndoStack; parent: ptr QWidget = nil): QUndoView {.
    constructor, importcpp: "QUndoView(@)", header: "qundoview.h".}
proc constructQUndoView*(group: ptr QUndoGroup; parent: ptr QWidget = nil): QUndoView {.
    constructor, importcpp: "QUndoView(@)", header: "qundoview.h".}
proc destroyQUndoView*(this: var QUndoView) {.importcpp: "#.~QUndoView()",
    header: "qundoview.h".}
proc stack*(this: QUndoView): ptr QUndoStack {.noSideEffect, importcpp: "stack",
    header: "qundoview.h".}
proc group*(this: QUndoView): ptr QUndoGroup {.noSideEffect, importcpp: "group",
    header: "qundoview.h".}
proc setEmptyLabel*(this: var QUndoView; label: QString) {.importcpp: "setEmptyLabel",
    header: "qundoview.h".}
proc emptyLabel*(this: QUndoView): QString {.noSideEffect, importcpp: "emptyLabel",
    header: "qundoview.h".}
proc setCleanIcon*(this: var QUndoView; icon: QIcon) {.importcpp: "setCleanIcon",
    header: "qundoview.h".}
proc cleanIcon*(this: QUndoView): QIcon {.noSideEffect, importcpp: "cleanIcon",
                                      header: "qundoview.h".}
proc setStack*(this: var QUndoView; stack: ptr QUndoStack) {.importcpp: "setStack",
    header: "qundoview.h".}
proc setGroup*(this: var QUndoView; group: ptr QUndoGroup) {.importcpp: "setGroup",
    header: "qundoview.h".}