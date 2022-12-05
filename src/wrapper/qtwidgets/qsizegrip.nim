import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(sizegrip)
discard "forward decl of QSizeGripPrivate"


proc constructQSizeGrip*(parent: ptr QWidget): QSizeGrip {.constructor,
    importcpp: "QSizeGrip(@)", header: "qsizegrip.h".}
proc destroyQSizeGrip*(this: var QSizeGrip) {.importcpp: "#.~QSizeGrip()",
    header: "qsizegrip.h".}
proc sizeHint*(this: QSizeGrip): QSize {.noSideEffect, importcpp: "sizeHint",
                                     header: "qsizegrip.h".}
proc setVisible*(this: var QSizeGrip; a2: bool) {.importcpp: "setVisible",
    header: "qsizegrip.h".}
