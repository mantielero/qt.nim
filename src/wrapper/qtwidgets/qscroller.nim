##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(scroller)
discard "forward decl of QWidget"
discard "forward decl of QScrollerPrivate"
discard "forward decl of QScrollerProperties"
discard "forward decl of QFlickGestureRecognizer"
discard "forward decl of QMouseFlickGestureRecognizer"
type
  QScroller* {.importcpp: "QScroller", header: "qscroller.h", bycopy.} = object of QObject

  QScrollerState* {.size: sizeof(cint), importcpp: "QScroller::State",
                   header: "qscroller.h".} = enum
    Inactive, Pressed, Dragging, Scrolling


type
  QScrollerScrollerGestureType* {.size: sizeof(cint),
                                 importcpp: "QScroller::ScrollerGestureType",
                                 header: "qscroller.h".} = enum
    TouchGesture, LeftMouseButtonGesture, RightMouseButtonGesture,
    MiddleMouseButtonGesture


type
  QScrollerInput* {.size: sizeof(cint), importcpp: "QScroller::Input",
                   header: "qscroller.h".} = enum
    InputPress = 1, InputMove, InputRelease


proc hasScroller*(target: ptr QObject): bool {.
    importcpp: "QScroller::hasScroller(@)", header: "qscroller.h".}
proc scroller*(target: ptr QObject): ptr QScroller {.
    importcpp: "QScroller::scroller(@)", header: "qscroller.h".}
proc scroller*(target: ptr QObject): ptr QScroller {.
    importcpp: "QScroller::scroller(@)", header: "qscroller.h".}
proc grabGesture*(target: ptr QObject;
                 gestureType: QScrollerScrollerGestureType = touchGesture): GestureType {.
    importcpp: "QScroller::grabGesture(@)", header: "qscroller.h".}
proc grabbedGesture*(target: ptr QObject): GestureType {.
    importcpp: "QScroller::grabbedGesture(@)", header: "qscroller.h".}
proc ungrabGesture*(target: ptr QObject) {.importcpp: "QScroller::ungrabGesture(@)",
                                       header: "qscroller.h".}
proc activeScrollers*(): QList[ptr QScroller] {.
    importcpp: "QScroller::activeScrollers(@)", header: "qscroller.h".}
proc target*(this: QScroller): ptr QObject {.noSideEffect, importcpp: "target",
                                        header: "qscroller.h".}
proc state*(this: QScroller): QScrollerState {.noSideEffect, importcpp: "state",
    header: "qscroller.h".}
proc handleInput*(this: var QScroller; input: QScrollerInput; position: QPointF;
                 timestamp: Qint64 = 0): bool {.importcpp: "handleInput",
    header: "qscroller.h".}
proc stop*(this: var QScroller) {.importcpp: "stop", header: "qscroller.h".}
proc velocity*(this: QScroller): QPointF {.noSideEffect, importcpp: "velocity",
                                       header: "qscroller.h".}
proc finalPosition*(this: QScroller): QPointF {.noSideEffect,
    importcpp: "finalPosition", header: "qscroller.h".}
proc pixelPerMeter*(this: QScroller): QPointF {.noSideEffect,
    importcpp: "pixelPerMeter", header: "qscroller.h".}
proc scrollerProperties*(this: QScroller): QScrollerProperties {.noSideEffect,
    importcpp: "scrollerProperties", header: "qscroller.h".}
proc setSnapPositionsX*(this: var QScroller; positions: QList[Qreal]) {.
    importcpp: "setSnapPositionsX", header: "qscroller.h".}
proc setSnapPositionsX*(this: var QScroller; first: Qreal; interval: Qreal) {.
    importcpp: "setSnapPositionsX", header: "qscroller.h".}
proc setSnapPositionsY*(this: var QScroller; positions: QList[Qreal]) {.
    importcpp: "setSnapPositionsY", header: "qscroller.h".}
proc setSnapPositionsY*(this: var QScroller; first: Qreal; interval: Qreal) {.
    importcpp: "setSnapPositionsY", header: "qscroller.h".}
proc setScrollerProperties*(this: var QScroller; prop: QScrollerProperties) {.
    importcpp: "setScrollerProperties", header: "qscroller.h".}
proc scrollTo*(this: var QScroller; pos: QPointF) {.importcpp: "scrollTo",
    header: "qscroller.h".}
proc scrollTo*(this: var QScroller; pos: QPointF; scrollTime: cint) {.
    importcpp: "scrollTo", header: "qscroller.h".}
proc ensureVisible*(this: var QScroller; rect: QRectF; xmargin: Qreal; ymargin: Qreal) {.
    importcpp: "ensureVisible", header: "qscroller.h".}
proc ensureVisible*(this: var QScroller; rect: QRectF; xmargin: Qreal; ymargin: Qreal;
                   scrollTime: cint) {.importcpp: "ensureVisible",
                                     header: "qscroller.h".}
proc resendPrepareEvent*(this: var QScroller) {.importcpp: "resendPrepareEvent",
    header: "qscroller.h".}