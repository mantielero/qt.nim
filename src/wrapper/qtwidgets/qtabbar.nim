import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(tabbar)
discard "forward decl of QIcon"
discard "forward decl of QTabBarPrivate"
discard "forward decl of QStyleOptionTab"


proc constructQTabBar*(parent: ptr QWidget = nil): QTabBar {.constructor,
    importcpp: "QTabBar(@)", header: "qtabbar.h".}
proc destroyQTabBar*(this: var QTabBar) {.importcpp: "#.~QTabBar()",
                                      header: "qtabbar.h".}






proc shape*(this: QTabBar): QTabBarShape {.noSideEffect, importcpp: "shape",
                                       header: "qtabbar.h".}
proc setShape*(this: var QTabBar; shape: QTabBarShape) {.importcpp: "setShape",
    header: "qtabbar.h".}
proc addTab*(this: var QTabBar; text: QString): cint {.importcpp: "addTab",
    header: "qtabbar.h".}
proc addTab*(this: var QTabBar; icon: QIcon; text: QString): cint {.importcpp: "addTab",
    header: "qtabbar.h".}
proc insertTab*(this: var QTabBar; index: cint; text: QString): cint {.
    importcpp: "insertTab", header: "qtabbar.h".}
proc insertTab*(this: var QTabBar; index: cint; icon: QIcon; text: QString): cint {.
    importcpp: "insertTab", header: "qtabbar.h".}
proc removeTab*(this: var QTabBar; index: cint) {.importcpp: "removeTab",
    header: "qtabbar.h".}
proc moveTab*(this: var QTabBar; `from`: cint; to: cint) {.importcpp: "moveTab",
    header: "qtabbar.h".}
proc isTabEnabled*(this: QTabBar; index: cint): bool {.noSideEffect,
    importcpp: "isTabEnabled", header: "qtabbar.h".}
proc setTabEnabled*(this: var QTabBar; index: cint; enabled: bool) {.
    importcpp: "setTabEnabled", header: "qtabbar.h".}
proc isTabVisible*(this: QTabBar; index: cint): bool {.noSideEffect,
    importcpp: "isTabVisible", header: "qtabbar.h".}
proc setTabVisible*(this: var QTabBar; index: cint; visible: bool) {.
    importcpp: "setTabVisible", header: "qtabbar.h".}
proc tabText*(this: QTabBar; index: cint): QString {.noSideEffect,
    importcpp: "tabText", header: "qtabbar.h".}
proc setTabText*(this: var QTabBar; index: cint; text: QString) {.
    importcpp: "setTabText", header: "qtabbar.h".}
proc tabTextColor*(this: QTabBar; index: cint): QColor {.noSideEffect,
    importcpp: "tabTextColor", header: "qtabbar.h".}
proc setTabTextColor*(this: var QTabBar; index: cint; color: QColor) {.
    importcpp: "setTabTextColor", header: "qtabbar.h".}
proc tabIcon*(this: QTabBar; index: cint): QIcon {.noSideEffect, importcpp: "tabIcon",
    header: "qtabbar.h".}
proc setTabIcon*(this: var QTabBar; index: cint; icon: QIcon) {.importcpp: "setTabIcon",
    header: "qtabbar.h".}
proc elideMode*(this: QTabBar): TextElideMode {.noSideEffect, importcpp: "elideMode",
    header: "qtabbar.h".}
proc setElideMode*(this: var QTabBar; mode: TextElideMode) {.
    importcpp: "setElideMode", header: "qtabbar.h".}
proc setTabToolTip*(this: var QTabBar; index: cint; tip: QString) {.
    importcpp: "setTabToolTip", header: "qtabbar.h".}
proc tabToolTip*(this: QTabBar; index: cint): QString {.noSideEffect,
    importcpp: "tabToolTip", header: "qtabbar.h".}
proc setTabWhatsThis*(this: var QTabBar; index: cint; text: QString) {.
    importcpp: "setTabWhatsThis", header: "qtabbar.h".}
proc tabWhatsThis*(this: QTabBar; index: cint): QString {.noSideEffect,
    importcpp: "tabWhatsThis", header: "qtabbar.h".}
proc setTabData*(this: var QTabBar; index: cint; data: QVariant) {.
    importcpp: "setTabData", header: "qtabbar.h".}
proc tabData*(this: QTabBar; index: cint): QVariant {.noSideEffect,
    importcpp: "tabData", header: "qtabbar.h".}
proc tabRect*(this: QTabBar; index: cint): QRect {.noSideEffect, importcpp: "tabRect",
    header: "qtabbar.h".}
