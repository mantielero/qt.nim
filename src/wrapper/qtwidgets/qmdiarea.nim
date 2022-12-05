import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(mdiarea)
discard "forward decl of QMdiSubWindow"
discard "forward decl of QMdiAreaPrivate"







proc constructQMdiArea*(parent: ptr QWidget = nil): QMdiArea {.constructor,
    importcpp: "QMdiArea(@)", header: "qmdiarea.h".}
proc destroyQMdiArea*(this: var QMdiArea) {.importcpp: "#.~QMdiArea()",
                                        header: "qmdiarea.h".}
proc sizeHint*(this: QMdiArea): QSize {.noSideEffect, importcpp: "sizeHint",
                                    header: "qmdiarea.h".}
proc minimumSizeHint*(this: QMdiArea): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qmdiarea.h".}
proc currentSubWindow*(this: QMdiArea): ptr QMdiSubWindow {.noSideEffect,
    importcpp: "currentSubWindow", header: "qmdiarea.h".}
proc activeSubWindow*(this: QMdiArea): ptr QMdiSubWindow {.noSideEffect,
    importcpp: "activeSubWindow", header: "qmdiarea.h".}
proc subWindowList*(this: QMdiArea; order: QMdiAreaWindowOrder = creationOrder): QList[
    ptr QMdiSubWindow] {.noSideEffect, importcpp: "subWindowList",
                       header: "qmdiarea.h".}
proc addSubWindow*(this: var QMdiArea; widget: ptr QWidget;
                  flags: WindowFlags = windowFlags()): ptr QMdiSubWindow {.
    importcpp: "addSubWindow", header: "qmdiarea.h".}
proc removeSubWindow*(this: var QMdiArea; widget: ptr QWidget) {.
    importcpp: "removeSubWindow", header: "qmdiarea.h".}
proc background*(this: QMdiArea): QBrush {.noSideEffect, importcpp: "background",
                                       header: "qmdiarea.h".}
proc setBackground*(this: var QMdiArea; background: QBrush) {.
    importcpp: "setBackground", header: "qmdiarea.h".}
proc activationOrder*(this: QMdiArea): QMdiAreaWindowOrder {.noSideEffect,
    importcpp: "activationOrder", header: "qmdiarea.h".}
proc setActivationOrder*(this: var QMdiArea; order: QMdiAreaWindowOrder) {.
    importcpp: "setActivationOrder", header: "qmdiarea.h".}
proc setOption*(this: var QMdiArea; option: QMdiAreaAreaOption; on: bool = true) {.
    importcpp: "setOption", header: "qmdiarea.h".}
proc testOption*(this: QMdiArea; opton: QMdiAreaAreaOption): bool {.noSideEffect,
    importcpp: "testOption", header: "qmdiarea.h".}
proc setViewMode*(this: var QMdiArea; mode: QMdiAreaViewMode) {.
    importcpp: "setViewMode", header: "qmdiarea.h".}
proc viewMode*(this: QMdiArea): QMdiAreaViewMode {.noSideEffect,
    importcpp: "viewMode", header: "qmdiarea.h".}
proc documentMode*(this: QMdiArea): bool {.noSideEffect, importcpp: "documentMode",
                                       header: "qmdiarea.h".}
proc setDocumentMode*(this: var QMdiArea; enabled: bool) {.
    importcpp: "setDocumentMode", header: "qmdiarea.h".}
proc setTabsClosable*(this: var QMdiArea; closable: bool) {.
    importcpp: "setTabsClosable", header: "qmdiarea.h".}
proc tabsClosable*(this: QMdiArea): bool {.noSideEffect, importcpp: "tabsClosable",
                                       header: "qmdiarea.h".}
proc setTabsMovable*(this: var QMdiArea; movable: bool) {.importcpp: "setTabsMovable",
    header: "qmdiarea.h".}
proc tabsMovable*(this: QMdiArea): bool {.noSideEffect, importcpp: "tabsMovable",
                                      header: "qmdiarea.h".}
proc setTabShape*(this: var QMdiArea; shape: TabShape) {.importcpp: "setTabShape",
    header: "qmdiarea.h".}
proc tabShape*(this: QMdiArea): TabShape {.noSideEffect, importcpp: "tabShape",
                                       header: "qmdiarea.h".}
proc setTabPosition*(this: var QMdiArea; position: TabPosition) {.
    importcpp: "setTabPosition", header: "qmdiarea.h".}
proc tabPosition*(this: QMdiArea): TabPosition {.noSideEffect,
    importcpp: "tabPosition", header: "qmdiarea.h".}
proc setActiveSubWindow*(this: var QMdiArea; window: ptr QMdiSubWindow) {.
    importcpp: "setActiveSubWindow", header: "qmdiarea.h".}
proc tileSubWindows*(this: var QMdiArea) {.importcpp: "tileSubWindows",
                                       header: "qmdiarea.h".}
proc cascadeSubWindows*(this: var QMdiArea) {.importcpp: "cascadeSubWindows",
    header: "qmdiarea.h".}
proc closeActiveSubWindow*(this: var QMdiArea) {.importcpp: "closeActiveSubWindow",
    header: "qmdiarea.h".}
proc closeAllSubWindows*(this: var QMdiArea) {.importcpp: "closeAllSubWindows",
    header: "qmdiarea.h".}
proc activateNextSubWindow*(this: var QMdiArea) {.
    importcpp: "activateNextSubWindow", header: "qmdiarea.h".}
proc activatePreviousSubWindow*(this: var QMdiArea) {.
    importcpp: "activatePreviousSubWindow", header: "qmdiarea.h".}
