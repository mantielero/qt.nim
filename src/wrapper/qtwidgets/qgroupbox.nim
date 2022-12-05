##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(groupbox)
discard "forward decl of QGroupBoxPrivate"
discard "forward decl of QStyleOptionGroupBox"
type
  QGroupBox* {.importcpp: "QGroupBox", header: "qgroupbox.h", bycopy.} = object of QWidget


proc constructQGroupBox*(parent: ptr QWidget = nil): QGroupBox {.constructor,
    importcpp: "QGroupBox(@)", header: "qgroupbox.h".}
proc constructQGroupBox*(title: QString; parent: ptr QWidget = nil): QGroupBox {.
    constructor, importcpp: "QGroupBox(@)", header: "qgroupbox.h".}
proc destroyQGroupBox*(this: var QGroupBox) {.importcpp: "#.~QGroupBox()",
    header: "qgroupbox.h".}
proc title*(this: QGroupBox): QString {.noSideEffect, importcpp: "title",
                                    header: "qgroupbox.h".}
proc setTitle*(this: var QGroupBox; title: QString) {.importcpp: "setTitle",
    header: "qgroupbox.h".}
proc alignment*(this: QGroupBox): Alignment {.noSideEffect, importcpp: "alignment",
    header: "qgroupbox.h".}
proc setAlignment*(this: var QGroupBox; alignment: cint) {.importcpp: "setAlignment",
    header: "qgroupbox.h".}
proc minimumSizeHint*(this: QGroupBox): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qgroupbox.h".}
proc isFlat*(this: QGroupBox): bool {.noSideEffect, importcpp: "isFlat",
                                  header: "qgroupbox.h".}
proc setFlat*(this: var QGroupBox; flat: bool) {.importcpp: "setFlat",
    header: "qgroupbox.h".}
proc isCheckable*(this: QGroupBox): bool {.noSideEffect, importcpp: "isCheckable",
                                       header: "qgroupbox.h".}
proc setCheckable*(this: var QGroupBox; checkable: bool) {.importcpp: "setCheckable",
    header: "qgroupbox.h".}
proc isChecked*(this: QGroupBox): bool {.noSideEffect, importcpp: "isChecked",
                                     header: "qgroupbox.h".}
proc setChecked*(this: var QGroupBox; checked: bool) {.importcpp: "setChecked",
    header: "qgroupbox.h".}