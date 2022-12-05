import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(mainwindow)
discard "forward decl of QDockWidget"
discard "forward decl of QMainWindowPrivate"
discard "forward decl of QMenuBar"
discard "forward decl of QStatusBar"
discard "forward decl of QToolBar"
discard "forward decl of QMenu"



proc constructQMainWindow*(parent: ptr QWidget = nil;
                          flags: WindowFlags = windowFlags()): QMainWindow {.
    constructor, importcpp: "QMainWindow(@)", header: "qmainwindow.h".}
proc destroyQMainWindow*(this: var QMainWindow) {.importcpp: "#.~QMainWindow()",
    header: "qmainwindow.h".}
proc iconSize*(this: QMainWindow): QSize {.noSideEffect, importcpp: "iconSize",
                                       header: "qmainwindow.h".}
proc setIconSize*(this: var QMainWindow; iconSize: QSize) {.importcpp: "setIconSize",
    header: "qmainwindow.h".}
proc toolButtonStyle*(this: QMainWindow): ToolButtonStyle {.noSideEffect,
    importcpp: "toolButtonStyle", header: "qmainwindow.h".}
proc setToolButtonStyle*(this: var QMainWindow; toolButtonStyle: ToolButtonStyle) {.
    importcpp: "setToolButtonStyle", header: "qmainwindow.h".}
proc isAnimated*(this: QMainWindow): bool {.noSideEffect, importcpp: "isAnimated",
                                        header: "qmainwindow.h".}
proc isDockNestingEnabled*(this: QMainWindow): bool {.noSideEffect,
    importcpp: "isDockNestingEnabled", header: "qmainwindow.h".}
proc documentMode*(this: QMainWindow): bool {.noSideEffect,
    importcpp: "documentMode", header: "qmainwindow.h".}
proc setDocumentMode*(this: var QMainWindow; enabled: bool) {.
    importcpp: "setDocumentMode", header: "qmainwindow.h".}
proc tabShape*(this: QMainWindow): TabShape {.noSideEffect, importcpp: "tabShape",
    header: "qmainwindow.h".}
proc setTabShape*(this: var QMainWindow; tabShape: TabShape) {.
    importcpp: "setTabShape", header: "qmainwindow.h".}
proc tabPosition*(this: QMainWindow; area: DockWidgetArea): TabPosition {.
    noSideEffect, importcpp: "tabPosition", header: "qmainwindow.h".}
proc setTabPosition*(this: var QMainWindow; areas: DockWidgetAreas;
                    tabPosition: TabPosition) {.importcpp: "setTabPosition",
    header: "qmainwindow.h".}
proc setDockOptions*(this: var QMainWindow; options: DockOptions) {.
    importcpp: "setDockOptions", header: "qmainwindow.h".}
proc dockOptions*(this: QMainWindow): DockOptions {.noSideEffect,
    importcpp: "dockOptions", header: "qmainwindow.h".}
proc isSeparator*(this: QMainWindow; pos: QPoint): bool {.noSideEffect,
    importcpp: "isSeparator", header: "qmainwindow.h".}
proc menuBar*(this: QMainWindow): ptr QMenuBar {.noSideEffect, importcpp: "menuBar",
    header: "qmainwindow.h".}
proc setMenuBar*(this: var QMainWindow; menubar: ptr QMenuBar) {.
    importcpp: "setMenuBar", header: "qmainwindow.h".}
proc menuWidget*(this: QMainWindow): ptr QWidget {.noSideEffect,
    importcpp: "menuWidget", header: "qmainwindow.h".}
proc setMenuWidget*(this: var QMainWindow; menubar: ptr QWidget) {.
    importcpp: "setMenuWidget", header: "qmainwindow.h".}
proc statusBar*(this: QMainWindow): ptr QStatusBar {.noSideEffect,
    importcpp: "statusBar", header: "qmainwindow.h".}
