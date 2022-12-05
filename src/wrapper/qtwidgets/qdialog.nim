import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(dialog)
discard "forward decl of QPushButton"
discard "forward decl of QDialogPrivate"


proc constructQDialog*(parent: ptr QWidget = nil; f: WindowFlags = windowFlags()): QDialog {.
    constructor, importcpp: "QDialog(@)", header: "qdialog.h".}
proc destroyQDialog*(this: var QDialog) {.importcpp: "#.~QDialog()",
                                      header: "qdialog.h".}


proc result*(this: QDialog): cint {.noSideEffect, importcpp: "result",
                                header: "qdialog.h".}
proc setVisible*(this: var QDialog; visible: bool) {.importcpp: "setVisible",
    header: "qdialog.h".}
proc sizeHint*(this: QDialog): QSize {.noSideEffect, importcpp: "sizeHint",
                                   header: "qdialog.h".}
proc minimumSizeHint*(this: QDialog): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qdialog.h".}
proc setSizeGripEnabled*(this: var QDialog; a2: bool) {.
    importcpp: "setSizeGripEnabled", header: "qdialog.h".}
proc isSizeGripEnabled*(this: QDialog): bool {.noSideEffect,
    importcpp: "isSizeGripEnabled", header: "qdialog.h".}
proc setModal*(this: var QDialog; modal: bool) {.importcpp: "setModal",
    header: "qdialog.h".}
proc setResult*(this: var QDialog; r: cint) {.importcpp: "setResult",
                                        header: "qdialog.h".}
proc open*(this: var QDialog) {.importcpp: "open", header: "qdialog.h".}
proc exec*(this: var QDialog): cint {.importcpp: "exec", header: "qdialog.h".}
proc done*(this: var QDialog; a2: cint) {.importcpp: "done", header: "qdialog.h".}
proc accept*(this: var QDialog) {.importcpp: "accept", header: "qdialog.h".}
proc reject*(this: var QDialog) {.importcpp: "reject", header: "qdialog.h".}
