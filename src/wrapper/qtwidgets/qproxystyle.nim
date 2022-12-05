##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

when not defined(qt_No_Style_Proxy):
  discard "forward decl of QProxyStylePrivate"
  type
    QProxyStyle* {.importcpp: "QProxyStyle", header: "qproxystyle.h", bycopy.} = object of QCommonStyle

  proc constructQProxyStyle*(style: ptr QStyle = nil): QProxyStyle {.constructor,
      importcpp: "QProxyStyle(@)", header: "qproxystyle.h".}
  proc constructQProxyStyle*(key: QString): QProxyStyle {.constructor,
      importcpp: "QProxyStyle(@)", header: "qproxystyle.h".}
  proc destroyQProxyStyle*(this: var QProxyStyle) {.importcpp: "#.~QProxyStyle()",
      header: "qproxystyle.h".}
  proc baseStyle*(this: QProxyStyle): ptr QStyle {.noSideEffect,
      importcpp: "baseStyle", header: "qproxystyle.h".}
  proc setBaseStyle*(this: var QProxyStyle; style: ptr QStyle) {.
      importcpp: "setBaseStyle", header: "qproxystyle.h".}
  proc drawPrimitive*(this: QProxyStyle; element: PrimitiveElement;
                     option: ptr QStyleOption; painter: ptr QPainter;
                     widget: ptr QWidget = nil) {.noSideEffect,
      importcpp: "drawPrimitive", header: "qproxystyle.h".}
  proc drawControl*(this: QProxyStyle; element: ControlElement;
                   option: ptr QStyleOption; painter: ptr QPainter;
                   widget: ptr QWidget = nil) {.noSideEffect,
      importcpp: "drawControl", header: "qproxystyle.h".}
  proc drawComplexControl*(this: QProxyStyle; control: ComplexControl;
                          option: ptr QStyleOptionComplex; painter: ptr QPainter;
                          widget: ptr QWidget = nil) {.noSideEffect,
      importcpp: "drawComplexControl", header: "qproxystyle.h".}
  proc drawItemText*(this: QProxyStyle; painter: ptr QPainter; rect: QRect; flags: cint;
                    pal: QPalette; enabled: bool; text: QString;
                    textRole: ColorRole = noRole) {.noSideEffect,
      importcpp: "drawItemText", header: "qproxystyle.h".}
  proc drawItemPixmap*(this: QProxyStyle; painter: ptr QPainter; rect: QRect;
                      alignment: cint; pixmap: QPixmap) {.noSideEffect,
      importcpp: "drawItemPixmap", header: "qproxystyle.h".}
  proc sizeFromContents*(this: QProxyStyle; `type`: ContentsType;
                        option: ptr QStyleOption; size: QSize; widget: ptr QWidget): QSize {.
      noSideEffect, importcpp: "sizeFromContents", header: "qproxystyle.h".}
  proc subElementRect*(this: QProxyStyle; element: SubElement;
                      option: ptr QStyleOption; widget: ptr QWidget): QRect {.
      noSideEffect, importcpp: "subElementRect", header: "qproxystyle.h".}
  proc subControlRect*(this: QProxyStyle; cc: ComplexControl;
                      opt: ptr QStyleOptionComplex; sc: SubControl;
                      widget: ptr QWidget): QRect {.noSideEffect,
      importcpp: "subControlRect", header: "qproxystyle.h".}
  proc itemTextRect*(this: QProxyStyle; fm: QFontMetrics; r: QRect; flags: cint;
                    enabled: bool; text: QString): QRect {.noSideEffect,
      importcpp: "itemTextRect", header: "qproxystyle.h".}
  proc itemPixmapRect*(this: QProxyStyle; r: QRect; flags: cint; pixmap: QPixmap): QRect {.
      noSideEffect, importcpp: "itemPixmapRect", header: "qproxystyle.h".}
  proc hitTestComplexControl*(this: QProxyStyle; control: ComplexControl;
                             option: ptr QStyleOptionComplex; pos: QPoint;
                             widget: ptr QWidget = nil): SubControl {.noSideEffect,
      importcpp: "hitTestComplexControl", header: "qproxystyle.h".}
  proc styleHint*(this: QProxyStyle; hint: StyleHint; option: ptr QStyleOption = nil;
                 widget: ptr QWidget = nil; returnData: ptr QStyleHintReturn = nil): cint {.
      noSideEffect, importcpp: "styleHint", header: "qproxystyle.h".}
  proc pixelMetric*(this: QProxyStyle; metric: PixelMetric;
                   option: ptr QStyleOption = nil; widget: ptr QWidget = nil): cint {.
      noSideEffect, importcpp: "pixelMetric", header: "qproxystyle.h".}
  proc layoutSpacing*(this: QProxyStyle; control1: ControlType;
                     control2: ControlType; orientation: Orientation;
                     option: ptr QStyleOption = nil; widget: ptr QWidget = nil): cint {.
      noSideEffect, importcpp: "layoutSpacing", header: "qproxystyle.h".}
  proc standardIcon*(this: QProxyStyle; standardIcon: StandardPixmap;
                    option: ptr QStyleOption = nil; widget: ptr QWidget = nil): QIcon {.
      noSideEffect, importcpp: "standardIcon", header: "qproxystyle.h".}
  proc standardPixmap*(this: QProxyStyle; standardPixmap: StandardPixmap;
                      opt: ptr QStyleOption; widget: ptr QWidget = nil): QPixmap {.
      noSideEffect, importcpp: "standardPixmap", header: "qproxystyle.h".}
  proc generatedIconPixmap*(this: QProxyStyle; iconMode: Mode; pixmap: QPixmap;
                           opt: ptr QStyleOption): QPixmap {.noSideEffect,
      importcpp: "generatedIconPixmap", header: "qproxystyle.h".}
  proc standardPalette*(this: QProxyStyle): QPalette {.noSideEffect,
      importcpp: "standardPalette", header: "qproxystyle.h".}
  proc polish*(this: var QProxyStyle; widget: ptr QWidget) {.importcpp: "polish",
      header: "qproxystyle.h".}
  proc polish*(this: var QProxyStyle; pal: var QPalette) {.importcpp: "polish",
      header: "qproxystyle.h".}
  proc polish*(this: var QProxyStyle; app: ptr QApplication) {.importcpp: "polish",
      header: "qproxystyle.h".}
  proc unpolish*(this: var QProxyStyle; widget: ptr QWidget) {.importcpp: "unpolish",
      header: "qproxystyle.h".}
  proc unpolish*(this: var QProxyStyle; app: ptr QApplication) {.importcpp: "unpolish",
      header: "qproxystyle.h".}