proc tabAt*(this: QTabBar; pos: QPoint): cint {.noSideEffect, importcpp: "tabAt",
    header: "qtabbar.h".}
proc currentIndex*(this: QTabBar): cint {.noSideEffect, importcpp: "currentIndex",
                                      header: "qtabbar.h".}
proc count*(this: QTabBar): cint {.noSideEffect, importcpp: "count",
                               header: "qtabbar.h".}
proc sizeHint*(this: QTabBar): QSize {.noSideEffect, importcpp: "sizeHint",
                                   header: "qtabbar.h".}
proc minimumSizeHint*(this: QTabBar): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qtabbar.h".}
proc setDrawBase*(this: var QTabBar; drawTheBase: bool) {.importcpp: "setDrawBase",
    header: "qtabbar.h".}
proc drawBase*(this: QTabBar): bool {.noSideEffect, importcpp: "drawBase",
                                  header: "qtabbar.h".}
proc iconSize*(this: QTabBar): QSize {.noSideEffect, importcpp: "iconSize",
                                   header: "qtabbar.h".}
proc setIconSize*(this: var QTabBar; size: QSize) {.importcpp: "setIconSize",
    header: "qtabbar.h".}
proc usesScrollButtons*(this: QTabBar): bool {.noSideEffect,
    importcpp: "usesScrollButtons", header: "qtabbar.h".}
proc setUsesScrollButtons*(this: var QTabBar; useButtons: bool) {.
    importcpp: "setUsesScrollButtons", header: "qtabbar.h".}
proc tabsClosable*(this: QTabBar): bool {.noSideEffect, importcpp: "tabsClosable",
                                      header: "qtabbar.h".}
proc setTabsClosable*(this: var QTabBar; closable: bool) {.
    importcpp: "setTabsClosable", header: "qtabbar.h".}
proc setTabButton*(this: var QTabBar; index: cint; position: QTabBarButtonPosition;
                  widget: ptr QWidget) {.importcpp: "setTabButton",
                                      header: "qtabbar.h".}
proc tabButton*(this: QTabBar; index: cint; position: QTabBarButtonPosition): ptr QWidget {.
    noSideEffect, importcpp: "tabButton", header: "qtabbar.h".}
proc selectionBehaviorOnRemove*(this: QTabBar): QTabBarSelectionBehavior {.
    noSideEffect, importcpp: "selectionBehaviorOnRemove", header: "qtabbar.h".}
proc setSelectionBehaviorOnRemove*(this: var QTabBar;
                                  behavior: QTabBarSelectionBehavior) {.
    importcpp: "setSelectionBehaviorOnRemove", header: "qtabbar.h".}
proc expanding*(this: QTabBar): bool {.noSideEffect, importcpp: "expanding",
                                   header: "qtabbar.h".}
proc setExpanding*(this: var QTabBar; enabled: bool) {.importcpp: "setExpanding",
    header: "qtabbar.h".}
proc isMovable*(this: QTabBar): bool {.noSideEffect, importcpp: "isMovable",
                                   header: "qtabbar.h".}
proc setMovable*(this: var QTabBar; movable: bool) {.importcpp: "setMovable",
    header: "qtabbar.h".}
proc documentMode*(this: QTabBar): bool {.noSideEffect, importcpp: "documentMode",
                                      header: "qtabbar.h".}
proc setDocumentMode*(this: var QTabBar; set: bool) {.importcpp: "setDocumentMode",
    header: "qtabbar.h".}
proc autoHide*(this: QTabBar): bool {.noSideEffect, importcpp: "autoHide",
                                  header: "qtabbar.h".}
proc setAutoHide*(this: var QTabBar; hide: bool) {.importcpp: "setAutoHide",
    header: "qtabbar.h".}
proc changeCurrentOnDrag*(this: QTabBar): bool {.noSideEffect,
    importcpp: "changeCurrentOnDrag", header: "qtabbar.h".}
proc setChangeCurrentOnDrag*(this: var QTabBar; change: bool) {.
    importcpp: "setChangeCurrentOnDrag", header: "qtabbar.h".}
proc accessibleTabName*(this: QTabBar; index: cint): QString {.noSideEffect,
    importcpp: "accessibleTabName", header: "qtabbar.h".}
proc setAccessibleTabName*(this: var QTabBar; index: cint; name: QString) {.
    importcpp: "setAccessibleTabName", header: "qtabbar.h".}
proc setCurrentIndex*(this: var QTabBar; index: cint) {.importcpp: "setCurrentIndex",
    header: "qtabbar.h".}
