import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QCommonStylePrivate"


proc constructQCommonStyle*(): QCommonStyle {.constructor,
    importcpp: "QCommonStyle(@)", header: "qcommonstyle.h".}
proc destroyQCommonStyle*(this: var QCommonStyle) {.importcpp: "#.~QCommonStyle()",
    header: "qcommonstyle.h".}
proc drawPrimitive*(this: QCommonStyle; pe: PrimitiveElement; opt: ptr QStyleOption;
                   p: ptr QPainter; w: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawPrimitive", header: "qcommonstyle.h".}
proc drawControl*(this: QCommonStyle; element: ControlElement; opt: ptr QStyleOption;
                 p: ptr QPainter; w: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawControl", header: "qcommonstyle.h".}
proc subElementRect*(this: QCommonStyle; r: SubElement; opt: ptr QStyleOption;
                    widget: ptr QWidget = nil): QRect {.noSideEffect,
    importcpp: "subElementRect", header: "qcommonstyle.h".}
proc drawComplexControl*(this: QCommonStyle; cc: ComplexControl;
                        opt: ptr QStyleOptionComplex; p: ptr QPainter;
                        w: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawComplexControl", header: "qcommonstyle.h".}
proc hitTestComplexControl*(this: QCommonStyle; cc: ComplexControl;
                           opt: ptr QStyleOptionComplex; pt: QPoint;
                           w: ptr QWidget = nil): SubControl {.noSideEffect,
    importcpp: "hitTestComplexControl", header: "qcommonstyle.h".}
proc subControlRect*(this: QCommonStyle; cc: ComplexControl;
                    opt: ptr QStyleOptionComplex; sc: SubControl;
                    w: ptr QWidget = nil): QRect {.noSideEffect,
    importcpp: "subControlRect", header: "qcommonstyle.h".}
proc sizeFromContents*(this: QCommonStyle; ct: ContentsType; opt: ptr QStyleOption;
                      contentsSize: QSize; widget: ptr QWidget = nil): QSize {.
    noSideEffect, importcpp: "sizeFromContents", header: "qcommonstyle.h".}
proc pixelMetric*(this: QCommonStyle; m: PixelMetric; opt: ptr QStyleOption = nil;
                 widget: ptr QWidget = nil): cint {.noSideEffect,
    importcpp: "pixelMetric", header: "qcommonstyle.h".}
proc styleHint*(this: QCommonStyle; sh: StyleHint; opt: ptr QStyleOption = nil;
               w: ptr QWidget = nil; shret: ptr QStyleHintReturn = nil): cint {.
    noSideEffect, importcpp: "styleHint", header: "qcommonstyle.h".}
proc standardIcon*(this: QCommonStyle; standardIcon: StandardPixmap;
                  opt: ptr QStyleOption = nil; widget: ptr QWidget = nil): QIcon {.
    noSideEffect, importcpp: "standardIcon", header: "qcommonstyle.h".}
proc standardPixmap*(this: QCommonStyle; sp: StandardPixmap;
                    opt: ptr QStyleOption = nil; widget: ptr QWidget = nil): QPixmap {.
    noSideEffect, importcpp: "standardPixmap", header: "qcommonstyle.h".}
proc generatedIconPixmap*(this: QCommonStyle; iconMode: Mode; pixmap: QPixmap;
                         opt: ptr QStyleOption): QPixmap {.noSideEffect,
    importcpp: "generatedIconPixmap", header: "qcommonstyle.h".}
proc layoutSpacing*(this: QCommonStyle; control1: ControlType; control2: ControlType;
                   orientation: Orientation; option: ptr QStyleOption = nil;
                   widget: ptr QWidget = nil): cint {.noSideEffect,
    importcpp: "layoutSpacing", header: "qcommonstyle.h".}
proc polish*(this: var QCommonStyle; a2: var QPalette) {.importcpp: "polish",
    header: "qcommonstyle.h".}
proc polish*(this: var QCommonStyle; app: ptr QApplication) {.importcpp: "polish",
    header: "qcommonstyle.h".}
proc polish*(this: var QCommonStyle; widget: ptr QWidget) {.importcpp: "polish",
    header: "qcommonstyle.h".}
proc unpolish*(this: var QCommonStyle; widget: ptr QWidget) {.importcpp: "unpolish",
    header: "qcommonstyle.h".}
proc unpolish*(this: var QCommonStyle; application: ptr QApplication) {.
    importcpp: "unpolish", header: "qcommonstyle.h".}
