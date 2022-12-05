##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(messagebox)
discard "forward decl of QLabel"
discard "forward decl of QMessageBoxPrivate"
discard "forward decl of QAbstractButton"
discard "forward decl of QCheckBox"
type
  QMessageBox* {.importcpp: "QMessageBox", header: "qmessagebox.h", bycopy.} = object of QDialog
    standardButtons* {.importc: "StandardButtons".}: Q_Flag

  QMessageBoxIcon* {.size: sizeof(cint), importcpp: "QMessageBox::Icon",
                    header: "qmessagebox.h".} = enum ##  keep this in sync with QMessageDialogOptions::Icon
    NoIcon = 0, Information = 1, Warning = 2, Critical = 3, Question = 4


type
  QMessageBoxButtonRole* {.size: sizeof(cint),
                          importcpp: "QMessageBox::ButtonRole",
                          header: "qmessagebox.h".} = enum ##  keep this in sync with QDialogButtonBox::ButtonRole and QPlatformDialogHelper::ButtonRole
    InvalidRole = -1, AcceptRole, RejectRole, DestructiveRole, ActionRole, HelpRole,
    YesRole, NoRole, ResetRole, ApplyRole, NRoles


type
  QMessageBoxStandardButton* {.size: sizeof(cint),
                              importcpp: "QMessageBox::StandardButton",
                              header: "qmessagebox.h".} = enum ##  keep this in sync with QDialogButtonBox::StandardButton and QPlatformDialogHelper::StandardButton
    NoButton = 0x00000000, Default = 0x00000100, ##  obsolete
    Escape = 0x00000200,        ##  obsolete
    FlagMask = 0x00000300,      ##  obsolete
    ButtonMask = not flagMask, Ok = 0x00000400, Save = 0x00000800, SaveAll = 0x00001000,
    Open = 0x00002000, Yes = 0x00004000, YesToAll = 0x00008000, No = 0x00010000,
    NoToAll = 0x00020000, Abort = 0x00040000, Retry = 0x00080000, Ignore = 0x00100000,
    Close = 0x00200000, Cancel = 0x00400000, Discard = 0x00800000, Help = 0x01000000,
    Apply = 0x02000000, Reset = 0x04000000, RestoreDefaults = 0x08000000, FirstButton = ok, ##  internal
    LastButton = restoreDefaults, ##  internal
    YesAll = yesToAll,          ##  obsolete
    NoAll = noToAll             ##  obsolete


when qt_Version < qt_Version_Check(7, 0, 0):
  type
    QMessageBoxButton* = QMessageBoxStandardButton
proc constructQMessageBox*(parent: ptr QWidget = nil): QMessageBox {.constructor,
    importcpp: "QMessageBox(@)", header: "qmessagebox.h".}
proc constructQMessageBox*(icon: QMessageBoxIcon; title: QString; text: QString;
                          buttons: StandardButtons = noButton;
                          parent: ptr QWidget = nil; flags: WindowFlags = dialog or
    mSWindowsFixedSizeDialogHint): QMessageBox {.constructor,
    importcpp: "QMessageBox(@)", header: "qmessagebox.h".}
proc destroyQMessageBox*(this: var QMessageBox) {.importcpp: "#.~QMessageBox()",
    header: "qmessagebox.h".}
proc addButton*(this: var QMessageBox; button: ptr QAbstractButton;
               role: QMessageBoxButtonRole) {.importcpp: "addButton",
    header: "qmessagebox.h".}
proc addButton*(this: var QMessageBox; text: QString; role: QMessageBoxButtonRole): ptr QPushButton {.
    importcpp: "addButton", header: "qmessagebox.h".}
proc addButton*(this: var QMessageBox; button: QMessageBoxStandardButton): ptr QPushButton {.
    importcpp: "addButton", header: "qmessagebox.h".}
proc removeButton*(this: var QMessageBox; button: ptr QAbstractButton) {.
    importcpp: "removeButton", header: "qmessagebox.h".}
## using statement

proc open*(this: var QMessageBox; receiver: ptr QObject; member: cstring) {.
    importcpp: "open", header: "qmessagebox.h".}
proc buttons*(this: QMessageBox): QList[ptr QAbstractButton] {.noSideEffect,
    importcpp: "buttons", header: "qmessagebox.h".}
proc buttonRole*(this: QMessageBox; button: ptr QAbstractButton): QMessageBoxButtonRole {.
    noSideEffect, importcpp: "buttonRole", header: "qmessagebox.h".}
proc setStandardButtons*(this: var QMessageBox; buttons: StandardButtons) {.
    importcpp: "setStandardButtons", header: "qmessagebox.h".}
proc standardButtons*(this: QMessageBox): StandardButtons {.noSideEffect,
    importcpp: "standardButtons", header: "qmessagebox.h".}
proc standardButton*(this: QMessageBox; button: ptr QAbstractButton): QMessageBoxStandardButton {.
    noSideEffect, importcpp: "standardButton", header: "qmessagebox.h".}
proc button*(this: QMessageBox; which: QMessageBoxStandardButton): ptr QAbstractButton {.
    noSideEffect, importcpp: "button", header: "qmessagebox.h".}
