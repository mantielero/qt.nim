##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(dialogbuttonbox)
discard "forward decl of QAbstractButton"
discard "forward decl of QPushButton"
discard "forward decl of QDialogButtonBoxPrivate"
type
  QDialogButtonBox* {.importcpp: "QDialogButtonBox", header: "qdialogbuttonbox.h",
                     bycopy.} = object of QWidget
    standardButtons* {.importc: "StandardButtons".}: Q_Flag

  QDialogButtonBoxButtonRole* {.size: sizeof(cint),
                               importcpp: "QDialogButtonBox::ButtonRole",
                               header: "qdialogbuttonbox.h".} = enum ##  keep this in sync with QMessageBox::ButtonRole and QPlatformDialogHelper::ButtonRole
    InvalidRole = -1, AcceptRole, RejectRole, DestructiveRole, ActionRole, HelpRole,
    YesRole, NoRole, ResetRole, ApplyRole, NRoles


type
  QDialogButtonBoxStandardButton* {.size: sizeof(cint), importcpp: "QDialogButtonBox::StandardButton",
                                   header: "qdialogbuttonbox.h".} = enum ##  keep this in sync with QMessageBox::StandardButton and QPlatformDialogHelper::StandardButton
    NoButton = 0x00000000, Ok = 0x00000400, Save = 0x00000800, SaveAll = 0x00001000,
    Open = 0x00002000, Yes = 0x00004000, YesToAll = 0x00008000, No = 0x00010000,
    NoToAll = 0x00020000, Abort = 0x00040000, Retry = 0x00080000, Ignore = 0x00100000,
    Close = 0x00200000, Cancel = 0x00400000, Discard = 0x00800000, Help = 0x01000000,
    Apply = 0x02000000, Reset = 0x04000000, RestoreDefaults = 0x08000000, ##  #ifndef Q_MOC_RUN
    FirstButton = ok, LastButton = restoreDefaults


type
  QDialogButtonBoxButtonLayout* {.size: sizeof(cint),
                                 importcpp: "QDialogButtonBox::ButtonLayout",
                                 header: "qdialogbuttonbox.h".} = enum ##  keep this in sync with QPlatformDialogHelper::ButtonLayout
    WinLayout, MacLayout, KdeLayout, GnomeLayout, AndroidLayout


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