import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(pushbutton)
discard "forward decl of QPushButtonPrivate"
discard "forward decl of QMenu"
discard "forward decl of QStyleOptionButton"


proc constructQPushButton*(parent: ptr QWidget = nil): QPushButton {.constructor,
    importcpp: "QPushButton(@)", header: "qpushbutton.h".}
proc constructQPushButton*(text: QString; parent: ptr QWidget = nil): QPushButton {.
    constructor, importcpp: "QPushButton(@)", header: "qpushbutton.h".}
proc constructQPushButton*(icon: QIcon; text: QString; parent: ptr QWidget = nil): QPushButton {.
    constructor, importcpp: "QPushButton(@)", header: "qpushbutton.h".}
proc destroyQPushButton*(this: var QPushButton) {.importcpp: "#.~QPushButton()",
    header: "qpushbutton.h".}
proc sizeHint*(this: QPushButton): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qpushbutton.h".}
proc minimumSizeHint*(this: QPushButton): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qpushbutton.h".}
proc autoDefault*(this: QPushButton): bool {.noSideEffect, importcpp: "autoDefault",
    header: "qpushbutton.h".}
proc setAutoDefault*(this: var QPushButton; a2: bool) {.importcpp: "setAutoDefault",
    header: "qpushbutton.h".}
proc isDefault*(this: QPushButton): bool {.noSideEffect, importcpp: "isDefault",
                                       header: "qpushbutton.h".}
proc setDefault*(this: var QPushButton; a2: bool) {.importcpp: "setDefault",
    header: "qpushbutton.h".}
proc setMenu*(this: var QPushButton; menu: ptr QMenu) {.importcpp: "setMenu",
    header: "qpushbutton.h".}
proc menu*(this: QPushButton): ptr QMenu {.noSideEffect, importcpp: "menu",
                                      header: "qpushbutton.h".}
proc setFlat*(this: var QPushButton; a2: bool) {.importcpp: "setFlat",
    header: "qpushbutton.h".}
proc isFlat*(this: QPushButton): bool {.noSideEffect, importcpp: "isFlat",
                                    header: "qpushbutton.h".}
proc showMenu*(this: var QPushButton) {.importcpp: "showMenu", header: "qpushbutton.h".}