proc defaultButton*(this: QMessageBox): ptr QPushButton {.noSideEffect,
    importcpp: "defaultButton", header: "qmessagebox.h".}
proc setDefaultButton*(this: var QMessageBox; button: ptr QPushButton) {.
    importcpp: "setDefaultButton", header: "qmessagebox.h".}
proc setDefaultButton*(this: var QMessageBox; button: QMessageBoxStandardButton) {.
    importcpp: "setDefaultButton", header: "qmessagebox.h".}
proc escapeButton*(this: QMessageBox): ptr QAbstractButton {.noSideEffect,
    importcpp: "escapeButton", header: "qmessagebox.h".}
proc setEscapeButton*(this: var QMessageBox; button: ptr QAbstractButton) {.
    importcpp: "setEscapeButton", header: "qmessagebox.h".}
proc setEscapeButton*(this: var QMessageBox; button: QMessageBoxStandardButton) {.
    importcpp: "setEscapeButton", header: "qmessagebox.h".}
proc clickedButton*(this: QMessageBox): ptr QAbstractButton {.noSideEffect,
    importcpp: "clickedButton", header: "qmessagebox.h".}
proc text*(this: QMessageBox): QString {.noSideEffect, importcpp: "text",
                                     header: "qmessagebox.h".}
proc setText*(this: var QMessageBox; text: QString) {.importcpp: "setText",
    header: "qmessagebox.h".}
proc icon*(this: QMessageBox): QMessageBoxIcon {.noSideEffect, importcpp: "icon",
    header: "qmessagebox.h".}
proc setIcon*(this: var QMessageBox; a2: QMessageBoxIcon) {.importcpp: "setIcon",
    header: "qmessagebox.h".}
proc iconPixmap*(this: QMessageBox): QPixmap {.noSideEffect, importcpp: "iconPixmap",
    header: "qmessagebox.h".}
proc setIconPixmap*(this: var QMessageBox; pixmap: QPixmap) {.
    importcpp: "setIconPixmap", header: "qmessagebox.h".}
proc textFormat*(this: QMessageBox): TextFormat {.noSideEffect,
    importcpp: "textFormat", header: "qmessagebox.h".}
proc setTextFormat*(this: var QMessageBox; format: TextFormat) {.
    importcpp: "setTextFormat", header: "qmessagebox.h".}
proc setTextInteractionFlags*(this: var QMessageBox; flags: TextInteractionFlags) {.
    importcpp: "setTextInteractionFlags", header: "qmessagebox.h".}
proc textInteractionFlags*(this: QMessageBox): TextInteractionFlags {.noSideEffect,
    importcpp: "textInteractionFlags", header: "qmessagebox.h".}
proc setCheckBox*(this: var QMessageBox; cb: ptr QCheckBox) {.importcpp: "setCheckBox",
    header: "qmessagebox.h".}
proc checkBox*(this: QMessageBox): ptr QCheckBox {.noSideEffect,
    importcpp: "checkBox", header: "qmessagebox.h".}
proc information*(parent: ptr QWidget; title: QString; text: QString;
                 buttons: StandardButtons = ok;
                 defaultButton: QMessageBoxStandardButton = noButton): QMessageBoxStandardButton {.
    importcpp: "QMessageBox::information(@)", header: "qmessagebox.h".}
proc question*(parent: ptr QWidget; title: QString; text: QString;
              buttons: StandardButtons = standardButtons(yes or no);
              defaultButton: QMessageBoxStandardButton = noButton): QMessageBoxStandardButton {.
    importcpp: "QMessageBox::question(@)", header: "qmessagebox.h".}
when qt_Version < qt_Version_Check(7, 0, 0):
  proc question*(parent: ptr QWidget; title: QString; text: QString;
                button0: QMessageBoxStandardButton;
                button1: QMessageBoxStandardButton): cint {.
      importcpp: "QMessageBox::question(@)", header: "qmessagebox.h".}
proc warning*(parent: ptr QWidget; title: QString; text: QString;
             buttons: StandardButtons = ok;
             defaultButton: QMessageBoxStandardButton = noButton): QMessageBoxStandardButton {.
    importcpp: "QMessageBox::warning(@)", header: "qmessagebox.h".}
when qt_Version < qt_Version_Check(7, 0, 0):
  proc warning*(parent: ptr QWidget; title: QString; text: QString;
               button0: QMessageBoxStandardButton;
               button1: QMessageBoxStandardButton): cint {.
      importcpp: "QMessageBox::warning(@)", header: "qmessagebox.h".}
proc critical*(parent: ptr QWidget; title: QString; text: QString;
              buttons: StandardButtons = ok;
              defaultButton: QMessageBoxStandardButton = noButton): QMessageBoxStandardButton {.
    importcpp: "QMessageBox::critical(@)", header: "qmessagebox.h".}
when qt_Version < qt_Version_Check(7, 0, 0):
  proc critical*(parent: ptr QWidget; title: QString; text: QString;
                button0: QMessageBoxStandardButton;
                button1: QMessageBoxStandardButton): cint {.
      importcpp: "QMessageBox::critical(@)", header: "qmessagebox.h".}
