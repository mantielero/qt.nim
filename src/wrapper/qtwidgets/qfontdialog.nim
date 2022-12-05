##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(fontdialog)
discard "forward decl of QFontDialogPrivate"
type
  QFontDialog* {.importcpp: "QFontDialog", header: "qfontdialog.h", bycopy.} = object of QDialog

  QFontDialogFontDialogOption* {.size: sizeof(cint),
                                importcpp: "QFontDialog::FontDialogOption",
                                header: "qfontdialog.h".} = enum
    NoButtons = 0x00000001, DontUseNativeDialog = 0x00000002,
    ScalableFonts = 0x00000004, NonScalableFonts = 0x00000008,
    MonospacedFonts = 0x00000010, ProportionalFonts = 0x00000020


proc constructQFontDialog*(parent: ptr QWidget = nil): QFontDialog {.constructor,
    importcpp: "QFontDialog(@)", header: "qfontdialog.h".}
proc constructQFontDialog*(initial: QFont; parent: ptr QWidget = nil): QFontDialog {.
    constructor, importcpp: "QFontDialog(@)", header: "qfontdialog.h".}
proc destroyQFontDialog*(this: var QFontDialog) {.importcpp: "#.~QFontDialog()",
    header: "qfontdialog.h".}
proc setCurrentFont*(this: var QFontDialog; font: QFont) {.
    importcpp: "setCurrentFont", header: "qfontdialog.h".}
proc currentFont*(this: QFontDialog): QFont {.noSideEffect, importcpp: "currentFont",
    header: "qfontdialog.h".}
proc selectedFont*(this: QFontDialog): QFont {.noSideEffect,
    importcpp: "selectedFont", header: "qfontdialog.h".}
proc setOption*(this: var QFontDialog; option: QFontDialogFontDialogOption;
               on: bool = true) {.importcpp: "setOption", header: "qfontdialog.h".}
proc testOption*(this: QFontDialog; option: QFontDialogFontDialogOption): bool {.
    noSideEffect, importcpp: "testOption", header: "qfontdialog.h".}
proc setOptions*(this: var QFontDialog; options: FontDialogOptions) {.
    importcpp: "setOptions", header: "qfontdialog.h".}
proc options*(this: QFontDialog): FontDialogOptions {.noSideEffect,
    importcpp: "options", header: "qfontdialog.h".}
## using statement

proc open*(this: var QFontDialog; receiver: ptr QObject; member: cstring) {.
    importcpp: "open", header: "qfontdialog.h".}
proc setVisible*(this: var QFontDialog; visible: bool) {.importcpp: "setVisible",
    header: "qfontdialog.h".}
proc getFont*(ok: ptr bool; parent: ptr QWidget = nil): QFont {.
    importcpp: "QFontDialog::getFont(@)", header: "qfontdialog.h".}
proc getFont*(ok: ptr bool; initial: QFont; parent: ptr QWidget = nil;
             title: QString = qString();
             options: FontDialogOptions = fontDialogOptions()): QFont {.
    importcpp: "QFontDialog::getFont(@)", header: "qfontdialog.h".}