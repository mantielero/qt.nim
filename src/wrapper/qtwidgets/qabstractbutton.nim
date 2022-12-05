import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(abstractbutton)
discard "forward decl of QButtonGroup"
discard "forward decl of QAbstractButtonPrivate"


proc constructQAbstractButton*(parent: ptr QWidget = nil): QAbstractButton {.
    constructor, importcpp: "QAbstractButton(@)", header: "qabstractbutton.h".}
proc destroyQAbstractButton*(this: var QAbstractButton) {.
    importcpp: "#.~QAbstractButton()", header: "qabstractbutton.h".}
proc setText*(this: var QAbstractButton; text: QString) {.importcpp: "setText",
    header: "qabstractbutton.h".}
proc text*(this: QAbstractButton): QString {.noSideEffect, importcpp: "text",
    header: "qabstractbutton.h".}
proc setIcon*(this: var QAbstractButton; icon: QIcon) {.importcpp: "setIcon",
    header: "qabstractbutton.h".}
proc icon*(this: QAbstractButton): QIcon {.noSideEffect, importcpp: "icon",
                                       header: "qabstractbutton.h".}
proc iconSize*(this: QAbstractButton): QSize {.noSideEffect, importcpp: "iconSize",
    header: "qabstractbutton.h".}
when not defined(QT_NO_SHORTCUT):
  proc setShortcut*(this: var QAbstractButton; key: QKeySequence) {.
      importcpp: "setShortcut", header: "qabstractbutton.h".}
when not defined(QT_NO_SHORTCUT):
  proc shortcut*(this: QAbstractButton): QKeySequence {.noSideEffect,
      importcpp: "shortcut", header: "qabstractbutton.h".}
proc setCheckable*(this: var QAbstractButton; a2: bool) {.importcpp: "setCheckable",
    header: "qabstractbutton.h".}
proc isCheckable*(this: QAbstractButton): bool {.noSideEffect,
    importcpp: "isCheckable", header: "qabstractbutton.h".}
proc isChecked*(this: QAbstractButton): bool {.noSideEffect, importcpp: "isChecked",
    header: "qabstractbutton.h".}
proc setDown*(this: var QAbstractButton; a2: bool) {.importcpp: "setDown",
    header: "qabstractbutton.h".}
proc isDown*(this: QAbstractButton): bool {.noSideEffect, importcpp: "isDown",
                                        header: "qabstractbutton.h".}
proc setAutoRepeat*(this: var QAbstractButton; a2: bool) {.importcpp: "setAutoRepeat",
    header: "qabstractbutton.h".}
proc autoRepeat*(this: QAbstractButton): bool {.noSideEffect,
    importcpp: "autoRepeat", header: "qabstractbutton.h".}
proc setAutoRepeatDelay*(this: var QAbstractButton; a2: cint) {.
    importcpp: "setAutoRepeatDelay", header: "qabstractbutton.h".}
proc autoRepeatDelay*(this: QAbstractButton): cint {.noSideEffect,
    importcpp: "autoRepeatDelay", header: "qabstractbutton.h".}
proc setAutoRepeatInterval*(this: var QAbstractButton; a2: cint) {.
    importcpp: "setAutoRepeatInterval", header: "qabstractbutton.h".}
proc autoRepeatInterval*(this: QAbstractButton): cint {.noSideEffect,
    importcpp: "autoRepeatInterval", header: "qabstractbutton.h".}
proc setAutoExclusive*(this: var QAbstractButton; a2: bool) {.
    importcpp: "setAutoExclusive", header: "qabstractbutton.h".}
proc autoExclusive*(this: QAbstractButton): bool {.noSideEffect,
    importcpp: "autoExclusive", header: "qabstractbutton.h".}
proc group*(this: QAbstractButton): ptr QButtonGroup {.noSideEffect,
    importcpp: "group", header: "qabstractbutton.h".}
proc setIconSize*(this: var QAbstractButton; size: QSize) {.importcpp: "setIconSize",
    header: "qabstractbutton.h".}
proc animateClick*(this: var QAbstractButton) {.importcpp: "animateClick",
    header: "qabstractbutton.h".}
proc click*(this: var QAbstractButton) {.importcpp: "click",
                                     header: "qabstractbutton.h".}
proc toggle*(this: var QAbstractButton) {.importcpp: "toggle",
                                      header: "qabstractbutton.h".}
proc setChecked*(this: var QAbstractButton; a2: bool) {.importcpp: "setChecked",
    header: "qabstractbutton.h".}