proc about*(parent: ptr QWidget; title: QString; text: QString) {.
    importcpp: "QMessageBox::about(@)", header: "qmessagebox.h".}
proc aboutQt*(parent: ptr QWidget; title: QString = qString()) {.
    importcpp: "QMessageBox::aboutQt(@)", header: "qmessagebox.h".}
proc constructQMessageBox*(title: QString; text: QString; icon: QMessageBoxIcon;
                          button0: cint; button1: cint; button2: cint;
                          parent: ptr QWidget = nil; f: WindowFlags = dialog or
    mSWindowsFixedSizeDialogHint): QMessageBox {.constructor,
    importcpp: "QMessageBox(@)", header: "qmessagebox.h".}
proc information*(parent: ptr QWidget; title: QString; text: QString; button0: cint;
                 button1: cint = 0; button2: cint = 0): cint {.
    importcpp: "QMessageBox::information(@)", header: "qmessagebox.h".}
proc information*(parent: ptr QWidget; title: QString; text: QString;
                 button0Text: QString; button1Text: QString = qString();
                 button2Text: QString = qString(); defaultButtonNumber: cint = 0;
                 escapeButtonNumber: cint = -1): cint {.
    importcpp: "QMessageBox::information(@)", header: "qmessagebox.h".}
proc question*(parent: ptr QWidget; title: QString; text: QString; button0: cint;
              button1: cint = 0; button2: cint = 0): cint {.
    importcpp: "QMessageBox::question(@)", header: "qmessagebox.h".}
proc question*(parent: ptr QWidget; title: QString; text: QString; button0Text: QString;
              button1Text: QString = qString(); button2Text: QString = qString();
              defaultButtonNumber: cint = 0; escapeButtonNumber: cint = -1): cint {.
    importcpp: "QMessageBox::question(@)", header: "qmessagebox.h".}
proc warning*(parent: ptr QWidget; title: QString; text: QString; button0: cint;
             button1: cint; button2: cint = 0): cint {.
    importcpp: "QMessageBox::warning(@)", header: "qmessagebox.h".}
proc warning*(parent: ptr QWidget; title: QString; text: QString; button0Text: QString;
             button1Text: QString = qString(); button2Text: QString = qString();
             defaultButtonNumber: cint = 0; escapeButtonNumber: cint = -1): cint {.
    importcpp: "QMessageBox::warning(@)", header: "qmessagebox.h".}
proc critical*(parent: ptr QWidget; title: QString; text: QString; button0: cint;
              button1: cint; button2: cint = 0): cint {.
    importcpp: "QMessageBox::critical(@)", header: "qmessagebox.h".}
proc critical*(parent: ptr QWidget; title: QString; text: QString; button0Text: QString;
              button1Text: QString = qString(); button2Text: QString = qString();
              defaultButtonNumber: cint = 0; escapeButtonNumber: cint = -1): cint {.
    importcpp: "QMessageBox::critical(@)", header: "qmessagebox.h".}
proc buttonText*(this: QMessageBox; button: cint): QString {.noSideEffect,
    importcpp: "buttonText", header: "qmessagebox.h".}
proc setButtonText*(this: var QMessageBox; button: cint; text: QString) {.
    importcpp: "setButtonText", header: "qmessagebox.h".}
proc informativeText*(this: QMessageBox): QString {.noSideEffect,
    importcpp: "informativeText", header: "qmessagebox.h".}
proc setInformativeText*(this: var QMessageBox; text: QString) {.
    importcpp: "setInformativeText", header: "qmessagebox.h".}
proc detailedText*(this: QMessageBox): QString {.noSideEffect,
    importcpp: "detailedText", header: "qmessagebox.h".}
proc setDetailedText*(this: var QMessageBox; text: QString) {.
    importcpp: "setDetailedText", header: "qmessagebox.h".}
proc setWindowTitle*(this: var QMessageBox; title: QString) {.
    importcpp: "setWindowTitle", header: "qmessagebox.h".}
proc setWindowModality*(this: var QMessageBox; windowModality: WindowModality) {.
    importcpp: "setWindowModality", header: "qmessagebox.h".}
proc standardIcon*(icon: QMessageBoxIcon): QPixmap {.
    importcpp: "QMessageBox::standardIcon(@)", header: "qmessagebox.h".}
template qt_Require_Version*(argc, argv, str: untyped): void =
  var s: QString
  var sq: QString
  if (sq.section(fromLatin1('.'), 0, 0).toInt() shl 16) +
      (sq.section(fromLatin1('.'), 1, 1).toInt() shl 8) +
      sq.section(fromLatin1('.'), 2, 2).toInt() <
      (s.section(fromLatin1('.'), 0, 0).toInt() shl 16) +
      (s.section(fromLatin1('.'), 1, 1).toInt() shl 8) +
      s.section(fromLatin1('.'), 2, 2).toInt():
    if not qApp:
      proc qApplication(a1: Argc; a2: Argv): New
    var s: QString
    critical(0, tr("Incompatible Qt Library Error"), s, abort, 0)
    qFatal("%s", s.toLatin1().data())
