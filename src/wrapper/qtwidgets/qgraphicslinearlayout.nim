import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsLinearLayoutPrivate"


proc constructQGraphicsLinearLayout*(parent: ptr QGraphicsLayoutItem = nil): QGraphicsLinearLayout {.
    constructor, importcpp: "QGraphicsLinearLayout(@)",
    header: "qgraphicslinearlayout.h".}
proc constructQGraphicsLinearLayout*(orientation: Orientation;
                                    parent: ptr QGraphicsLayoutItem = nil): QGraphicsLinearLayout {.
    constructor, importcpp: "QGraphicsLinearLayout(@)",
    header: "qgraphicslinearlayout.h".}
proc destroyQGraphicsLinearLayout*(this: var QGraphicsLinearLayout) {.
    importcpp: "#.~QGraphicsLinearLayout()", header: "qgraphicslinearlayout.h".}
proc setOrientation*(this: var QGraphicsLinearLayout; orientation: Orientation) {.
    importcpp: "setOrientation", header: "qgraphicslinearlayout.h".}
proc orientation*(this: QGraphicsLinearLayout): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qgraphicslinearlayout.h".}
proc addItem*(this: var QGraphicsLinearLayout; item: ptr QGraphicsLayoutItem) {.
    importcpp: "addItem", header: "qgraphicslinearlayout.h".}
proc addStretch*(this: var QGraphicsLinearLayout; stretch: cint = 1) {.
    importcpp: "addStretch", header: "qgraphicslinearlayout.h".}
proc insertItem*(this: var QGraphicsLinearLayout; index: cint;
                item: ptr QGraphicsLayoutItem) {.importcpp: "insertItem",
    header: "qgraphicslinearlayout.h".}
proc insertStretch*(this: var QGraphicsLinearLayout; index: cint; stretch: cint = 1) {.
    importcpp: "insertStretch", header: "qgraphicslinearlayout.h".}
proc removeItem*(this: var QGraphicsLinearLayout; item: ptr QGraphicsLayoutItem) {.
    importcpp: "removeItem", header: "qgraphicslinearlayout.h".}
proc removeAt*(this: var QGraphicsLinearLayout; index: cint) {.importcpp: "removeAt",
    header: "qgraphicslinearlayout.h".}
proc setSpacing*(this: var QGraphicsLinearLayout; spacing: Qreal) {.
    importcpp: "setSpacing", header: "qgraphicslinearlayout.h".}
proc spacing*(this: QGraphicsLinearLayout): Qreal {.noSideEffect,
    importcpp: "spacing", header: "qgraphicslinearlayout.h".}
proc setItemSpacing*(this: var QGraphicsLinearLayout; index: cint; spacing: Qreal) {.
    importcpp: "setItemSpacing", header: "qgraphicslinearlayout.h".}
proc itemSpacing*(this: QGraphicsLinearLayout; index: cint): Qreal {.noSideEffect,
    importcpp: "itemSpacing", header: "qgraphicslinearlayout.h".}
proc setStretchFactor*(this: var QGraphicsLinearLayout;
                      item: ptr QGraphicsLayoutItem; stretch: cint) {.
    importcpp: "setStretchFactor", header: "qgraphicslinearlayout.h".}
proc stretchFactor*(this: QGraphicsLinearLayout; item: ptr QGraphicsLayoutItem): cint {.
    noSideEffect, importcpp: "stretchFactor", header: "qgraphicslinearlayout.h".}
proc setAlignment*(this: var QGraphicsLinearLayout; item: ptr QGraphicsLayoutItem;
                  alignment: Alignment) {.importcpp: "setAlignment",
                                        header: "qgraphicslinearlayout.h".}
proc alignment*(this: QGraphicsLinearLayout; item: ptr QGraphicsLayoutItem): Alignment {.
    noSideEffect, importcpp: "alignment", header: "qgraphicslinearlayout.h".}
proc setGeometry*(this: var QGraphicsLinearLayout; rect: QRectF) {.
    importcpp: "setGeometry", header: "qgraphicslinearlayout.h".}
proc count*(this: QGraphicsLinearLayout): cint {.noSideEffect, importcpp: "count",
    header: "qgraphicslinearlayout.h".}
proc itemAt*(this: QGraphicsLinearLayout; index: cint): ptr QGraphicsLayoutItem {.
    noSideEffect, importcpp: "itemAt", header: "qgraphicslinearlayout.h".}
proc invalidate*(this: var QGraphicsLinearLayout) {.importcpp: "invalidate",
    header: "qgraphicslinearlayout.h".}
proc sizeHint*(this: QGraphicsLinearLayout; which: SizeHint;
              constraint: QSizeF = qSizeF()): QSizeF {.noSideEffect,
    importcpp: "sizeHint", header: "qgraphicslinearlayout.h".}
proc dump*(this: QGraphicsLinearLayout; indent: cint = 0) {.noSideEffect,
    importcpp: "dump", header: "qgraphicslinearlayout.h".}
