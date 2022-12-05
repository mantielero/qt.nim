import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(checkbox)
discard "forward decl of QCheckBoxPrivate"
discard "forward decl of QStyleOptionButton"


proc constructQCheckBox*(parent: ptr QWidget = nil): QCheckBox {.constructor,
    importcpp: "QCheckBox(@)", header: "qcheckbox.h".}
proc constructQCheckBox*(text: QString; parent: ptr QWidget = nil): QCheckBox {.
    constructor, importcpp: "QCheckBox(@)", header: "qcheckbox.h".}
proc destroyQCheckBox*(this: var QCheckBox) {.importcpp: "#.~QCheckBox()",
    header: "qcheckbox.h".}
proc sizeHint*(this: QCheckBox): QSize {.noSideEffect, importcpp: "sizeHint",
                                     header: "qcheckbox.h".}
proc minimumSizeHint*(this: QCheckBox): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qcheckbox.h".}
proc setTristate*(this: var QCheckBox; y: bool = true) {.importcpp: "setTristate",
    header: "qcheckbox.h".}
proc isTristate*(this: QCheckBox): bool {.noSideEffect, importcpp: "isTristate",
                                      header: "qcheckbox.h".}
proc checkState*(this: QCheckBox): CheckState {.noSideEffect,
    importcpp: "checkState", header: "qcheckbox.h".}
proc setCheckState*(this: var QCheckBox; state: CheckState) {.
    importcpp: "setCheckState", header: "qcheckbox.h".}
