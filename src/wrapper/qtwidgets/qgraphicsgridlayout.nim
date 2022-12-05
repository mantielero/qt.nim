##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsGridLayoutPrivate"
type
  QGraphicsGridLayout* {.importcpp: "QGraphicsGridLayout",
                        header: "qgraphicsgridlayout.h", bycopy.} = object of QGraphicsLayout


proc constructQGraphicsGridLayout*(parent: ptr QGraphicsLayoutItem = nil): QGraphicsGridLayout {.
    constructor, importcpp: "QGraphicsGridLayout(@)",
    header: "qgraphicsgridlayout.h".}
proc destroyQGraphicsGridLayout*(this: var QGraphicsGridLayout) {.
    importcpp: "#.~QGraphicsGridLayout()", header: "qgraphicsgridlayout.h".}
proc addItem*(this: var QGraphicsGridLayout; item: ptr QGraphicsLayoutItem; row: cint;
             column: cint; rowSpan: cint; columnSpan: cint;
             alignment: Alignment = alignment()) {.importcpp: "addItem",
    header: "qgraphicsgridlayout.h".}
proc addItem*(this: var QGraphicsGridLayout; item: ptr QGraphicsLayoutItem; row: cint;
             column: cint; alignment: Alignment = alignment()) {.importcpp: "addItem",
    header: "qgraphicsgridlayout.h".}
proc setHorizontalSpacing*(this: var QGraphicsGridLayout; spacing: Qreal) {.
    importcpp: "setHorizontalSpacing", header: "qgraphicsgridlayout.h".}
proc horizontalSpacing*(this: QGraphicsGridLayout): Qreal {.noSideEffect,
    importcpp: "horizontalSpacing", header: "qgraphicsgridlayout.h".}
proc setVerticalSpacing*(this: var QGraphicsGridLayout; spacing: Qreal) {.
    importcpp: "setVerticalSpacing", header: "qgraphicsgridlayout.h".}
proc verticalSpacing*(this: QGraphicsGridLayout): Qreal {.noSideEffect,
    importcpp: "verticalSpacing", header: "qgraphicsgridlayout.h".}
proc setSpacing*(this: var QGraphicsGridLayout; spacing: Qreal) {.
    importcpp: "setSpacing", header: "qgraphicsgridlayout.h".}
proc setRowSpacing*(this: var QGraphicsGridLayout; row: cint; spacing: Qreal) {.
    importcpp: "setRowSpacing", header: "qgraphicsgridlayout.h".}
proc rowSpacing*(this: QGraphicsGridLayout; row: cint): Qreal {.noSideEffect,
    importcpp: "rowSpacing", header: "qgraphicsgridlayout.h".}
proc setColumnSpacing*(this: var QGraphicsGridLayout; column: cint; spacing: Qreal) {.
    importcpp: "setColumnSpacing", header: "qgraphicsgridlayout.h".}
proc columnSpacing*(this: QGraphicsGridLayout; column: cint): Qreal {.noSideEffect,
    importcpp: "columnSpacing", header: "qgraphicsgridlayout.h".}
proc setRowStretchFactor*(this: var QGraphicsGridLayout; row: cint; stretch: cint) {.
    importcpp: "setRowStretchFactor", header: "qgraphicsgridlayout.h".}
proc rowStretchFactor*(this: QGraphicsGridLayout; row: cint): cint {.noSideEffect,
    importcpp: "rowStretchFactor", header: "qgraphicsgridlayout.h".}
proc setColumnStretchFactor*(this: var QGraphicsGridLayout; column: cint;
                            stretch: cint) {.importcpp: "setColumnStretchFactor",
    header: "qgraphicsgridlayout.h".}
proc columnStretchFactor*(this: QGraphicsGridLayout; column: cint): cint {.
    noSideEffect, importcpp: "columnStretchFactor", header: "qgraphicsgridlayout.h".}
proc setRowMinimumHeight*(this: var QGraphicsGridLayout; row: cint; height: Qreal) {.
    importcpp: "setRowMinimumHeight", header: "qgraphicsgridlayout.h".}
proc rowMinimumHeight*(this: QGraphicsGridLayout; row: cint): Qreal {.noSideEffect,
    importcpp: "rowMinimumHeight", header: "qgraphicsgridlayout.h".}
proc setRowPreferredHeight*(this: var QGraphicsGridLayout; row: cint; height: Qreal) {.
    importcpp: "setRowPreferredHeight", header: "qgraphicsgridlayout.h".}
proc rowPreferredHeight*(this: QGraphicsGridLayout; row: cint): Qreal {.noSideEffect,
    importcpp: "rowPreferredHeight", header: "qgraphicsgridlayout.h".}
proc setRowMaximumHeight*(this: var QGraphicsGridLayout; row: cint; height: Qreal) {.
    importcpp: "setRowMaximumHeight", header: "qgraphicsgridlayout.h".}
proc rowMaximumHeight*(this: QGraphicsGridLayout; row: cint): Qreal {.noSideEffect,
    importcpp: "rowMaximumHeight", header: "qgraphicsgridlayout.h".}
