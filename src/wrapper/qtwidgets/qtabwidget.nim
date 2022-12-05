import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(tabwidget)
discard "forward decl of QTabBar"
discard "forward decl of QTabWidgetPrivate"
discard "forward decl of QStyleOptionTabWidgetFrame"


proc constructQTabWidget*(parent: ptr QWidget = nil): QTabWidget {.constructor,
    importcpp: "QTabWidget(@)", header: "qtabwidget.h".}
proc destroyQTabWidget*(this: var QTabWidget) {.importcpp: "#.~QTabWidget()",
    header: "qtabwidget.h".}
proc addTab*(this: var QTabWidget; widget: ptr QWidget; a3: QString): cint {.
    importcpp: "addTab", header: "qtabwidget.h".}
proc addTab*(this: var QTabWidget; widget: ptr QWidget; icon: QIcon; label: QString): cint {.
    importcpp: "addTab", header: "qtabwidget.h".}
proc insertTab*(this: var QTabWidget; index: cint; widget: ptr QWidget; a4: QString): cint {.
    importcpp: "insertTab", header: "qtabwidget.h".}
proc insertTab*(this: var QTabWidget; index: cint; widget: ptr QWidget; icon: QIcon;
               label: QString): cint {.importcpp: "insertTab", header: "qtabwidget.h".}
proc removeTab*(this: var QTabWidget; index: cint) {.importcpp: "removeTab",
    header: "qtabwidget.h".}
proc isTabEnabled*(this: QTabWidget; index: cint): bool {.noSideEffect,
    importcpp: "isTabEnabled", header: "qtabwidget.h".}
proc setTabEnabled*(this: var QTabWidget; index: cint; enabled: bool) {.
    importcpp: "setTabEnabled", header: "qtabwidget.h".}
proc isTabVisible*(this: QTabWidget; index: cint): bool {.noSideEffect,
    importcpp: "isTabVisible", header: "qtabwidget.h".}
proc setTabVisible*(this: var QTabWidget; index: cint; visible: bool) {.
    importcpp: "setTabVisible", header: "qtabwidget.h".}
proc tabText*(this: QTabWidget; index: cint): QString {.noSideEffect,
    importcpp: "tabText", header: "qtabwidget.h".}
proc setTabText*(this: var QTabWidget; index: cint; text: QString) {.
    importcpp: "setTabText", header: "qtabwidget.h".}
proc tabIcon*(this: QTabWidget; index: cint): QIcon {.noSideEffect,
    importcpp: "tabIcon", header: "qtabwidget.h".}
proc setTabIcon*(this: var QTabWidget; index: cint; icon: QIcon) {.
    importcpp: "setTabIcon", header: "qtabwidget.h".}
proc setTabToolTip*(this: var QTabWidget; index: cint; tip: QString) {.
    importcpp: "setTabToolTip", header: "qtabwidget.h".}
proc tabToolTip*(this: QTabWidget; index: cint): QString {.noSideEffect,
    importcpp: "tabToolTip", header: "qtabwidget.h".}
proc setTabWhatsThis*(this: var QTabWidget; index: cint; text: QString) {.
    importcpp: "setTabWhatsThis", header: "qtabwidget.h".}
proc tabWhatsThis*(this: QTabWidget; index: cint): QString {.noSideEffect,
    importcpp: "tabWhatsThis", header: "qtabwidget.h".}
proc currentIndex*(this: QTabWidget): cint {.noSideEffect, importcpp: "currentIndex",
    header: "qtabwidget.h".}
proc currentWidget*(this: QTabWidget): ptr QWidget {.noSideEffect,
    importcpp: "currentWidget", header: "qtabwidget.h".}
proc widget*(this: QTabWidget; index: cint): ptr QWidget {.noSideEffect,
    importcpp: "widget", header: "qtabwidget.h".}
proc indexOf*(this: QTabWidget; widget: ptr QWidget): cint {.noSideEffect,
    importcpp: "indexOf", header: "qtabwidget.h".}
proc count*(this: QTabWidget): cint {.noSideEffect, importcpp: "count",
                                  header: "qtabwidget.h".}


