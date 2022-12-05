import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(dialogbuttonbox)
discard "forward decl of QAbstractButton"
discard "forward decl of QPushButton"
discard "forward decl of QDialogButtonBoxPrivate"







proc constructQDialogButtonBox*(parent: ptr QWidget = nil): QDialogButtonBox {.
    constructor, importcpp: "QDialogButtonBox(@)", header: "qdialogbuttonbox.h".}
proc constructQDialogButtonBox*(orientation: Orientation; parent: ptr QWidget = nil): QDialogButtonBox {.
    constructor, importcpp: "QDialogButtonBox(@)", header: "qdialogbuttonbox.h".}
proc constructQDialogButtonBox*(buttons: StandardButtons; parent: ptr QWidget = nil): QDialogButtonBox {.
    constructor, importcpp: "QDialogButtonBox(@)", header: "qdialogbuttonbox.h".}
proc constructQDialogButtonBox*(buttons: StandardButtons; orientation: Orientation;
                               parent: ptr QWidget = nil): QDialogButtonBox {.
    constructor, importcpp: "QDialogButtonBox(@)", header: "qdialogbuttonbox.h".}
proc destroyQDialogButtonBox*(this: var QDialogButtonBox) {.
    importcpp: "#.~QDialogButtonBox()", header: "qdialogbuttonbox.h".}
proc setOrientation*(this: var QDialogButtonBox; orientation: Orientation) {.
    importcpp: "setOrientation", header: "qdialogbuttonbox.h".}
proc orientation*(this: QDialogButtonBox): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qdialogbuttonbox.h".}
proc addButton*(this: var QDialogButtonBox; button: ptr QAbstractButton;
               role: QDialogButtonBoxButtonRole) {.importcpp: "addButton",
    header: "qdialogbuttonbox.h".}
proc addButton*(this: var QDialogButtonBox; text: QString;
               role: QDialogButtonBoxButtonRole): ptr QPushButton {.
    importcpp: "addButton", header: "qdialogbuttonbox.h".}
proc addButton*(this: var QDialogButtonBox; button: QDialogButtonBoxStandardButton): ptr QPushButton {.
    importcpp: "addButton", header: "qdialogbuttonbox.h".}
proc removeButton*(this: var QDialogButtonBox; button: ptr QAbstractButton) {.
    importcpp: "removeButton", header: "qdialogbuttonbox.h".}
proc clear*(this: var QDialogButtonBox) {.importcpp: "clear",
                                      header: "qdialogbuttonbox.h".}
proc buttons*(this: QDialogButtonBox): QList[ptr QAbstractButton] {.noSideEffect,
    importcpp: "buttons", header: "qdialogbuttonbox.h".}
proc buttonRole*(this: QDialogButtonBox; button: ptr QAbstractButton): QDialogButtonBoxButtonRole {.
    noSideEffect, importcpp: "buttonRole", header: "qdialogbuttonbox.h".}
proc setStandardButtons*(this: var QDialogButtonBox; buttons: StandardButtons) {.
    importcpp: "setStandardButtons", header: "qdialogbuttonbox.h".}
proc standardButtons*(this: QDialogButtonBox): StandardButtons {.noSideEffect,
    importcpp: "standardButtons", header: "qdialogbuttonbox.h".}
proc standardButton*(this: QDialogButtonBox; button: ptr QAbstractButton): QDialogButtonBoxStandardButton {.
    noSideEffect, importcpp: "standardButton", header: "qdialogbuttonbox.h".}
proc button*(this: QDialogButtonBox; which: QDialogButtonBoxStandardButton): ptr QPushButton {.
    noSideEffect, importcpp: "button", header: "qdialogbuttonbox.h".}
proc setCenterButtons*(this: var QDialogButtonBox; center: bool) {.
    importcpp: "setCenterButtons", header: "qdialogbuttonbox.h".}
proc centerButtons*(this: QDialogButtonBox): bool {.noSideEffect,
    importcpp: "centerButtons", header: "qdialogbuttonbox.h".}
