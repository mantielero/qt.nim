import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(statusbar)
discard "forward decl of QStatusBarPrivate"


proc constructQStatusBar*(parent: ptr QWidget = nil): QStatusBar {.constructor,
    importcpp: "QStatusBar(@)", header: "qstatusbar.h".}
proc destroyQStatusBar*(this: var QStatusBar) {.importcpp: "#.~QStatusBar()",
    header: "qstatusbar.h".}
proc addWidget*(this: var QStatusBar; widget: ptr QWidget; stretch: cint = 0) {.
    importcpp: "addWidget", header: "qstatusbar.h".}
proc insertWidget*(this: var QStatusBar; index: cint; widget: ptr QWidget;
                  stretch: cint = 0): cint {.importcpp: "insertWidget",
                                        header: "qstatusbar.h".}
proc addPermanentWidget*(this: var QStatusBar; widget: ptr QWidget; stretch: cint = 0) {.
    importcpp: "addPermanentWidget", header: "qstatusbar.h".}
proc insertPermanentWidget*(this: var QStatusBar; index: cint; widget: ptr QWidget;
                           stretch: cint = 0): cint {.
    importcpp: "insertPermanentWidget", header: "qstatusbar.h".}
proc removeWidget*(this: var QStatusBar; widget: ptr QWidget) {.
    importcpp: "removeWidget", header: "qstatusbar.h".}
proc setSizeGripEnabled*(this: var QStatusBar; a2: bool) {.
    importcpp: "setSizeGripEnabled", header: "qstatusbar.h".}
proc isSizeGripEnabled*(this: QStatusBar): bool {.noSideEffect,
    importcpp: "isSizeGripEnabled", header: "qstatusbar.h".}
proc currentMessage*(this: QStatusBar): QString {.noSideEffect,
    importcpp: "currentMessage", header: "qstatusbar.h".}
proc showMessage*(this: var QStatusBar; text: QString; timeout: cint = 0) {.
    importcpp: "showMessage", header: "qstatusbar.h".}
proc clearMessage*(this: var QStatusBar) {.importcpp: "clearMessage",
                                       header: "qstatusbar.h".}
