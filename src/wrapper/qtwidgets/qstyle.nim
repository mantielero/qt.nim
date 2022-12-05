import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QAction"
discard "forward decl of QDebug"
discard "forward decl of QTab"
discard "forward decl of QFontMetrics"
discard "forward decl of QStyleHintReturn"
discard "forward decl of QStyleOption"
discard "forward decl of QStyleOptionComplex"
discard "forward decl of QStylePrivate"


proc constructQStyle*(): QStyle {.constructor, importcpp: "QStyle(@)",
                               header: "qstyle.h".}
proc destroyQStyle*(this: var QStyle) {.importcpp: "#.~QStyle()", header: "qstyle.h".}
proc name*(this: QStyle): QString {.noSideEffect, importcpp: "name", header: "qstyle.h".}
proc polish*(this: var QStyle; widget: ptr QWidget) {.importcpp: "polish",
    header: "qstyle.h".}
proc unpolish*(this: var QStyle; widget: ptr QWidget) {.importcpp: "unpolish",
    header: "qstyle.h".}
proc polish*(this: var QStyle; application: ptr QApplication) {.importcpp: "polish",
    header: "qstyle.h".}
proc unpolish*(this: var QStyle; application: ptr QApplication) {.
    importcpp: "unpolish", header: "qstyle.h".}
proc polish*(this: var QStyle; palette: var QPalette) {.importcpp: "polish",
    header: "qstyle.h".}
proc itemTextRect*(this: QStyle; fm: QFontMetrics; r: QRect; flags: cint; enabled: bool;
                  text: QString): QRect {.noSideEffect, importcpp: "itemTextRect",
                                       header: "qstyle.h".}
proc itemPixmapRect*(this: QStyle; r: QRect; flags: cint; pixmap: QPixmap): QRect {.
    noSideEffect, importcpp: "itemPixmapRect", header: "qstyle.h".}
proc drawItemText*(this: QStyle; painter: ptr QPainter; rect: QRect; flags: cint;
                  pal: QPalette; enabled: bool; text: QString;
                  textRole: ColorRole = noRole) {.noSideEffect,
    importcpp: "drawItemText", header: "qstyle.h".}
proc drawItemPixmap*(this: QStyle; painter: ptr QPainter; rect: QRect; alignment: cint;
                    pixmap: QPixmap) {.noSideEffect, importcpp: "drawItemPixmap",
                                     header: "qstyle.h".}
proc standardPalette*(this: QStyle): QPalette {.noSideEffect,
    importcpp: "standardPalette", header: "qstyle.h".}




