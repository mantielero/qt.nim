##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(radiobutton)
discard "forward decl of QRadioButtonPrivate"
discard "forward decl of QStyleOptionButton"
type
  QRadioButton* {.importcpp: "QRadioButton", header: "qradiobutton.h", bycopy.} = object of QAbstractButton


proc constructQRadioButton*(parent: ptr QWidget = nil): QRadioButton {.constructor,
    importcpp: "QRadioButton(@)", header: "qradiobutton.h".}
proc constructQRadioButton*(text: QString; parent: ptr QWidget = nil): QRadioButton {.
    constructor, importcpp: "QRadioButton(@)", header: "qradiobutton.h".}
proc destroyQRadioButton*(this: var QRadioButton) {.importcpp: "#.~QRadioButton()",
    header: "qradiobutton.h".}
proc sizeHint*(this: QRadioButton): QSize {.noSideEffect, importcpp: "sizeHint",
                                        header: "qradiobutton.h".}
proc minimumSizeHint*(this: QRadioButton): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qradiobutton.h".}