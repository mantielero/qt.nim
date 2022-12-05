##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsItem"
discard "forward decl of QGraphicsTransformPrivate"
type
  QGraphicsTransform* {.importcpp: "QGraphicsTransform",
                       header: "qgraphicstransform.h", bycopy.} = object of QObject


proc constructQGraphicsTransform*(parent: ptr QObject = nil): QGraphicsTransform {.
    constructor, importcpp: "QGraphicsTransform(@)", header: "qgraphicstransform.h".}
proc destroyQGraphicsTransform*(this: var QGraphicsTransform) {.
    importcpp: "#.~QGraphicsTransform()", header: "qgraphicstransform.h".}
proc applyTo*(this: QGraphicsTransform; matrix: ptr QMatrix4x4) {.noSideEffect,
    importcpp: "applyTo", header: "qgraphicstransform.h".}
discard "forward decl of QGraphicsScalePrivate"
type
  QGraphicsScale* {.importcpp: "QGraphicsScale", header: "qgraphicstransform.h",
                   bycopy.} = object of QGraphicsTransform


proc constructQGraphicsScale*(parent: ptr QObject = nil): QGraphicsScale {.constructor,
    importcpp: "QGraphicsScale(@)", header: "qgraphicstransform.h".}
proc destroyQGraphicsScale*(this: var QGraphicsScale) {.
    importcpp: "#.~QGraphicsScale()", header: "qgraphicstransform.h".}
proc origin*(this: QGraphicsScale): QVector3D {.noSideEffect, importcpp: "origin",
    header: "qgraphicstransform.h".}
proc setOrigin*(this: var QGraphicsScale; point: QVector3D) {.importcpp: "setOrigin",
    header: "qgraphicstransform.h".}
proc xScale*(this: QGraphicsScale): Qreal {.noSideEffect, importcpp: "xScale",
                                        header: "qgraphicstransform.h".}
proc setXScale*(this: var QGraphicsScale; a2: Qreal) {.importcpp: "setXScale",
    header: "qgraphicstransform.h".}
proc yScale*(this: QGraphicsScale): Qreal {.noSideEffect, importcpp: "yScale",
                                        header: "qgraphicstransform.h".}
proc setYScale*(this: var QGraphicsScale; a2: Qreal) {.importcpp: "setYScale",
    header: "qgraphicstransform.h".}
proc zScale*(this: QGraphicsScale): Qreal {.noSideEffect, importcpp: "zScale",
                                        header: "qgraphicstransform.h".}
proc setZScale*(this: var QGraphicsScale; a2: Qreal) {.importcpp: "setZScale",
    header: "qgraphicstransform.h".}
proc applyTo*(this: QGraphicsScale; matrix: ptr QMatrix4x4) {.noSideEffect,
    importcpp: "applyTo", header: "qgraphicstransform.h".}
discard "forward decl of QGraphicsRotationPrivate"
type
  QGraphicsRotation* {.importcpp: "QGraphicsRotation",
                      header: "qgraphicstransform.h", bycopy.} = object of QGraphicsTransform


proc constructQGraphicsRotation*(parent: ptr QObject = nil): QGraphicsRotation {.
    constructor, importcpp: "QGraphicsRotation(@)", header: "qgraphicstransform.h".}
proc destroyQGraphicsRotation*(this: var QGraphicsRotation) {.
    importcpp: "#.~QGraphicsRotation()", header: "qgraphicstransform.h".}
proc origin*(this: QGraphicsRotation): QVector3D {.noSideEffect, importcpp: "origin",
    header: "qgraphicstransform.h".}
proc setOrigin*(this: var QGraphicsRotation; point: QVector3D) {.
    importcpp: "setOrigin", header: "qgraphicstransform.h".}
proc angle*(this: QGraphicsRotation): Qreal {.noSideEffect, importcpp: "angle",
    header: "qgraphicstransform.h".}
proc setAngle*(this: var QGraphicsRotation; a2: Qreal) {.importcpp: "setAngle",
    header: "qgraphicstransform.h".}
proc axis*(this: QGraphicsRotation): QVector3D {.noSideEffect, importcpp: "axis",
    header: "qgraphicstransform.h".}
proc setAxis*(this: var QGraphicsRotation; axis: QVector3D) {.importcpp: "setAxis",
    header: "qgraphicstransform.h".}
proc setAxis*(this: var QGraphicsRotation; axis: Axis) {.importcpp: "setAxis",
    header: "qgraphicstransform.h".}
proc applyTo*(this: QGraphicsRotation; matrix: ptr QMatrix4x4) {.noSideEffect,
    importcpp: "applyTo", header: "qgraphicstransform.h".}