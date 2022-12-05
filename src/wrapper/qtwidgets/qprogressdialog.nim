##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(progressdialog)
discard "forward decl of QPushButton"
discard "forward decl of QLabel"
discard "forward decl of QProgressBar"
discard "forward decl of QTimer"
discard "forward decl of QProgressDialogPrivate"
type
  QProgressDialog* {.importcpp: "QProgressDialog", header: "qprogressdialog.h",
                    bycopy.} = object of QDialog


proc constructQProgressDialog*(parent: ptr QWidget = nil;
                              flags: WindowFlags = windowFlags()): QProgressDialog {.
    constructor, importcpp: "QProgressDialog(@)", header: "qprogressdialog.h".}
proc constructQProgressDialog*(labelText: QString; cancelButtonText: QString;
                              minimum: cint; maximum: cint;
                              parent: ptr QWidget = nil;
                              flags: WindowFlags = windowFlags()): QProgressDialog {.
    constructor, importcpp: "QProgressDialog(@)", header: "qprogressdialog.h".}
proc destroyQProgressDialog*(this: var QProgressDialog) {.
    importcpp: "#.~QProgressDialog()", header: "qprogressdialog.h".}
proc setLabel*(this: var QProgressDialog; label: ptr QLabel) {.importcpp: "setLabel",
    header: "qprogressdialog.h".}
proc setCancelButton*(this: var QProgressDialog; button: ptr QPushButton) {.
    importcpp: "setCancelButton", header: "qprogressdialog.h".}
proc setBar*(this: var QProgressDialog; bar: ptr QProgressBar) {.importcpp: "setBar",
    header: "qprogressdialog.h".}
proc wasCanceled*(this: QProgressDialog): bool {.noSideEffect,
    importcpp: "wasCanceled", header: "qprogressdialog.h".}
proc minimum*(this: QProgressDialog): cint {.noSideEffect, importcpp: "minimum",
    header: "qprogressdialog.h".}
proc maximum*(this: QProgressDialog): cint {.noSideEffect, importcpp: "maximum",
    header: "qprogressdialog.h".}
proc value*(this: QProgressDialog): cint {.noSideEffect, importcpp: "value",
                                       header: "qprogressdialog.h".}
proc sizeHint*(this: QProgressDialog): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qprogressdialog.h".}
proc labelText*(this: QProgressDialog): QString {.noSideEffect,
    importcpp: "labelText", header: "qprogressdialog.h".}
proc minimumDuration*(this: QProgressDialog): cint {.noSideEffect,
    importcpp: "minimumDuration", header: "qprogressdialog.h".}
proc setAutoReset*(this: var QProgressDialog; reset: bool) {.
    importcpp: "setAutoReset", header: "qprogressdialog.h".}
proc autoReset*(this: QProgressDialog): bool {.noSideEffect, importcpp: "autoReset",
    header: "qprogressdialog.h".}
proc setAutoClose*(this: var QProgressDialog; close: bool) {.
    importcpp: "setAutoClose", header: "qprogressdialog.h".}
proc autoClose*(this: QProgressDialog): bool {.noSideEffect, importcpp: "autoClose",
    header: "qprogressdialog.h".}
## using statement

proc open*(this: var QProgressDialog; receiver: ptr QObject; member: cstring) {.
    importcpp: "open", header: "qprogressdialog.h".}
proc cancel*(this: var QProgressDialog) {.importcpp: "cancel",
                                      header: "qprogressdialog.h".}
proc reset*(this: var QProgressDialog) {.importcpp: "reset",
                                     header: "qprogressdialog.h".}
proc setMaximum*(this: var QProgressDialog; maximum: cint) {.importcpp: "setMaximum",
    header: "qprogressdialog.h".}
proc setMinimum*(this: var QProgressDialog; minimum: cint) {.importcpp: "setMinimum",
    header: "qprogressdialog.h".}
proc setRange*(this: var QProgressDialog; minimum: cint; maximum: cint) {.
    importcpp: "setRange", header: "qprogressdialog.h".}
proc setValue*(this: var QProgressDialog; progress: cint) {.importcpp: "setValue",
    header: "qprogressdialog.h".}
proc setLabelText*(this: var QProgressDialog; text: QString) {.
    importcpp: "setLabelText", header: "qprogressdialog.h".}
proc setCancelButtonText*(this: var QProgressDialog; text: QString) {.
    importcpp: "setCancelButtonText", header: "qprogressdialog.h".}
proc setMinimumDuration*(this: var QProgressDialog; ms: cint) {.
    importcpp: "setMinimumDuration", header: "qprogressdialog.h".}