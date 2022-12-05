##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsLayoutItemPrivate"
discard "forward decl of QGraphicsItem"
type
  QGraphicsLayoutItem* {.importcpp: "QGraphicsLayoutItem",
                        header: "qgraphicslayoutitem.h", bycopy.} = object


proc constructQGraphicsLayoutItem*(parent: ptr QGraphicsLayoutItem = nil;
                                  isLayout: bool = false): QGraphicsLayoutItem {.
    constructor, importcpp: "QGraphicsLayoutItem(@)",
    header: "qgraphicslayoutitem.h".}
proc destroyQGraphicsLayoutItem*(this: var QGraphicsLayoutItem) {.
    importcpp: "#.~QGraphicsLayoutItem()", header: "qgraphicslayoutitem.h".}
proc setSizePolicy*(this: var QGraphicsLayoutItem; policy: QSizePolicy) {.
    importcpp: "setSizePolicy", header: "qgraphicslayoutitem.h".}
proc setSizePolicy*(this: var QGraphicsLayoutItem; hPolicy: Policy; vPolicy: Policy;
                   controlType: ControlType = defaultType) {.
    importcpp: "setSizePolicy", header: "qgraphicslayoutitem.h".}
proc sizePolicy*(this: QGraphicsLayoutItem): QSizePolicy {.noSideEffect,
    importcpp: "sizePolicy", header: "qgraphicslayoutitem.h".}
proc setMinimumSize*(this: var QGraphicsLayoutItem; size: QSizeF) {.
    importcpp: "setMinimumSize", header: "qgraphicslayoutitem.h".}
proc setMinimumSize*(this: var QGraphicsLayoutItem; w: Qreal; h: Qreal) {.
    importcpp: "setMinimumSize", header: "qgraphicslayoutitem.h".}
proc minimumSize*(this: QGraphicsLayoutItem): QSizeF {.noSideEffect,
    importcpp: "minimumSize", header: "qgraphicslayoutitem.h".}
proc setMinimumWidth*(this: var QGraphicsLayoutItem; width: Qreal) {.
    importcpp: "setMinimumWidth", header: "qgraphicslayoutitem.h".}
proc minimumWidth*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "minimumWidth", header: "qgraphicslayoutitem.h".}
proc setMinimumHeight*(this: var QGraphicsLayoutItem; height: Qreal) {.
    importcpp: "setMinimumHeight", header: "qgraphicslayoutitem.h".}
proc minimumHeight*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "minimumHeight", header: "qgraphicslayoutitem.h".}
proc setPreferredSize*(this: var QGraphicsLayoutItem; size: QSizeF) {.
    importcpp: "setPreferredSize", header: "qgraphicslayoutitem.h".}
proc setPreferredSize*(this: var QGraphicsLayoutItem; w: Qreal; h: Qreal) {.
    importcpp: "setPreferredSize", header: "qgraphicslayoutitem.h".}
proc preferredSize*(this: QGraphicsLayoutItem): QSizeF {.noSideEffect,
    importcpp: "preferredSize", header: "qgraphicslayoutitem.h".}
proc setPreferredWidth*(this: var QGraphicsLayoutItem; width: Qreal) {.
    importcpp: "setPreferredWidth", header: "qgraphicslayoutitem.h".}
proc preferredWidth*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "preferredWidth", header: "qgraphicslayoutitem.h".}
proc setPreferredHeight*(this: var QGraphicsLayoutItem; height: Qreal) {.
    importcpp: "setPreferredHeight", header: "qgraphicslayoutitem.h".}
proc preferredHeight*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "preferredHeight", header: "qgraphicslayoutitem.h".}
proc setMaximumSize*(this: var QGraphicsLayoutItem; size: QSizeF) {.
    importcpp: "setMaximumSize", header: "qgraphicslayoutitem.h".}
proc setMaximumSize*(this: var QGraphicsLayoutItem; w: Qreal; h: Qreal) {.
    importcpp: "setMaximumSize", header: "qgraphicslayoutitem.h".}
proc maximumSize*(this: QGraphicsLayoutItem): QSizeF {.noSideEffect,
    importcpp: "maximumSize", header: "qgraphicslayoutitem.h".}
