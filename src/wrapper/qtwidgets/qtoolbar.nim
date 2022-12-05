##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(toolbar)
discard "forward decl of QToolBarPrivate"
discard "forward decl of QAction"
discard "forward decl of QIcon"
discard "forward decl of QMainWindow"
discard "forward decl of QStyleOptionToolBar"
type
  QToolBar* {.importcpp: "QToolBar", header: "qtoolbar.h", bycopy.} = object of QWidget


proc constructQToolBar*(title: QString; parent: ptr QWidget = nil): QToolBar {.
    constructor, importcpp: "QToolBar(@)", header: "qtoolbar.h".}
proc constructQToolBar*(parent: ptr QWidget = nil): QToolBar {.constructor,
    importcpp: "QToolBar(@)", header: "qtoolbar.h".}
proc destroyQToolBar*(this: var QToolBar) {.importcpp: "#.~QToolBar()",
                                        header: "qtoolbar.h".}
proc setMovable*(this: var QToolBar; movable: bool) {.importcpp: "setMovable",
    header: "qtoolbar.h".}
proc isMovable*(this: QToolBar): bool {.noSideEffect, importcpp: "isMovable",
                                    header: "qtoolbar.h".}
proc setAllowedAreas*(this: var QToolBar; areas: ToolBarAreas) {.
    importcpp: "setAllowedAreas", header: "qtoolbar.h".}
proc allowedAreas*(this: QToolBar): ToolBarAreas {.noSideEffect,
    importcpp: "allowedAreas", header: "qtoolbar.h".}
proc isAreaAllowed*(this: QToolBar; area: ToolBarArea): bool {.noSideEffect,
    importcpp: "isAreaAllowed", header: "qtoolbar.h".}
proc setOrientation*(this: var QToolBar; orientation: Orientation) {.
    importcpp: "setOrientation", header: "qtoolbar.h".}
proc orientation*(this: QToolBar): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qtoolbar.h".}
proc clear*(this: var QToolBar) {.importcpp: "clear", header: "qtoolbar.h".}
## using statement

proc addAction*(this: var QToolBar; text: QString): ptr QAction {.
    importcpp: "addAction", header: "qtoolbar.h".}
proc addAction*(this: var QToolBar; icon: QIcon; text: QString): ptr QAction {.
    importcpp: "addAction", header: "qtoolbar.h".}
proc addAction*(this: var QToolBar; text: QString; receiver: ptr QObject; member: cstring): ptr QAction {.
    importcpp: "addAction", header: "qtoolbar.h".}
proc addAction*(this: var QToolBar; icon: QIcon; text: QString; receiver: ptr QObject;
               member: cstring): ptr QAction {.importcpp: "addAction",
    header: "qtoolbar.h".}
proc addSeparator*(this: var QToolBar): ptr QAction {.importcpp: "addSeparator",
    header: "qtoolbar.h".}
proc insertSeparator*(this: var QToolBar; before: ptr QAction): ptr QAction {.
    importcpp: "insertSeparator", header: "qtoolbar.h".}
proc addWidget*(this: var QToolBar; widget: ptr QWidget): ptr QAction {.
    importcpp: "addWidget", header: "qtoolbar.h".}
proc insertWidget*(this: var QToolBar; before: ptr QAction; widget: ptr QWidget): ptr QAction {.
    importcpp: "insertWidget", header: "qtoolbar.h".}
proc actionGeometry*(this: QToolBar; action: ptr QAction): QRect {.noSideEffect,
    importcpp: "actionGeometry", header: "qtoolbar.h".}
proc actionAt*(this: QToolBar; p: QPoint): ptr QAction {.noSideEffect,
    importcpp: "actionAt", header: "qtoolbar.h".}
proc actionAt*(this: QToolBar; x: cint; y: cint): ptr QAction {.noSideEffect,
    importcpp: "actionAt", header: "qtoolbar.h".}
proc toggleViewAction*(this: QToolBar): ptr QAction {.noSideEffect,
    importcpp: "toggleViewAction", header: "qtoolbar.h".}
proc iconSize*(this: QToolBar): QSize {.noSideEffect, importcpp: "iconSize",
                                    header: "qtoolbar.h".}
proc toolButtonStyle*(this: QToolBar): ToolButtonStyle {.noSideEffect,
    importcpp: "toolButtonStyle", header: "qtoolbar.h".}
proc widgetForAction*(this: QToolBar; action: ptr QAction): ptr QWidget {.noSideEffect,
    importcpp: "widgetForAction", header: "qtoolbar.h".}
proc isFloatable*(this: QToolBar): bool {.noSideEffect, importcpp: "isFloatable",
                                      header: "qtoolbar.h".}
proc setFloatable*(this: var QToolBar; floatable: bool) {.importcpp: "setFloatable",
    header: "qtoolbar.h".}
proc isFloating*(this: QToolBar): bool {.noSideEffect, importcpp: "isFloating",
                                     header: "qtoolbar.h".}
proc setIconSize*(this: var QToolBar; iconSize: QSize) {.importcpp: "setIconSize",
    header: "qtoolbar.h".}
proc setToolButtonStyle*(this: var QToolBar; toolButtonStyle: ToolButtonStyle) {.
    importcpp: "setToolButtonStyle", header: "qtoolbar.h".}
proc actionAt*(this: QToolBar; ax: cint; ay: cint): ptr QAction {.noSideEffect,
    importcpp: "actionAt", header: "qtoolbar.h".}