proc setStatusBar*(this: var QMainWindow; statusbar: ptr QStatusBar) {.
    importcpp: "setStatusBar", header: "qmainwindow.h".}
proc centralWidget*(this: QMainWindow): ptr QWidget {.noSideEffect,
    importcpp: "centralWidget", header: "qmainwindow.h".}
proc setCentralWidget*(this: var QMainWindow; widget: ptr QWidget) {.
    importcpp: "setCentralWidget", header: "qmainwindow.h".}
proc takeCentralWidget*(this: var QMainWindow): ptr QWidget {.
    importcpp: "takeCentralWidget", header: "qmainwindow.h".}
proc setCorner*(this: var QMainWindow; corner: Corner; area: DockWidgetArea) {.
    importcpp: "setCorner", header: "qmainwindow.h".}
proc corner*(this: QMainWindow; corner: Corner): DockWidgetArea {.noSideEffect,
    importcpp: "corner", header: "qmainwindow.h".}
proc addToolBarBreak*(this: var QMainWindow; area: ToolBarArea = topToolBarArea) {.
    importcpp: "addToolBarBreak", header: "qmainwindow.h".}
proc insertToolBarBreak*(this: var QMainWindow; before: ptr QToolBar) {.
    importcpp: "insertToolBarBreak", header: "qmainwindow.h".}
proc addToolBar*(this: var QMainWindow; area: ToolBarArea; toolbar: ptr QToolBar) {.
    importcpp: "addToolBar", header: "qmainwindow.h".}
proc addToolBar*(this: var QMainWindow; toolbar: ptr QToolBar) {.
    importcpp: "addToolBar", header: "qmainwindow.h".}
proc addToolBar*(this: var QMainWindow; title: QString): ptr QToolBar {.
    importcpp: "addToolBar", header: "qmainwindow.h".}
proc insertToolBar*(this: var QMainWindow; before: ptr QToolBar; toolbar: ptr QToolBar) {.
    importcpp: "insertToolBar", header: "qmainwindow.h".}
proc removeToolBar*(this: var QMainWindow; toolbar: ptr QToolBar) {.
    importcpp: "removeToolBar", header: "qmainwindow.h".}
proc removeToolBarBreak*(this: var QMainWindow; before: ptr QToolBar) {.
    importcpp: "removeToolBarBreak", header: "qmainwindow.h".}
proc unifiedTitleAndToolBarOnMac*(this: QMainWindow): bool {.noSideEffect,
    importcpp: "unifiedTitleAndToolBarOnMac", header: "qmainwindow.h".}
proc toolBarArea*(this: QMainWindow; toolbar: ptr QToolBar): ToolBarArea {.
    noSideEffect, importcpp: "toolBarArea", header: "qmainwindow.h".}
proc toolBarBreak*(this: QMainWindow; toolbar: ptr QToolBar): bool {.noSideEffect,
    importcpp: "toolBarBreak", header: "qmainwindow.h".}
proc saveState*(this: QMainWindow; version: cint = 0): QByteArray {.noSideEffect,
    importcpp: "saveState", header: "qmainwindow.h".}
proc restoreState*(this: var QMainWindow; state: QByteArray; version: cint = 0): bool {.
    importcpp: "restoreState", header: "qmainwindow.h".}
proc createPopupMenu*(this: var QMainWindow): ptr QMenu {.
    importcpp: "createPopupMenu", header: "qmainwindow.h".}
proc setAnimated*(this: var QMainWindow; enabled: bool) {.importcpp: "setAnimated",
    header: "qmainwindow.h".}
proc setDockNestingEnabled*(this: var QMainWindow; enabled: bool) {.
    importcpp: "setDockNestingEnabled", header: "qmainwindow.h".}
proc setUnifiedTitleAndToolBarOnMac*(this: var QMainWindow; set: bool) {.
    importcpp: "setUnifiedTitleAndToolBarOnMac", header: "qmainwindow.h".}
