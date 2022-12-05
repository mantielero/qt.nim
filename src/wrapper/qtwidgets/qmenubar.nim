import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(menubar)
discard "forward decl of QMenuBarPrivate"
discard "forward decl of QStyleOptionMenuItem"
discard "forward decl of QWindowsStyle"
discard "forward decl of QPlatformMenuBar"


proc constructQMenuBar*(parent: ptr QWidget = nil): QMenuBar {.constructor,
    importcpp: "QMenuBar(@)", header: "qmenubar.h".}
proc destroyQMenuBar*(this: var QMenuBar) {.importcpp: "#.~QMenuBar()",
                                        header: "qmenubar.h".}
## using statement

proc addAction*(this: var QMenuBar; text: QString): ptr QAction {.
    importcpp: "addAction", header: "qmenubar.h".}
proc addAction*(this: var QMenuBar; text: QString; receiver: ptr QObject; member: cstring): ptr QAction {.
    importcpp: "addAction", header: "qmenubar.h".}
proc addMenu*(this: var QMenuBar; menu: ptr QMenu): ptr QAction {.importcpp: "addMenu",
    header: "qmenubar.h".}
proc addMenu*(this: var QMenuBar; title: QString): ptr QMenu {.importcpp: "addMenu",
    header: "qmenubar.h".}
proc addMenu*(this: var QMenuBar; icon: QIcon; title: QString): ptr QMenu {.
    importcpp: "addMenu", header: "qmenubar.h".}
proc addSeparator*(this: var QMenuBar): ptr QAction {.importcpp: "addSeparator",
    header: "qmenubar.h".}
proc insertSeparator*(this: var QMenuBar; before: ptr QAction): ptr QAction {.
    importcpp: "insertSeparator", header: "qmenubar.h".}
proc insertMenu*(this: var QMenuBar; before: ptr QAction; menu: ptr QMenu): ptr QAction {.
    importcpp: "insertMenu", header: "qmenubar.h".}
proc clear*(this: var QMenuBar) {.importcpp: "clear", header: "qmenubar.h".}
proc activeAction*(this: QMenuBar): ptr QAction {.noSideEffect,
    importcpp: "activeAction", header: "qmenubar.h".}
proc setActiveAction*(this: var QMenuBar; action: ptr QAction) {.
    importcpp: "setActiveAction", header: "qmenubar.h".}
proc setDefaultUp*(this: var QMenuBar; a2: bool) {.importcpp: "setDefaultUp",
    header: "qmenubar.h".}
proc isDefaultUp*(this: QMenuBar): bool {.noSideEffect, importcpp: "isDefaultUp",
                                      header: "qmenubar.h".}
proc sizeHint*(this: QMenuBar): QSize {.noSideEffect, importcpp: "sizeHint",
                                    header: "qmenubar.h".}
proc minimumSizeHint*(this: QMenuBar): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qmenubar.h".}
proc heightForWidth*(this: QMenuBar; a2: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qmenubar.h".}
proc actionGeometry*(this: QMenuBar; a2: ptr QAction): QRect {.noSideEffect,
    importcpp: "actionGeometry", header: "qmenubar.h".}
proc actionAt*(this: QMenuBar; a2: QPoint): ptr QAction {.noSideEffect,
    importcpp: "actionAt", header: "qmenubar.h".}
proc setCornerWidget*(this: var QMenuBar; w: ptr QWidget;
                     corner: Corner = topRightCorner) {.
    importcpp: "setCornerWidget", header: "qmenubar.h".}
proc cornerWidget*(this: QMenuBar; corner: Corner = topRightCorner): ptr QWidget {.
    noSideEffect, importcpp: "cornerWidget", header: "qmenubar.h".}
when defined(q_Os_Macos) or defined(q_Clang_Qdoc):
  proc toNSMenu*(this: var QMenuBar): ptr NSMenu {.importcpp: "toNSMenu",
      header: "qmenubar.h".}
proc isNativeMenuBar*(this: QMenuBar): bool {.noSideEffect,
    importcpp: "isNativeMenuBar", header: "qmenubar.h".}
proc setNativeMenuBar*(this: var QMenuBar; nativeMenuBar: bool) {.
    importcpp: "setNativeMenuBar", header: "qmenubar.h".}
proc platformMenuBar*(this: var QMenuBar): ptr QPlatformMenuBar {.
    importcpp: "platformMenuBar", header: "qmenubar.h".}
proc setVisible*(this: var QMenuBar; visible: bool) {.importcpp: "setVisible",
    header: "qmenubar.h".}
