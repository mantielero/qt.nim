import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(colordialog)
discard "forward decl of QColorDialogPrivate"



proc constructQColorDialog*(parent: ptr QWidget = nil): QColorDialog {.constructor,
    importcpp: "QColorDialog(@)", header: "qcolordialog.h".}
proc constructQColorDialog*(initial: QColor; parent: ptr QWidget = nil): QColorDialog {.
    constructor, importcpp: "QColorDialog(@)", header: "qcolordialog.h".}
proc destroyQColorDialog*(this: var QColorDialog) {.importcpp: "#.~QColorDialog()",
    header: "qcolordialog.h".}
proc setCurrentColor*(this: var QColorDialog; color: QColor) {.
    importcpp: "setCurrentColor", header: "qcolordialog.h".}
proc currentColor*(this: QColorDialog): QColor {.noSideEffect,
    importcpp: "currentColor", header: "qcolordialog.h".}
proc selectedColor*(this: QColorDialog): QColor {.noSideEffect,
    importcpp: "selectedColor", header: "qcolordialog.h".}
proc setOption*(this: var QColorDialog; option: QColorDialogColorDialogOption;
               on: bool = true) {.importcpp: "setOption", header: "qcolordialog.h".}
proc testOption*(this: QColorDialog; option: QColorDialogColorDialogOption): bool {.
    noSideEffect, importcpp: "testOption", header: "qcolordialog.h".}
proc setOptions*(this: var QColorDialog; options: ColorDialogOptions) {.
    importcpp: "setOptions", header: "qcolordialog.h".}
proc options*(this: QColorDialog): ColorDialogOptions {.noSideEffect,
    importcpp: "options", header: "qcolordialog.h".}
## using statement

proc open*(this: var QColorDialog; receiver: ptr QObject; member: cstring) {.
    importcpp: "open", header: "qcolordialog.h".}
proc setVisible*(this: var QColorDialog; visible: bool) {.importcpp: "setVisible",
    header: "qcolordialog.h".}
proc getColor*(initial: QColor = white; parent: ptr QWidget = nil;
              title: QString = qString();
              options: ColorDialogOptions = colorDialogOptions()): QColor {.
    importcpp: "QColorDialog::getColor(@)", header: "qcolordialog.h".}
proc customCount*(): cint {.importcpp: "QColorDialog::customCount(@)",
                         header: "qcolordialog.h".}
proc customColor*(index: cint): QColor {.importcpp: "QColorDialog::customColor(@)",
                                     header: "qcolordialog.h".}
proc setCustomColor*(index: cint; color: QColor) {.
    importcpp: "QColorDialog::setCustomColor(@)", header: "qcolordialog.h".}
proc standardColor*(index: cint): QColor {.importcpp: "QColorDialog::standardColor(@)",
                                       header: "qcolordialog.h".}
proc setStandardColor*(index: cint; color: QColor) {.
    importcpp: "QColorDialog::setStandardColor(@)", header: "qcolordialog.h".}