proc setRowFixedHeight*(this: var QGraphicsGridLayout; row: cint; height: Qreal) {.
    importcpp: "setRowFixedHeight", header: "qgraphicsgridlayout.h".}
proc setColumnMinimumWidth*(this: var QGraphicsGridLayout; column: cint; width: Qreal) {.
    importcpp: "setColumnMinimumWidth", header: "qgraphicsgridlayout.h".}
proc columnMinimumWidth*(this: QGraphicsGridLayout; column: cint): Qreal {.
    noSideEffect, importcpp: "columnMinimumWidth", header: "qgraphicsgridlayout.h".}
proc setColumnPreferredWidth*(this: var QGraphicsGridLayout; column: cint;
                             width: Qreal) {.importcpp: "setColumnPreferredWidth",
    header: "qgraphicsgridlayout.h".}
proc columnPreferredWidth*(this: QGraphicsGridLayout; column: cint): Qreal {.
    noSideEffect, importcpp: "columnPreferredWidth",
    header: "qgraphicsgridlayout.h".}
proc setColumnMaximumWidth*(this: var QGraphicsGridLayout; column: cint; width: Qreal) {.
    importcpp: "setColumnMaximumWidth", header: "qgraphicsgridlayout.h".}
proc columnMaximumWidth*(this: QGraphicsGridLayout; column: cint): Qreal {.
    noSideEffect, importcpp: "columnMaximumWidth", header: "qgraphicsgridlayout.h".}
proc setColumnFixedWidth*(this: var QGraphicsGridLayout; column: cint; width: Qreal) {.
    importcpp: "setColumnFixedWidth", header: "qgraphicsgridlayout.h".}
proc setRowAlignment*(this: var QGraphicsGridLayout; row: cint; alignment: Alignment) {.
    importcpp: "setRowAlignment", header: "qgraphicsgridlayout.h".}
proc rowAlignment*(this: QGraphicsGridLayout; row: cint): Alignment {.noSideEffect,
    importcpp: "rowAlignment", header: "qgraphicsgridlayout.h".}
proc setColumnAlignment*(this: var QGraphicsGridLayout; column: cint;
                        alignment: Alignment) {.importcpp: "setColumnAlignment",
    header: "qgraphicsgridlayout.h".}
proc columnAlignment*(this: QGraphicsGridLayout; column: cint): Alignment {.
    noSideEffect, importcpp: "columnAlignment", header: "qgraphicsgridlayout.h".}
proc setAlignment*(this: var QGraphicsGridLayout; item: ptr QGraphicsLayoutItem;
                  alignment: Alignment) {.importcpp: "setAlignment",
                                        header: "qgraphicsgridlayout.h".}
proc alignment*(this: QGraphicsGridLayout; item: ptr QGraphicsLayoutItem): Alignment {.
    noSideEffect, importcpp: "alignment", header: "qgraphicsgridlayout.h".}
proc rowCount*(this: QGraphicsGridLayout): cint {.noSideEffect,
    importcpp: "rowCount", header: "qgraphicsgridlayout.h".}
proc columnCount*(this: QGraphicsGridLayout): cint {.noSideEffect,
    importcpp: "columnCount", header: "qgraphicsgridlayout.h".}
proc itemAt*(this: QGraphicsGridLayout; row: cint; column: cint): ptr QGraphicsLayoutItem {.
    noSideEffect, importcpp: "itemAt", header: "qgraphicsgridlayout.h".}
proc count*(this: QGraphicsGridLayout): cint {.noSideEffect, importcpp: "count",
    header: "qgraphicsgridlayout.h".}
proc itemAt*(this: QGraphicsGridLayout; index: cint): ptr QGraphicsLayoutItem {.
    noSideEffect, importcpp: "itemAt", header: "qgraphicsgridlayout.h".}
proc removeAt*(this: var QGraphicsGridLayout; index: cint) {.importcpp: "removeAt",
    header: "qgraphicsgridlayout.h".}
proc removeItem*(this: var QGraphicsGridLayout; item: ptr QGraphicsLayoutItem) {.
    importcpp: "removeItem", header: "qgraphicsgridlayout.h".}
proc invalidate*(this: var QGraphicsGridLayout) {.importcpp: "invalidate",
    header: "qgraphicsgridlayout.h".}
proc setGeometry*(this: var QGraphicsGridLayout; rect: QRectF) {.
    importcpp: "setGeometry", header: "qgraphicsgridlayout.h".}
proc sizeHint*(this: QGraphicsGridLayout; which: SizeHint;
              constraint: QSizeF = qSizeF()): QSizeF {.noSideEffect,
    importcpp: "sizeHint", header: "qgraphicsgridlayout.h".}
proc addItem*(this: var QGraphicsGridLayout; aitem: ptr QGraphicsLayoutItem;
             arow: cint; acolumn: cint; aalignment: Alignment) {.importcpp: "addItem",
    header: "qgraphicsgridlayout.h".}