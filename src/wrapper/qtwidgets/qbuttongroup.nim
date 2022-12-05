##  Copyright (C) 2020 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(buttongroup)
discard "forward decl of QAbstractButton"
discard "forward decl of QAbstractButtonPrivate"
discard "forward decl of QButtonGroupPrivate"
type
  QButtonGroup* {.importcpp: "QButtonGroup", header: "qbuttongroup.h", bycopy.} = object of QObject


proc constructQButtonGroup*(parent: ptr QObject = nil): QButtonGroup {.constructor,
    importcpp: "QButtonGroup(@)", header: "qbuttongroup.h".}
proc destroyQButtonGroup*(this: var QButtonGroup) {.importcpp: "#.~QButtonGroup()",
    header: "qbuttongroup.h".}
proc setExclusive*(this: var QButtonGroup; a2: bool) {.importcpp: "setExclusive",
    header: "qbuttongroup.h".}
proc exclusive*(this: QButtonGroup): bool {.noSideEffect, importcpp: "exclusive",
                                        header: "qbuttongroup.h".}
proc addButton*(this: var QButtonGroup; a2: ptr QAbstractButton; id: cint = -1) {.
    importcpp: "addButton", header: "qbuttongroup.h".}
proc removeButton*(this: var QButtonGroup; a2: ptr QAbstractButton) {.
    importcpp: "removeButton", header: "qbuttongroup.h".}
proc buttons*(this: QButtonGroup): QList[ptr QAbstractButton] {.noSideEffect,
    importcpp: "buttons", header: "qbuttongroup.h".}
proc checkedButton*(this: QButtonGroup): ptr QAbstractButton {.noSideEffect,
    importcpp: "checkedButton", header: "qbuttongroup.h".}
proc button*(this: QButtonGroup; id: cint): ptr QAbstractButton {.noSideEffect,
    importcpp: "button", header: "qbuttongroup.h".}
proc setId*(this: var QButtonGroup; button: ptr QAbstractButton; id: cint) {.
    importcpp: "setId", header: "qbuttongroup.h".}
proc id*(this: QButtonGroup; button: ptr QAbstractButton): cint {.noSideEffect,
    importcpp: "id", header: "qbuttongroup.h".}
proc checkedId*(this: QButtonGroup): cint {.noSideEffect, importcpp: "checkedId",
                                        header: "qbuttongroup.h".}