proc setMaximumWidth*(this: var QGraphicsLayoutItem; width: Qreal) {.
    importcpp: "setMaximumWidth", header: "qgraphicslayoutitem.h".}
proc maximumWidth*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "maximumWidth", header: "qgraphicslayoutitem.h".}
proc setMaximumHeight*(this: var QGraphicsLayoutItem; height: Qreal) {.
    importcpp: "setMaximumHeight", header: "qgraphicslayoutitem.h".}
proc maximumHeight*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "maximumHeight", header: "qgraphicslayoutitem.h".}
proc setGeometry*(this: var QGraphicsLayoutItem; rect: QRectF) {.
    importcpp: "setGeometry", header: "qgraphicslayoutitem.h".}
proc geometry*(this: QGraphicsLayoutItem): QRectF {.noSideEffect,
    importcpp: "geometry", header: "qgraphicslayoutitem.h".}
proc getContentsMargins*(this: QGraphicsLayoutItem; left: ptr Qreal; top: ptr Qreal;
                        right: ptr Qreal; bottom: ptr Qreal) {.noSideEffect,
    importcpp: "getContentsMargins", header: "qgraphicslayoutitem.h".}
proc contentsRect*(this: QGraphicsLayoutItem): QRectF {.noSideEffect,
    importcpp: "contentsRect", header: "qgraphicslayoutitem.h".}
proc effectiveSizeHint*(this: QGraphicsLayoutItem; which: SizeHint;
                       constraint: QSizeF = qSizeF()): QSizeF {.noSideEffect,
    importcpp: "effectiveSizeHint", header: "qgraphicslayoutitem.h".}
proc updateGeometry*(this: var QGraphicsLayoutItem) {.importcpp: "updateGeometry",
    header: "qgraphicslayoutitem.h".}
proc isEmpty*(this: QGraphicsLayoutItem): bool {.noSideEffect, importcpp: "isEmpty",
    header: "qgraphicslayoutitem.h".}
proc parentLayoutItem*(this: QGraphicsLayoutItem): ptr QGraphicsLayoutItem {.
    noSideEffect, importcpp: "parentLayoutItem", header: "qgraphicslayoutitem.h".}
proc setParentLayoutItem*(this: var QGraphicsLayoutItem;
                         parent: ptr QGraphicsLayoutItem) {.
    importcpp: "setParentLayoutItem", header: "qgraphicslayoutitem.h".}
proc isLayout*(this: QGraphicsLayoutItem): bool {.noSideEffect,
    importcpp: "isLayout", header: "qgraphicslayoutitem.h".}
proc graphicsItem*(this: QGraphicsLayoutItem): ptr QGraphicsItem {.noSideEffect,
    importcpp: "graphicsItem", header: "qgraphicslayoutitem.h".}
proc ownedByLayout*(this: QGraphicsLayoutItem): bool {.noSideEffect,
    importcpp: "ownedByLayout", header: "qgraphicslayoutitem.h".}
proc setMinimumSize*(this: var QGraphicsLayoutItem; aw: Qreal; ah: Qreal) {.
    importcpp: "setMinimumSize", header: "qgraphicslayoutitem.h".}
proc setPreferredSize*(this: var QGraphicsLayoutItem; aw: Qreal; ah: Qreal) {.
    importcpp: "setPreferredSize", header: "qgraphicslayoutitem.h".}
proc setMaximumSize*(this: var QGraphicsLayoutItem; aw: Qreal; ah: Qreal) {.
    importcpp: "setMaximumSize", header: "qgraphicslayoutitem.h".}
proc minimumWidth*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "minimumWidth", header: "qgraphicslayoutitem.h".}
proc minimumHeight*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "minimumHeight", header: "qgraphicslayoutitem.h".}
proc preferredWidth*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "preferredWidth", header: "qgraphicslayoutitem.h".}
proc preferredHeight*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "preferredHeight", header: "qgraphicslayoutitem.h".}
proc maximumWidth*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "maximumWidth", header: "qgraphicslayoutitem.h".}
proc maximumHeight*(this: QGraphicsLayoutItem): Qreal {.noSideEffect,
    importcpp: "maximumHeight", header: "qgraphicslayoutitem.h".}