proc drawPrimitive*(this: QStyle; pe: QStylePrimitiveElement; opt: ptr QStyleOption;
                   p: ptr QPainter; w: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawPrimitive", header: "qstyle.h".}


proc drawControl*(this: QStyle; element: QStyleControlElement; opt: ptr QStyleOption;
                 p: ptr QPainter; w: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawControl", header: "qstyle.h".}


proc subElementRect*(this: QStyle; subElement: QStyleSubElement;
                    option: ptr QStyleOption; widget: ptr QWidget = nil): QRect {.
    noSideEffect, importcpp: "subElementRect", header: "qstyle.h".}



const
  SC_SpinBoxUp = SC_ScrollBarAddLine
  SC_ComboBoxFrame = SC_ScrollBarAddLine
  SC_SliderGroove = SC_ScrollBarAddLine
  SC_ToolButton = SC_ScrollBarAddLine
  SC_TitleBarSysMenu = SC_ScrollBarAddLine
  SC_DialGroove = SC_ScrollBarAddLine
  SC_GroupBoxCheckBox = SC_ScrollBarAddLine
  SC_MdiMinButton = SC_ScrollBarAddLine
  SC_SpinBoxDown = SC_ScrollBarSubLine
  SC_ComboBoxEditField = SC_ScrollBarSubLine
  SC_SliderHandle = SC_ScrollBarSubLine
  SC_ToolButtonMenu = SC_ScrollBarSubLine
  SC_TitleBarMinButton = SC_ScrollBarSubLine
  SC_DialHandle = SC_ScrollBarSubLine
  SC_GroupBoxLabel = SC_ScrollBarSubLine
  SC_MdiNormalButton = SC_ScrollBarSubLine
  SC_SpinBoxFrame = SC_ScrollBarAddPage
  SC_ComboBoxArrow = SC_ScrollBarAddPage
  SC_SliderTickmarks = SC_ScrollBarAddPage
  SC_TitleBarMaxButton = SC_ScrollBarAddPage
  SC_DialTickmarks = SC_ScrollBarAddPage
  SC_GroupBoxContents = SC_ScrollBarAddPage
  SC_MdiCloseButton = SC_ScrollBarAddPage
  SC_SpinBoxEditField = SC_ScrollBarSubPage
  SC_ComboBoxListBoxPopup = SC_ScrollBarSubPage
  SC_TitleBarCloseButton = SC_ScrollBarSubPage
  SC_GroupBoxFrame = SC_ScrollBarSubPage
  SC_TitleBarNormalButton = SC_ScrollBarFirst
  SC_TitleBarShadeButton = SC_ScrollBarLast
  SC_TitleBarUnshadeButton = SC_ScrollBarSlider
  SC_TitleBarContextHelpButton = SC_ScrollBarGroove

proc drawComplexControl*(this: QStyle; cc: QStyleComplexControl;
                        opt: ptr QStyleOptionComplex; p: ptr QPainter;
                        widget: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawComplexControl", header: "qstyle.h".}
proc hitTestComplexControl*(this: QStyle; cc: QStyleComplexControl;
                           opt: ptr QStyleOptionComplex; pt: QPoint;
                           widget: ptr QWidget = nil): QStyleSubControl {.
    noSideEffect, importcpp: "hitTestComplexControl", header: "qstyle.h".}
proc subControlRect*(this: QStyle; cc: QStyleComplexControl;
                    opt: ptr QStyleOptionComplex; sc: QStyleSubControl;
                    widget: ptr QWidget = nil): QRect {.noSideEffect,
    importcpp: "subControlRect", header: "qstyle.h".}


proc pixelMetric*(this: QStyle; metric: QStylePixelMetric;
                 option: ptr QStyleOption = nil; widget: ptr QWidget = nil): cint {.
    noSideEffect, importcpp: "pixelMetric", header: "qstyle.h".}


proc sizeFromContents*(this: QStyle; ct: QStyleContentsType; opt: ptr QStyleOption;
                      contentsSize: QSize; w: ptr QWidget = nil): QSize {.noSideEffect,
    importcpp: "sizeFromContents", header: "qstyle.h".}




proc styleHint*(this: QStyle; stylehint: QStyleStyleHint;
               opt: ptr QStyleOption = nil; widget: ptr QWidget = nil;
               returnData: ptr QStyleHintReturn = nil): cint {.noSideEffect,
    importcpp: "styleHint", header: "qstyle.h".}


proc standardPixmap*(this: QStyle; standardPixmap: QStyleStandardPixmap;
                    opt: ptr QStyleOption = nil; widget: ptr QWidget = nil): QPixmap {.
    noSideEffect, importcpp: "standardPixmap", header: "qstyle.h".}
proc standardIcon*(this: QStyle; standardIcon: QStyleStandardPixmap;
                  option: ptr QStyleOption = nil; widget: ptr QWidget = nil): QIcon {.
    noSideEffect, importcpp: "standardIcon", header: "qstyle.h".}
proc generatedIconPixmap*(this: QStyle; iconMode: Mode; pixmap: QPixmap;
                         opt: ptr QStyleOption): QPixmap {.noSideEffect,
    importcpp: "generatedIconPixmap", header: "qstyle.h".}
proc visualRect*(direction: LayoutDirection; boundingRect: QRect; logicalRect: QRect): QRect {.
    importcpp: "QStyle::visualRect(@)", header: "qstyle.h".}
proc visualPos*(direction: LayoutDirection; boundingRect: QRect; logicalPos: QPoint): QPoint {.
    importcpp: "QStyle::visualPos(@)", header: "qstyle.h".}
proc sliderPositionFromValue*(min: cint; max: cint; val: cint; space: cint;
                             upsideDown: bool = false): cint {.
    importcpp: "QStyle::sliderPositionFromValue(@)", header: "qstyle.h".}
proc sliderValueFromPosition*(min: cint; max: cint; pos: cint; space: cint;
                             upsideDown: bool = false): cint {.
    importcpp: "QStyle::sliderValueFromPosition(@)", header: "qstyle.h".}
proc visualAlignment*(direction: LayoutDirection; alignment: Alignment): Alignment {.
    importcpp: "QStyle::visualAlignment(@)", header: "qstyle.h".}
proc alignedRect*(direction: LayoutDirection; alignment: Alignment; size: QSize;
                 rectangle: QRect): QRect {.importcpp: "QStyle::alignedRect(@)",
    header: "qstyle.h".}
proc layoutSpacing*(this: QStyle; control1: ControlType; control2: ControlType;
                   orientation: Orientation; option: ptr QStyleOption = nil;
                   widget: ptr QWidget = nil): cint {.noSideEffect,
    importcpp: "layoutSpacing", header: "qstyle.h".}
proc combinedLayoutSpacing*(this: QStyle; controls1: ControlTypes;
                           controls2: ControlTypes; orientation: Orientation;
                           option: ptr QStyleOption = nil; widget: ptr QWidget = nil): cint {.
    noSideEffect, importcpp: "combinedLayoutSpacing", header: "qstyle.h".}
proc proxy*(this: QStyle): ptr QStyle {.noSideEffect, importcpp: "proxy",
                                   header: "qstyle.h".}