proc tabPosition*(this: QTabWidget): QTabWidgetTabPosition {.noSideEffect,
    importcpp: "tabPosition", header: "qtabwidget.h".}
proc setTabPosition*(this: var QTabWidget; position: QTabWidgetTabPosition) {.
    importcpp: "setTabPosition", header: "qtabwidget.h".}
proc tabsClosable*(this: QTabWidget): bool {.noSideEffect, importcpp: "tabsClosable",
    header: "qtabwidget.h".}
proc setTabsClosable*(this: var QTabWidget; closeable: bool) {.
    importcpp: "setTabsClosable", header: "qtabwidget.h".}
proc isMovable*(this: QTabWidget): bool {.noSideEffect, importcpp: "isMovable",
                                      header: "qtabwidget.h".}
proc setMovable*(this: var QTabWidget; movable: bool) {.importcpp: "setMovable",
    header: "qtabwidget.h".}


proc tabShape*(this: QTabWidget): QTabWidgetTabShape {.noSideEffect,
    importcpp: "tabShape", header: "qtabwidget.h".}
proc setTabShape*(this: var QTabWidget; s: QTabWidgetTabShape) {.
    importcpp: "setTabShape", header: "qtabwidget.h".}
proc sizeHint*(this: QTabWidget): QSize {.noSideEffect, importcpp: "sizeHint",
                                      header: "qtabwidget.h".}
proc minimumSizeHint*(this: QTabWidget): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qtabwidget.h".}
proc heightForWidth*(this: QTabWidget; width: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qtabwidget.h".}
proc hasHeightForWidth*(this: QTabWidget): bool {.noSideEffect,
    importcpp: "hasHeightForWidth", header: "qtabwidget.h".}
proc setCornerWidget*(this: var QTabWidget; w: ptr QWidget;
                     corner: Corner = topRightCorner) {.
    importcpp: "setCornerWidget", header: "qtabwidget.h".}
proc cornerWidget*(this: QTabWidget; corner: Corner = topRightCorner): ptr QWidget {.
    noSideEffect, importcpp: "cornerWidget", header: "qtabwidget.h".}
proc elideMode*(this: QTabWidget): TextElideMode {.noSideEffect,
    importcpp: "elideMode", header: "qtabwidget.h".}
proc setElideMode*(this: var QTabWidget; mode: TextElideMode) {.
    importcpp: "setElideMode", header: "qtabwidget.h".}
proc iconSize*(this: QTabWidget): QSize {.noSideEffect, importcpp: "iconSize",
                                      header: "qtabwidget.h".}
proc setIconSize*(this: var QTabWidget; size: QSize) {.importcpp: "setIconSize",
    header: "qtabwidget.h".}
proc usesScrollButtons*(this: QTabWidget): bool {.noSideEffect,
    importcpp: "usesScrollButtons", header: "qtabwidget.h".}
proc setUsesScrollButtons*(this: var QTabWidget; useButtons: bool) {.
    importcpp: "setUsesScrollButtons", header: "qtabwidget.h".}
proc documentMode*(this: QTabWidget): bool {.noSideEffect, importcpp: "documentMode",
    header: "qtabwidget.h".}
proc setDocumentMode*(this: var QTabWidget; set: bool) {.importcpp: "setDocumentMode",
    header: "qtabwidget.h".}
proc tabBarAutoHide*(this: QTabWidget): bool {.noSideEffect,
    importcpp: "tabBarAutoHide", header: "qtabwidget.h".}
proc setTabBarAutoHide*(this: var QTabWidget; enabled: bool) {.
    importcpp: "setTabBarAutoHide", header: "qtabwidget.h".}
proc clear*(this: var QTabWidget) {.importcpp: "clear", header: "qtabwidget.h".}
proc tabBar*(this: QTabWidget): ptr QTabBar {.noSideEffect, importcpp: "tabBar",
    header: "qtabwidget.h".}
proc setCurrentIndex*(this: var QTabWidget; index: cint) {.
    importcpp: "setCurrentIndex", header: "qtabwidget.h".}
proc setCurrentWidget*(this: var QTabWidget; widget: ptr QWidget) {.
    importcpp: "setCurrentWidget", header: "qtabwidget.h".}
