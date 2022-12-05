import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsAnchorPrivate"
discard "forward decl of QGraphicsAnchorLayout"
discard "forward decl of QGraphicsAnchorLayoutPrivate"


proc setSpacing*(this: var QGraphicsAnchor; spacing: Qreal) {.importcpp: "setSpacing",
    header: "qgraphicsanchorlayout.h".}
proc unsetSpacing*(this: var QGraphicsAnchor) {.importcpp: "unsetSpacing",
    header: "qgraphicsanchorlayout.h".}
proc spacing*(this: QGraphicsAnchor): Qreal {.noSideEffect, importcpp: "spacing",
    header: "qgraphicsanchorlayout.h".}
proc setSizePolicy*(this: var QGraphicsAnchor; policy: Policy) {.
    importcpp: "setSizePolicy", header: "qgraphicsanchorlayout.h".}
proc sizePolicy*(this: QGraphicsAnchor): Policy {.noSideEffect,
    importcpp: "sizePolicy", header: "qgraphicsanchorlayout.h".}
proc destroyQGraphicsAnchor*(this: var QGraphicsAnchor) {.
    importcpp: "#.~QGraphicsAnchor()", header: "qgraphicsanchorlayout.h".}


proc constructQGraphicsAnchorLayout*(parent: ptr QGraphicsLayoutItem = nil): QGraphicsAnchorLayout {.
    constructor, importcpp: "QGraphicsAnchorLayout(@)",
    header: "qgraphicsanchorlayout.h".}
proc destroyQGraphicsAnchorLayout*(this: var QGraphicsAnchorLayout) {.
    importcpp: "#.~QGraphicsAnchorLayout()", header: "qgraphicsanchorlayout.h".}
proc addAnchor*(this: var QGraphicsAnchorLayout; firstItem: ptr QGraphicsLayoutItem;
               firstEdge: AnchorPoint; secondItem: ptr QGraphicsLayoutItem;
               secondEdge: AnchorPoint): ptr QGraphicsAnchor {.
    importcpp: "addAnchor", header: "qgraphicsanchorlayout.h".}
proc anchor*(this: var QGraphicsAnchorLayout; firstItem: ptr QGraphicsLayoutItem;
            firstEdge: AnchorPoint; secondItem: ptr QGraphicsLayoutItem;
            secondEdge: AnchorPoint): ptr QGraphicsAnchor {.importcpp: "anchor",
    header: "qgraphicsanchorlayout.h".}
proc addCornerAnchors*(this: var QGraphicsAnchorLayout;
                      firstItem: ptr QGraphicsLayoutItem; firstCorner: Corner;
                      secondItem: ptr QGraphicsLayoutItem; secondCorner: Corner) {.
    importcpp: "addCornerAnchors", header: "qgraphicsanchorlayout.h".}
proc addAnchors*(this: var QGraphicsAnchorLayout;
                firstItem: ptr QGraphicsLayoutItem;
                secondItem: ptr QGraphicsLayoutItem;
                orientations: Orientations = horizontal or vertical) {.
    importcpp: "addAnchors", header: "qgraphicsanchorlayout.h".}
proc setHorizontalSpacing*(this: var QGraphicsAnchorLayout; spacing: Qreal) {.
    importcpp: "setHorizontalSpacing", header: "qgraphicsanchorlayout.h".}
proc setVerticalSpacing*(this: var QGraphicsAnchorLayout; spacing: Qreal) {.
    importcpp: "setVerticalSpacing", header: "qgraphicsanchorlayout.h".}
proc setSpacing*(this: var QGraphicsAnchorLayout; spacing: Qreal) {.
    importcpp: "setSpacing", header: "qgraphicsanchorlayout.h".}
proc horizontalSpacing*(this: QGraphicsAnchorLayout): Qreal {.noSideEffect,
    importcpp: "horizontalSpacing", header: "qgraphicsanchorlayout.h".}
proc verticalSpacing*(this: QGraphicsAnchorLayout): Qreal {.noSideEffect,
    importcpp: "verticalSpacing", header: "qgraphicsanchorlayout.h".}
proc removeAt*(this: var QGraphicsAnchorLayout; index: cint) {.importcpp: "removeAt",
    header: "qgraphicsanchorlayout.h".}
proc setGeometry*(this: var QGraphicsAnchorLayout; rect: QRectF) {.
    importcpp: "setGeometry", header: "qgraphicsanchorlayout.h".}
proc count*(this: QGraphicsAnchorLayout): cint {.noSideEffect, importcpp: "count",
    header: "qgraphicsanchorlayout.h".}
proc itemAt*(this: QGraphicsAnchorLayout; index: cint): ptr QGraphicsLayoutItem {.
    noSideEffect, importcpp: "itemAt", header: "qgraphicsanchorlayout.h".}
proc invalidate*(this: var QGraphicsAnchorLayout) {.importcpp: "invalidate",
    header: "qgraphicsanchorlayout.h".}
