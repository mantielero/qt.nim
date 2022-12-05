import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsItem"
discard "forward decl of QPointF"
discard "forward decl of QTimeLine"
discard "forward decl of QTransform"
discard "forward decl of QGraphicsItemAnimationPrivate"


proc constructQGraphicsItemAnimation*(parent: ptr QObject = nil): QGraphicsItemAnimation {.
    constructor, importcpp: "QGraphicsItemAnimation(@)",
    header: "qgraphicsitemanimation.h".}
proc destroyQGraphicsItemAnimation*(this: var QGraphicsItemAnimation) {.
    importcpp: "#.~QGraphicsItemAnimation()", header: "qgraphicsitemanimation.h".}
proc item*(this: QGraphicsItemAnimation): ptr QGraphicsItem {.noSideEffect,
    importcpp: "item", header: "qgraphicsitemanimation.h".}
proc setItem*(this: var QGraphicsItemAnimation; item: ptr QGraphicsItem) {.
    importcpp: "setItem", header: "qgraphicsitemanimation.h".}
proc timeLine*(this: QGraphicsItemAnimation): ptr QTimeLine {.noSideEffect,
    importcpp: "timeLine", header: "qgraphicsitemanimation.h".}
proc setTimeLine*(this: var QGraphicsItemAnimation; timeLine: ptr QTimeLine) {.
    importcpp: "setTimeLine", header: "qgraphicsitemanimation.h".}
proc posAt*(this: QGraphicsItemAnimation; step: Qreal): QPointF {.noSideEffect,
    importcpp: "posAt", header: "qgraphicsitemanimation.h".}
proc posList*(this: QGraphicsItemAnimation): QList[QPair[Qreal, QPointF]] {.
    noSideEffect, importcpp: "posList", header: "qgraphicsitemanimation.h".}
proc setPosAt*(this: var QGraphicsItemAnimation; step: Qreal; pos: QPointF) {.
    importcpp: "setPosAt", header: "qgraphicsitemanimation.h".}
proc transformAt*(this: QGraphicsItemAnimation; step: Qreal): QTransform {.
    noSideEffect, importcpp: "transformAt", header: "qgraphicsitemanimation.h".}
proc rotationAt*(this: QGraphicsItemAnimation; step: Qreal): Qreal {.noSideEffect,
    importcpp: "rotationAt", header: "qgraphicsitemanimation.h".}
proc rotationList*(this: QGraphicsItemAnimation): QList[QPair[Qreal, Qreal]] {.
    noSideEffect, importcpp: "rotationList", header: "qgraphicsitemanimation.h".}
proc setRotationAt*(this: var QGraphicsItemAnimation; step: Qreal; angle: Qreal) {.
    importcpp: "setRotationAt", header: "qgraphicsitemanimation.h".}
proc xTranslationAt*(this: QGraphicsItemAnimation; step: Qreal): Qreal {.noSideEffect,
    importcpp: "xTranslationAt", header: "qgraphicsitemanimation.h".}
proc yTranslationAt*(this: QGraphicsItemAnimation; step: Qreal): Qreal {.noSideEffect,
    importcpp: "yTranslationAt", header: "qgraphicsitemanimation.h".}
proc translationList*(this: QGraphicsItemAnimation): QList[QPair[Qreal, QPointF]] {.
    noSideEffect, importcpp: "translationList", header: "qgraphicsitemanimation.h".}
proc setTranslationAt*(this: var QGraphicsItemAnimation; step: Qreal; dx: Qreal;
                      dy: Qreal) {.importcpp: "setTranslationAt",
                                 header: "qgraphicsitemanimation.h".}
proc verticalScaleAt*(this: QGraphicsItemAnimation; step: Qreal): Qreal {.
    noSideEffect, importcpp: "verticalScaleAt", header: "qgraphicsitemanimation.h".}
proc horizontalScaleAt*(this: QGraphicsItemAnimation; step: Qreal): Qreal {.
    noSideEffect, importcpp: "horizontalScaleAt",
    header: "qgraphicsitemanimation.h".}
proc scaleList*(this: QGraphicsItemAnimation): QList[QPair[Qreal, QPointF]] {.
    noSideEffect, importcpp: "scaleList", header: "qgraphicsitemanimation.h".}
proc setScaleAt*(this: var QGraphicsItemAnimation; step: Qreal; sx: Qreal; sy: Qreal) {.
    importcpp: "setScaleAt", header: "qgraphicsitemanimation.h".}
proc verticalShearAt*(this: QGraphicsItemAnimation; step: Qreal): Qreal {.
    noSideEffect, importcpp: "verticalShearAt", header: "qgraphicsitemanimation.h".}
proc horizontalShearAt*(this: QGraphicsItemAnimation; step: Qreal): Qreal {.
    noSideEffect, importcpp: "horizontalShearAt",
    header: "qgraphicsitemanimation.h".}
proc shearList*(this: QGraphicsItemAnimation): QList[QPair[Qreal, QPointF]] {.
    noSideEffect, importcpp: "shearList", header: "qgraphicsitemanimation.h".}
proc setShearAt*(this: var QGraphicsItemAnimation; step: Qreal; sh: Qreal; sv: Qreal) {.
    importcpp: "setShearAt", header: "qgraphicsitemanimation.h".}
proc clear*(this: var QGraphicsItemAnimation) {.importcpp: "clear",
    header: "qgraphicsitemanimation.h".}
proc setStep*(this: var QGraphicsItemAnimation; x: Qreal) {.importcpp: "setStep",
    header: "qgraphicsitemanimation.h".}
