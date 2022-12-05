##  Copyright (C) 2016 The Qt Company Ltd.
##  Copyright (C) 2013 Ivan Komissarov.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(keysequenceedit)
discard "forward decl of QKeySequenceEditPrivate"
type
  QKeySequenceEdit* {.importcpp: "QKeySequenceEdit", header: "qkeysequenceedit.h",
                     bycopy.} = object of QWidget


proc constructQKeySequenceEdit*(parent: ptr QWidget = nil): QKeySequenceEdit {.
    constructor, importcpp: "QKeySequenceEdit(@)", header: "qkeysequenceedit.h".}
proc constructQKeySequenceEdit*(keySequence: QKeySequence;
                               parent: ptr QWidget = nil): QKeySequenceEdit {.
    constructor, importcpp: "QKeySequenceEdit(@)", header: "qkeysequenceedit.h".}
proc destroyQKeySequenceEdit*(this: var QKeySequenceEdit) {.
    importcpp: "#.~QKeySequenceEdit()", header: "qkeysequenceedit.h".}
proc keySequence*(this: QKeySequenceEdit): QKeySequence {.noSideEffect,
    importcpp: "keySequence", header: "qkeysequenceedit.h".}
proc setClearButtonEnabled*(this: var QKeySequenceEdit; enable: bool) {.
    importcpp: "setClearButtonEnabled", header: "qkeysequenceedit.h".}
proc isClearButtonEnabled*(this: QKeySequenceEdit): bool {.noSideEffect,
    importcpp: "isClearButtonEnabled", header: "qkeysequenceedit.h".}
proc setKeySequence*(this: var QKeySequenceEdit; keySequence: QKeySequence) {.
    importcpp: "setKeySequence", header: "qkeysequenceedit.h".}
proc clear*(this: var QKeySequenceEdit) {.importcpp: "clear",
                                      header: "qkeysequenceedit.h".}