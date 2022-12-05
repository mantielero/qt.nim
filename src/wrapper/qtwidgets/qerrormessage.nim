import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(errormessage)
discard "forward decl of QErrorMessagePrivate"


proc constructQErrorMessage*(parent: ptr QWidget = nil): QErrorMessage {.constructor,
    importcpp: "QErrorMessage(@)", header: "qerrormessage.h".}
proc destroyQErrorMessage*(this: var QErrorMessage) {.
    importcpp: "#.~QErrorMessage()", header: "qerrormessage.h".}
proc qtHandler*(): ptr QErrorMessage {.importcpp: "QErrorMessage::qtHandler(@)",
                                   header: "qerrormessage.h".}
proc showMessage*(this: var QErrorMessage; message: QString) {.
    importcpp: "showMessage", header: "qerrormessage.h".}
proc showMessage*(this: var QErrorMessage; message: QString; `type`: QString) {.
    importcpp: "showMessage", header: "qerrormessage.h".}
