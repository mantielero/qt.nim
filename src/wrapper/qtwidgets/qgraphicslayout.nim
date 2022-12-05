##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsLayoutPrivate"
discard "forward decl of QGraphicsLayoutItem"
discard "forward decl of QGraphicsWidget"
type
  QGraphicsLayout* {.importcpp: "QGraphicsLayout", header: "qgraphicslayout.h",
                    bycopy.} = object of QGraphicsLayoutItem


proc constructQGraphicsLayout*(parent: ptr QGraphicsLayoutItem = nil): QGraphicsLayout {.
    constructor, importcpp: "QGraphicsLayout(@)", header: "qgraphicslayout.h".}
proc destroyQGraphicsLayout*(this: var QGraphicsLayout) {.
    importcpp: "#.~QGraphicsLayout()", header: "qgraphicslayout.h".}
proc setContentsMargins*(this: var QGraphicsLayout; left: Qreal; top: Qreal;
                        right: Qreal; bottom: Qreal) {.
    importcpp: "setContentsMargins", header: "qgraphicslayout.h".}
proc getContentsMargins*(this: QGraphicsLayout; left: ptr Qreal; top: ptr Qreal;
                        right: ptr Qreal; bottom: ptr Qreal) {.noSideEffect,
    importcpp: "getContentsMargins", header: "qgraphicslayout.h".}
proc activate*(this: var QGraphicsLayout) {.importcpp: "activate",
                                        header: "qgraphicslayout.h".}
proc isActivated*(this: QGraphicsLayout): bool {.noSideEffect,
    importcpp: "isActivated", header: "qgraphicslayout.h".}
proc invalidate*(this: var QGraphicsLayout) {.importcpp: "invalidate",
    header: "qgraphicslayout.h".}
proc updateGeometry*(this: var QGraphicsLayout) {.importcpp: "updateGeometry",
    header: "qgraphicslayout.h".}
proc widgetEvent*(this: var QGraphicsLayout; e: ptr QEvent) {.importcpp: "widgetEvent",
    header: "qgraphicslayout.h".}
proc count*(this: QGraphicsLayout): cint {.noSideEffect, importcpp: "count",
                                       header: "qgraphicslayout.h".}
proc itemAt*(this: QGraphicsLayout; i: cint): ptr QGraphicsLayoutItem {.noSideEffect,
    importcpp: "itemAt", header: "qgraphicslayout.h".}
proc removeAt*(this: var QGraphicsLayout; index: cint) {.importcpp: "removeAt",
    header: "qgraphicslayout.h".}
proc setInstantInvalidatePropagation*(enable: bool) {.
    importcpp: "QGraphicsLayout::setInstantInvalidatePropagation(@)",
    header: "qgraphicslayout.h".}
proc instantInvalidatePropagation*(): bool {.
    importcpp: "QGraphicsLayout::instantInvalidatePropagation(@)",
    header: "qgraphicslayout.h".}