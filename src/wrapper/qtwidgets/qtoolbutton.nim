import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(toolbutton)
discard "forward decl of QToolButtonPrivate"
discard "forward decl of QMenu"
discard "forward decl of QStyleOptionToolButton"



proc constructQToolButton*(parent: ptr QWidget = nil): QToolButton {.constructor,
    importcpp: "QToolButton(@)", header: "qtoolbutton.h".}
proc destroyQToolButton*(this: var QToolButton) {.importcpp: "#.~QToolButton()",
    header: "qtoolbutton.h".}
proc sizeHint*(this: QToolButton): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qtoolbutton.h".}
proc minimumSizeHint*(this: QToolButton): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qtoolbutton.h".}
proc toolButtonStyle*(this: QToolButton): ToolButtonStyle {.noSideEffect,
    importcpp: "toolButtonStyle", header: "qtoolbutton.h".}
proc arrowType*(this: QToolButton): ArrowType {.noSideEffect, importcpp: "arrowType",
    header: "qtoolbutton.h".}
proc setArrowType*(this: var QToolButton; `type`: ArrowType) {.
    importcpp: "setArrowType", header: "qtoolbutton.h".}
proc setMenu*(this: var QToolButton; menu: ptr QMenu) {.importcpp: "setMenu",
    header: "qtoolbutton.h".}
proc menu*(this: QToolButton): ptr QMenu {.noSideEffect, importcpp: "menu",
                                      header: "qtoolbutton.h".}
proc setPopupMode*(this: var QToolButton; mode: QToolButtonToolButtonPopupMode) {.
    importcpp: "setPopupMode", header: "qtoolbutton.h".}
proc popupMode*(this: QToolButton): QToolButtonToolButtonPopupMode {.noSideEffect,
    importcpp: "popupMode", header: "qtoolbutton.h".}
proc defaultAction*(this: QToolButton): ptr QAction {.noSideEffect,
    importcpp: "defaultAction", header: "qtoolbutton.h".}
proc setAutoRaise*(this: var QToolButton; enable: bool) {.importcpp: "setAutoRaise",
    header: "qtoolbutton.h".}
proc autoRaise*(this: QToolButton): bool {.noSideEffect, importcpp: "autoRaise",
                                       header: "qtoolbutton.h".}
proc showMenu*(this: var QToolButton) {.importcpp: "showMenu", header: "qtoolbutton.h".}
proc setToolButtonStyle*(this: var QToolButton; style: ToolButtonStyle) {.
    importcpp: "setToolButtonStyle", header: "qtoolbutton.h".}
proc setDefaultAction*(this: var QToolButton; a2: ptr QAction) {.
    importcpp: "setDefaultAction", header: "qtoolbutton.h".}
