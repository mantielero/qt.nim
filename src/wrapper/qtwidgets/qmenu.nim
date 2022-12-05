##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

when defined(q_Os_Macos) or defined(q_Clang_Qdoc):
  q_Forward_Declare_Objc_Class(nSMenu)
qt_Require_Config(menu)
discard "forward decl of QMenuPrivate"
discard "forward decl of QStyleOptionMenuItem"
discard "forward decl of QPlatformMenu"
type
  QMenu* {.importcpp: "QMenu", header: "qmenu.h", bycopy.} = object of QWidget


proc constructQMenu*(parent: ptr QWidget = nil): QMenu {.constructor,
    importcpp: "QMenu(@)", header: "qmenu.h".}
proc constructQMenu*(title: QString; parent: ptr QWidget = nil): QMenu {.constructor,
    importcpp: "QMenu(@)", header: "qmenu.h".}
proc destroyQMenu*(this: var QMenu) {.importcpp: "#.~QMenu()", header: "qmenu.h".}
## using statement

proc addMenu*(this: var QMenu; menu: ptr QMenu): ptr QAction {.importcpp: "addMenu",
    header: "qmenu.h".}
proc addMenu*(this: var QMenu; title: QString): ptr QMenu {.importcpp: "addMenu",
    header: "qmenu.h".}
proc addMenu*(this: var QMenu; icon: QIcon; title: QString): ptr QMenu {.
    importcpp: "addMenu", header: "qmenu.h".}
proc addSeparator*(this: var QMenu): ptr QAction {.importcpp: "addSeparator",
    header: "qmenu.h".}
proc addSection*(this: var QMenu; text: QString): ptr QAction {.importcpp: "addSection",
    header: "qmenu.h".}
proc addSection*(this: var QMenu; icon: QIcon; text: QString): ptr QAction {.
    importcpp: "addSection", header: "qmenu.h".}
proc insertMenu*(this: var QMenu; before: ptr QAction; menu: ptr QMenu): ptr QAction {.
    importcpp: "insertMenu", header: "qmenu.h".}
proc insertSeparator*(this: var QMenu; before: ptr QAction): ptr QAction {.
    importcpp: "insertSeparator", header: "qmenu.h".}
proc insertSection*(this: var QMenu; before: ptr QAction; text: QString): ptr QAction {.
    importcpp: "insertSection", header: "qmenu.h".}
proc insertSection*(this: var QMenu; before: ptr QAction; icon: QIcon; text: QString): ptr QAction {.
    importcpp: "insertSection", header: "qmenu.h".}
proc isEmpty*(this: QMenu): bool {.noSideEffect, importcpp: "isEmpty",
                               header: "qmenu.h".}
proc clear*(this: var QMenu) {.importcpp: "clear", header: "qmenu.h".}
proc setTearOffEnabled*(this: var QMenu; a2: bool) {.importcpp: "setTearOffEnabled",
    header: "qmenu.h".}
proc isTearOffEnabled*(this: QMenu): bool {.noSideEffect,
                                        importcpp: "isTearOffEnabled",
                                        header: "qmenu.h".}
proc isTearOffMenuVisible*(this: QMenu): bool {.noSideEffect,
    importcpp: "isTearOffMenuVisible", header: "qmenu.h".}
proc showTearOffMenu*(this: var QMenu) {.importcpp: "showTearOffMenu",
                                     header: "qmenu.h".}
proc showTearOffMenu*(this: var QMenu; pos: QPoint) {.importcpp: "showTearOffMenu",
    header: "qmenu.h".}
proc hideTearOffMenu*(this: var QMenu) {.importcpp: "hideTearOffMenu",
                                     header: "qmenu.h".}
proc setDefaultAction*(this: var QMenu; a2: ptr QAction) {.
    importcpp: "setDefaultAction", header: "qmenu.h".}
proc defaultAction*(this: QMenu): ptr QAction {.noSideEffect,
    importcpp: "defaultAction", header: "qmenu.h".}
proc setActiveAction*(this: var QMenu; act: ptr QAction) {.
    importcpp: "setActiveAction", header: "qmenu.h".}
proc activeAction*(this: QMenu): ptr QAction {.noSideEffect,
    importcpp: "activeAction", header: "qmenu.h".}
proc popup*(this: var QMenu; pos: QPoint; at: ptr QAction = nil) {.importcpp: "popup",
    header: "qmenu.h".}
proc exec*(this: var QMenu): ptr QAction {.importcpp: "exec", header: "qmenu.h".}
proc exec*(this: var QMenu; pos: QPoint; at: ptr QAction = nil): ptr QAction {.
    importcpp: "exec", header: "qmenu.h".}
proc exec*(actions: QList[ptr QAction]; pos: QPoint; at: ptr QAction = nil;
          parent: ptr QWidget = nil): ptr QAction {.importcpp: "QMenu::exec(@)",
    header: "qmenu.h".}
proc sizeHint*(this: QMenu): QSize {.noSideEffect, importcpp: "sizeHint",
                                 header: "qmenu.h".}
proc actionGeometry*(this: QMenu; a2: ptr QAction): QRect {.noSideEffect,
    importcpp: "actionGeometry", header: "qmenu.h".}
proc actionAt*(this: QMenu; a2: QPoint): ptr QAction {.noSideEffect,
    importcpp: "actionAt", header: "qmenu.h".}
proc menuAction*(this: QMenu): ptr QAction {.noSideEffect, importcpp: "menuAction",
                                        header: "qmenu.h".}
proc menuInAction*(action: ptr QAction): ptr QMenu {.
    importcpp: "QMenu::menuInAction(@)", header: "qmenu.h".}
proc title*(this: QMenu): QString {.noSideEffect, importcpp: "title", header: "qmenu.h".}
proc setTitle*(this: var QMenu; title: QString) {.importcpp: "setTitle",
    header: "qmenu.h".}
proc icon*(this: QMenu): QIcon {.noSideEffect, importcpp: "icon", header: "qmenu.h".}
proc setIcon*(this: var QMenu; icon: QIcon) {.importcpp: "setIcon", header: "qmenu.h".}
proc setNoReplayFor*(this: var QMenu; widget: ptr QWidget) {.
    importcpp: "setNoReplayFor", header: "qmenu.h".}
proc platformMenu*(this: var QMenu): ptr QPlatformMenu {.importcpp: "platformMenu",
    header: "qmenu.h".}
proc setPlatformMenu*(this: var QMenu; platformMenu: ptr QPlatformMenu) {.
    importcpp: "setPlatformMenu", header: "qmenu.h".}
when defined(q_Os_Macos) or defined(q_Clang_Qdoc):
  proc toNSMenu*(this: var QMenu): ptr NSMenu {.importcpp: "toNSMenu", header: "qmenu.h".}
when defined(q_Os_Macos) or defined(q_Clang_Qdoc):
  proc setAsDockMenu*(this: var QMenu) {.importcpp: "setAsDockMenu", header: "qmenu.h".}
proc separatorsCollapsible*(this: QMenu): bool {.noSideEffect,
    importcpp: "separatorsCollapsible", header: "qmenu.h".}
proc setSeparatorsCollapsible*(this: var QMenu; collapse: bool) {.
    importcpp: "setSeparatorsCollapsible", header: "qmenu.h".}
proc toolTipsVisible*(this: QMenu): bool {.noSideEffect,
                                       importcpp: "toolTipsVisible",
                                       header: "qmenu.h".}
proc setToolTipsVisible*(this: var QMenu; visible: bool) {.
    importcpp: "setToolTipsVisible", header: "qmenu.h".}