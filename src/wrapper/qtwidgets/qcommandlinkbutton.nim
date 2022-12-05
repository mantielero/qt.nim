##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(commandlinkbutton)
discard "forward decl of QCommandLinkButtonPrivate"
type
  QCommandLinkButton* {.importcpp: "QCommandLinkButton",
                       header: "qcommandlinkbutton.h", bycopy.} = object of QPushButton


proc constructQCommandLinkButton*(parent: ptr QWidget = nil): QCommandLinkButton {.
    constructor, importcpp: "QCommandLinkButton(@)", header: "qcommandlinkbutton.h".}
proc constructQCommandLinkButton*(text: QString; parent: ptr QWidget = nil): QCommandLinkButton {.
    constructor, importcpp: "QCommandLinkButton(@)", header: "qcommandlinkbutton.h".}
proc constructQCommandLinkButton*(text: QString; description: QString;
                                 parent: ptr QWidget = nil): QCommandLinkButton {.
    constructor, importcpp: "QCommandLinkButton(@)", header: "qcommandlinkbutton.h".}
proc destroyQCommandLinkButton*(this: var QCommandLinkButton) {.
    importcpp: "#.~QCommandLinkButton()", header: "qcommandlinkbutton.h".}
proc description*(this: QCommandLinkButton): QString {.noSideEffect,
    importcpp: "description", header: "qcommandlinkbutton.h".}
proc setDescription*(this: var QCommandLinkButton; description: QString) {.
    importcpp: "setDescription", header: "qcommandlinkbutton.h".}
proc sizeHint*(this: QCommandLinkButton): QSize {.noSideEffect,
    importcpp: "sizeHint", header: "qcommandlinkbutton.h".}
proc heightForWidth*(this: QCommandLinkButton; a2: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qcommandlinkbutton.h".}
proc minimumSizeHint*(this: QCommandLinkButton): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qcommandlinkbutton.h".}
proc initStyleOption*(this: QCommandLinkButton; option: ptr QStyleOptionButton) {.
    noSideEffect, importcpp: "initStyleOption", header: "qcommandlinkbutton.h".}