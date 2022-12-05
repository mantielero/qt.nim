##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QMargins"
discard "forward decl of QScrollBar"
discard "forward decl of QAbstractScrollAreaPrivate"
type
  QAbstractScrollArea* {.importcpp: "QAbstractScrollArea",
                        header: "qabstractscrollarea.h", bycopy.} = object of QFrame


proc constructQAbstractScrollArea*(parent: ptr QWidget = nil): QAbstractScrollArea {.
    constructor, importcpp: "QAbstractScrollArea(@)",
    header: "qabstractscrollarea.h".}
proc destroyQAbstractScrollArea*(this: var QAbstractScrollArea) {.
    importcpp: "#.~QAbstractScrollArea()", header: "qabstractscrollarea.h".}
type
  QAbstractScrollAreaSizeAdjustPolicy* {.size: sizeof(cint), importcpp: "QAbstractScrollArea::SizeAdjustPolicy",
                                        header: "qabstractscrollarea.h".} = enum
    AdjustIgnored, AdjustToContentsOnFirstShow, AdjustToContents


proc verticalScrollBarPolicy*(this: QAbstractScrollArea): ScrollBarPolicy {.
    noSideEffect, importcpp: "verticalScrollBarPolicy",
    header: "qabstractscrollarea.h".}
proc setVerticalScrollBarPolicy*(this: var QAbstractScrollArea; a2: ScrollBarPolicy) {.
    importcpp: "setVerticalScrollBarPolicy", header: "qabstractscrollarea.h".}
proc verticalScrollBar*(this: QAbstractScrollArea): ptr QScrollBar {.noSideEffect,
    importcpp: "verticalScrollBar", header: "qabstractscrollarea.h".}
proc setVerticalScrollBar*(this: var QAbstractScrollArea; scrollbar: ptr QScrollBar) {.
    importcpp: "setVerticalScrollBar", header: "qabstractscrollarea.h".}
proc horizontalScrollBarPolicy*(this: QAbstractScrollArea): ScrollBarPolicy {.
    noSideEffect, importcpp: "horizontalScrollBarPolicy",
    header: "qabstractscrollarea.h".}
proc setHorizontalScrollBarPolicy*(this: var QAbstractScrollArea;
                                  a2: ScrollBarPolicy) {.
    importcpp: "setHorizontalScrollBarPolicy", header: "qabstractscrollarea.h".}
proc horizontalScrollBar*(this: QAbstractScrollArea): ptr QScrollBar {.noSideEffect,
    importcpp: "horizontalScrollBar", header: "qabstractscrollarea.h".}
proc setHorizontalScrollBar*(this: var QAbstractScrollArea;
                            scrollbar: ptr QScrollBar) {.
    importcpp: "setHorizontalScrollBar", header: "qabstractscrollarea.h".}
proc cornerWidget*(this: QAbstractScrollArea): ptr QWidget {.noSideEffect,
    importcpp: "cornerWidget", header: "qabstractscrollarea.h".}
proc setCornerWidget*(this: var QAbstractScrollArea; widget: ptr QWidget) {.
    importcpp: "setCornerWidget", header: "qabstractscrollarea.h".}
proc addScrollBarWidget*(this: var QAbstractScrollArea; widget: ptr QWidget;
                        alignment: Alignment) {.importcpp: "addScrollBarWidget",
    header: "qabstractscrollarea.h".}
proc scrollBarWidgets*(this: var QAbstractScrollArea; alignment: Alignment): QWidgetList {.
    importcpp: "scrollBarWidgets", header: "qabstractscrollarea.h".}
proc viewport*(this: QAbstractScrollArea): ptr QWidget {.noSideEffect,
    importcpp: "viewport", header: "qabstractscrollarea.h".}
proc setViewport*(this: var QAbstractScrollArea; widget: ptr QWidget) {.
    importcpp: "setViewport", header: "qabstractscrollarea.h".}
proc maximumViewportSize*(this: QAbstractScrollArea): QSize {.noSideEffect,
    importcpp: "maximumViewportSize", header: "qabstractscrollarea.h".}
proc minimumSizeHint*(this: QAbstractScrollArea): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qabstractscrollarea.h".}
proc sizeHint*(this: QAbstractScrollArea): QSize {.noSideEffect,
    importcpp: "sizeHint", header: "qabstractscrollarea.h".}
proc setupViewport*(this: var QAbstractScrollArea; viewport: ptr QWidget) {.
    importcpp: "setupViewport", header: "qabstractscrollarea.h".}
proc sizeAdjustPolicy*(this: QAbstractScrollArea): QAbstractScrollAreaSizeAdjustPolicy {.
    noSideEffect, importcpp: "sizeAdjustPolicy", header: "qabstractscrollarea.h".}
proc setSizeAdjustPolicy*(this: var QAbstractScrollArea;
                         policy: QAbstractScrollAreaSizeAdjustPolicy) {.
    importcpp: "setSizeAdjustPolicy", header: "qabstractscrollarea.h".}