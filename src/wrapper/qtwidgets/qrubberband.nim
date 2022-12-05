##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(rubberband)
discard "forward decl of QRubberBandPrivate"
discard "forward decl of QStyleOptionRubberBand"
type
  QRubberBand* {.importcpp: "QRubberBand", header: "qrubberband.h", bycopy.} = object of QWidget

  QRubberBandShape* {.size: sizeof(cint), importcpp: "QRubberBand::Shape",
                     header: "qrubberband.h".} = enum
    Line, Rectangle


proc constructQRubberBand*(a1: QRubberBandShape; a2: ptr QWidget = nil): QRubberBand {.
    constructor, importcpp: "QRubberBand(@)", header: "qrubberband.h".}
proc destroyQRubberBand*(this: var QRubberBand) {.importcpp: "#.~QRubberBand()",
    header: "qrubberband.h".}
proc shape*(this: QRubberBand): QRubberBandShape {.noSideEffect, importcpp: "shape",
    header: "qrubberband.h".}
proc setGeometry*(this: var QRubberBand; r: QRect) {.importcpp: "setGeometry",
    header: "qrubberband.h".}
proc setGeometry*(this: var QRubberBand; x: cint; y: cint; w: cint; h: cint) {.
    importcpp: "setGeometry", header: "qrubberband.h".}
proc move*(this: var QRubberBand; x: cint; y: cint) {.importcpp: "move",
    header: "qrubberband.h".}
proc move*(this: var QRubberBand; p: QPoint) {.importcpp: "move",
    header: "qrubberband.h".}
proc resize*(this: var QRubberBand; w: cint; h: cint) {.importcpp: "resize",
    header: "qrubberband.h".}
proc resize*(this: var QRubberBand; s: QSize) {.importcpp: "resize",
    header: "qrubberband.h".}
proc setGeometry*(this: var QRubberBand; ax: cint; ay: cint; aw: cint; ah: cint) {.
    importcpp: "setGeometry", header: "qrubberband.h".}
proc move*(this: var QRubberBand; ax: cint; ay: cint) {.importcpp: "move",
    header: "qrubberband.h".}