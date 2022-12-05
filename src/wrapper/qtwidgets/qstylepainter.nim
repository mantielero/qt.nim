##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

type
  QStylePainter* {.importcpp: "QStylePainter", header: "qstylepainter.h", bycopy.} = object of QPainter


proc constructQStylePainter*(): QStylePainter {.constructor,
    importcpp: "QStylePainter(@)", header: "qstylepainter.h".}
proc constructQStylePainter*(w: ptr QWidget): QStylePainter {.constructor,
    importcpp: "QStylePainter(@)", header: "qstylepainter.h".}
proc constructQStylePainter*(pd: ptr QPaintDevice; w: ptr QWidget): QStylePainter {.
    constructor, importcpp: "QStylePainter(@)", header: "qstylepainter.h".}
proc begin*(this: var QStylePainter; w: ptr QWidget): bool {.importcpp: "begin",
    header: "qstylepainter.h".}
proc begin*(this: var QStylePainter; pd: ptr QPaintDevice; w: ptr QWidget): bool {.
    importcpp: "begin", header: "qstylepainter.h".}
proc drawPrimitive*(this: var QStylePainter; pe: PrimitiveElement; opt: QStyleOption) {.
    importcpp: "drawPrimitive", header: "qstylepainter.h".}
proc drawControl*(this: var QStylePainter; ce: ControlElement; opt: QStyleOption) {.
    importcpp: "drawControl", header: "qstylepainter.h".}
proc drawComplexControl*(this: var QStylePainter; cc: ComplexControl;
                        opt: QStyleOptionComplex) {.
    importcpp: "drawComplexControl", header: "qstylepainter.h".}
proc drawItemText*(this: var QStylePainter; r: QRect; flags: cint; pal: QPalette;
                  enabled: bool; text: QString; textRole: ColorRole = noRole) {.
    importcpp: "drawItemText", header: "qstylepainter.h".}
proc drawItemPixmap*(this: var QStylePainter; r: QRect; flags: cint; pixmap: QPixmap) {.
    importcpp: "drawItemPixmap", header: "qstylepainter.h".}
proc style*(this: QStylePainter): ptr QStyle {.noSideEffect, importcpp: "style",
    header: "qstylepainter.h".}
proc drawPrimitive*(this: var QStylePainter; pe: PrimitiveElement; opt: QStyleOption) {.
    importcpp: "drawPrimitive", header: "qstylepainter.h".}
proc drawControl*(this: var QStylePainter; ce: ControlElement; opt: QStyleOption) {.
    importcpp: "drawControl", header: "qstylepainter.h".}
proc drawComplexControl*(this: var QStylePainter; cc: ComplexControl;
                        opt: QStyleOptionComplex) {.
    importcpp: "drawComplexControl", header: "qstylepainter.h".}
proc drawItemText*(this: var QStylePainter; r: QRect; flags: cint; pal: QPalette;
                  enabled: bool; text: QString; textRole: ColorRole) {.
    importcpp: "drawItemText", header: "qstylepainter.h".}
proc drawItemPixmap*(this: var QStylePainter; r: QRect; flags: cint; pixmap: QPixmap) {.
    importcpp: "drawItemPixmap", header: "qstylepainter.h".}