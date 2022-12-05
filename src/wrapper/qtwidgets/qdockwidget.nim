##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(dockwidget)
discard "forward decl of QDockAreaLayout"
discard "forward decl of QDockWidgetPrivate"
discard "forward decl of QMainWindow"
discard "forward decl of QStyleOptionDockWidget"
type
  QDockWidget* {.importcpp: "QDockWidget", header: "qdockwidget.h", bycopy.} = object of QWidget
    dockWidgetFeatures* {.importc: "DockWidgetFeatures".}: Q_Flag


proc constructQDockWidget*(title: QString; parent: ptr QWidget = nil;
                          flags: WindowFlags = windowFlags()): QDockWidget {.
    constructor, importcpp: "QDockWidget(@)", header: "qdockwidget.h".}
proc constructQDockWidget*(parent: ptr QWidget = nil;
                          flags: WindowFlags = windowFlags()): QDockWidget {.
    constructor, importcpp: "QDockWidget(@)", header: "qdockwidget.h".}
proc destroyQDockWidget*(this: var QDockWidget) {.importcpp: "#.~QDockWidget()",
    header: "qdockwidget.h".}
proc widget*(this: QDockWidget): ptr QWidget {.noSideEffect, importcpp: "widget",
    header: "qdockwidget.h".}
proc setWidget*(this: var QDockWidget; widget: ptr QWidget) {.importcpp: "setWidget",
    header: "qdockwidget.h".}
type
  QDockWidgetDockWidgetFeature* {.size: sizeof(cint),
                                 importcpp: "QDockWidget::DockWidgetFeature",
                                 header: "qdockwidget.h".} = enum
    NoDockWidgetFeatures = 0x00, DockWidgetClosable = 0x01, DockWidgetMovable = 0x02,
    DockWidgetFloatable = 0x04, DockWidgetVerticalTitleBar = 0x08,
    DockWidgetFeatureMask = 0x0f, Reserved = 0xff


proc setFeatures*(this: var QDockWidget; features: DockWidgetFeatures) {.
    importcpp: "setFeatures", header: "qdockwidget.h".}
proc features*(this: QDockWidget): DockWidgetFeatures {.noSideEffect,
    importcpp: "features", header: "qdockwidget.h".}
proc setFloating*(this: var QDockWidget; floating: bool) {.importcpp: "setFloating",
    header: "qdockwidget.h".}
proc isFloating*(this: QDockWidget): bool {.noSideEffect, importcpp: "isFloating",
                                        header: "qdockwidget.h".}
proc setAllowedAreas*(this: var QDockWidget; areas: DockWidgetAreas) {.
    importcpp: "setAllowedAreas", header: "qdockwidget.h".}
proc allowedAreas*(this: QDockWidget): DockWidgetAreas {.noSideEffect,
    importcpp: "allowedAreas", header: "qdockwidget.h".}
proc setTitleBarWidget*(this: var QDockWidget; widget: ptr QWidget) {.
    importcpp: "setTitleBarWidget", header: "qdockwidget.h".}
proc titleBarWidget*(this: QDockWidget): ptr QWidget {.noSideEffect,
    importcpp: "titleBarWidget", header: "qdockwidget.h".}
proc isAreaAllowed*(this: QDockWidget; area: DockWidgetArea): bool {.noSideEffect,
    importcpp: "isAreaAllowed", header: "qdockwidget.h".}
proc toggleViewAction*(this: QDockWidget): ptr QAction {.noSideEffect,
    importcpp: "toggleViewAction", header: "qdockwidget.h".}