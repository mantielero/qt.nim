import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(toolbox)
discard "forward decl of QToolBoxPrivate"


proc constructQToolBox*(parent: ptr QWidget = nil; f: WindowFlags = windowFlags()): QToolBox {.
    constructor, importcpp: "QToolBox(@)", header: "qtoolbox.h".}
proc destroyQToolBox*(this: var QToolBox) {.importcpp: "#.~QToolBox()",
                                        header: "qtoolbox.h".}
proc addItem*(this: var QToolBox; widget: ptr QWidget; text: QString): cint {.
    importcpp: "addItem", header: "qtoolbox.h".}
proc addItem*(this: var QToolBox; widget: ptr QWidget; icon: QIcon; text: QString): cint {.
    importcpp: "addItem", header: "qtoolbox.h".}
proc insertItem*(this: var QToolBox; index: cint; widget: ptr QWidget; text: QString): cint {.
    importcpp: "insertItem", header: "qtoolbox.h".}
proc insertItem*(this: var QToolBox; index: cint; widget: ptr QWidget; icon: QIcon;
                text: QString): cint {.importcpp: "insertItem", header: "qtoolbox.h".}
proc removeItem*(this: var QToolBox; index: cint) {.importcpp: "removeItem",
    header: "qtoolbox.h".}
proc setItemEnabled*(this: var QToolBox; index: cint; enabled: bool) {.
    importcpp: "setItemEnabled", header: "qtoolbox.h".}
proc isItemEnabled*(this: QToolBox; index: cint): bool {.noSideEffect,
    importcpp: "isItemEnabled", header: "qtoolbox.h".}
proc setItemText*(this: var QToolBox; index: cint; text: QString) {.
    importcpp: "setItemText", header: "qtoolbox.h".}
proc itemText*(this: QToolBox; index: cint): QString {.noSideEffect,
    importcpp: "itemText", header: "qtoolbox.h".}
proc setItemIcon*(this: var QToolBox; index: cint; icon: QIcon) {.
    importcpp: "setItemIcon", header: "qtoolbox.h".}
proc itemIcon*(this: QToolBox; index: cint): QIcon {.noSideEffect,
    importcpp: "itemIcon", header: "qtoolbox.h".}
proc setItemToolTip*(this: var QToolBox; index: cint; toolTip: QString) {.
    importcpp: "setItemToolTip", header: "qtoolbox.h".}
proc itemToolTip*(this: QToolBox; index: cint): QString {.noSideEffect,
    importcpp: "itemToolTip", header: "qtoolbox.h".}
proc currentIndex*(this: QToolBox): cint {.noSideEffect, importcpp: "currentIndex",
                                       header: "qtoolbox.h".}
proc currentWidget*(this: QToolBox): ptr QWidget {.noSideEffect,
    importcpp: "currentWidget", header: "qtoolbox.h".}
proc widget*(this: QToolBox; index: cint): ptr QWidget {.noSideEffect,
    importcpp: "widget", header: "qtoolbox.h".}
proc indexOf*(this: QToolBox; widget: ptr QWidget): cint {.noSideEffect,
    importcpp: "indexOf", header: "qtoolbox.h".}
proc count*(this: QToolBox): cint {.noSideEffect, importcpp: "count",
                                header: "qtoolbox.h".}
proc setCurrentIndex*(this: var QToolBox; index: cint) {.importcpp: "setCurrentIndex",
    header: "qtoolbox.h".}
proc setCurrentWidget*(this: var QToolBox; widget: ptr QWidget) {.
    importcpp: "setCurrentWidget", header: "qtoolbox.h".}
proc addItem*(this: var QToolBox; item: ptr QWidget; text: QString): cint {.
    importcpp: "addItem", header: "qtoolbox.h".}
proc addItem*(this: var QToolBox; item: ptr QWidget; iconSet: QIcon; text: QString): cint {.
    importcpp: "addItem", header: "qtoolbox.h".}
proc insertItem*(this: var QToolBox; index: cint; item: ptr QWidget; text: QString): cint {.
    importcpp: "insertItem", header: "qtoolbox.h".}
