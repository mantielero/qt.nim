import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

##  ### move to qnamespace.h
##  ### move to qnamespace.h

discard "forward decl of QGesturePrivate"


proc constructQGesture*(parent: ptr QObject = nil): QGesture {.constructor,
    importcpp: "QGesture(@)", header: "qgesture.h".}
proc destroyQGesture*(this: var QGesture) {.importcpp: "#.~QGesture()",
                                        header: "qgesture.h".}
proc gestureType*(this: QGesture): GestureType {.noSideEffect,
    importcpp: "gestureType", header: "qgesture.h".}
proc state*(this: QGesture): GestureState {.noSideEffect, importcpp: "state",
                                        header: "qgesture.h".}
proc hotSpot*(this: QGesture): QPointF {.noSideEffect, importcpp: "hotSpot",
                                     header: "qgesture.h".}
proc setHotSpot*(this: var QGesture; value: QPointF) {.importcpp: "setHotSpot",
    header: "qgesture.h".}
proc hasHotSpot*(this: QGesture): bool {.noSideEffect, importcpp: "hasHotSpot",
                                     header: "qgesture.h".}
proc unsetHotSpot*(this: var QGesture) {.importcpp: "unsetHotSpot",
                                     header: "qgesture.h".}


proc setGestureCancelPolicy*(this: var QGesture; policy: QGestureGestureCancelPolicy) {.
    importcpp: "setGestureCancelPolicy", header: "qgesture.h".}
proc gestureCancelPolicy*(this: QGesture): QGestureGestureCancelPolicy {.
    noSideEffect, importcpp: "gestureCancelPolicy", header: "qgesture.h".}
discard "forward decl of QPanGesturePrivate"


proc constructQPanGesture*(parent: ptr QObject = nil): QPanGesture {.constructor,
    importcpp: "QPanGesture(@)", header: "qgesture.h".}
proc destroyQPanGesture*(this: var QPanGesture) {.importcpp: "#.~QPanGesture()",
    header: "qgesture.h".}
proc lastOffset*(this: QPanGesture): QPointF {.noSideEffect, importcpp: "lastOffset",
    header: "qgesture.h".}
proc offset*(this: QPanGesture): QPointF {.noSideEffect, importcpp: "offset",
                                       header: "qgesture.h".}
proc delta*(this: QPanGesture): QPointF {.noSideEffect, importcpp: "delta",
                                      header: "qgesture.h".}
proc acceleration*(this: QPanGesture): Qreal {.noSideEffect,
    importcpp: "acceleration", header: "qgesture.h".}
proc setLastOffset*(this: var QPanGesture; value: QPointF) {.
    importcpp: "setLastOffset", header: "qgesture.h".}
proc setOffset*(this: var QPanGesture; value: QPointF) {.importcpp: "setOffset",
    header: "qgesture.h".}
proc setAcceleration*(this: var QPanGesture; value: Qreal) {.
    importcpp: "setAcceleration", header: "qgesture.h".}
discard "forward decl of QPinchGesturePrivate"



proc constructQPinchGesture*(parent: ptr QObject = nil): QPinchGesture {.constructor,
    importcpp: "QPinchGesture(@)", header: "qgesture.h".}
proc destroyQPinchGesture*(this: var QPinchGesture) {.
    importcpp: "#.~QPinchGesture()", header: "qgesture.h".}
proc totalChangeFlags*(this: QPinchGesture): ChangeFlags {.noSideEffect,
    importcpp: "totalChangeFlags", header: "qgesture.h".}
proc setTotalChangeFlags*(this: var QPinchGesture; value: ChangeFlags) {.
    importcpp: "setTotalChangeFlags", header: "qgesture.h".}
proc changeFlags*(this: QPinchGesture): ChangeFlags {.noSideEffect,
    importcpp: "changeFlags", header: "qgesture.h".}
proc setChangeFlags*(this: var QPinchGesture; value: ChangeFlags) {.
    importcpp: "setChangeFlags", header: "qgesture.h".}
proc startCenterPoint*(this: QPinchGesture): QPointF {.noSideEffect,
    importcpp: "startCenterPoint", header: "qgesture.h".}
proc lastCenterPoint*(this: QPinchGesture): QPointF {.noSideEffect,
    importcpp: "lastCenterPoint", header: "qgesture.h".}
proc centerPoint*(this: QPinchGesture): QPointF {.noSideEffect,
    importcpp: "centerPoint", header: "qgesture.h".}
proc setStartCenterPoint*(this: var QPinchGesture; value: QPointF) {.
    importcpp: "setStartCenterPoint", header: "qgesture.h".}
proc setLastCenterPoint*(this: var QPinchGesture; value: QPointF) {.
    importcpp: "setLastCenterPoint", header: "qgesture.h".}
proc setCenterPoint*(this: var QPinchGesture; value: QPointF) {.
    importcpp: "setCenterPoint", header: "qgesture.h".}
proc totalScaleFactor*(this: QPinchGesture): Qreal {.noSideEffect,
    importcpp: "totalScaleFactor", header: "qgesture.h".}
proc lastScaleFactor*(this: QPinchGesture): Qreal {.noSideEffect,
    importcpp: "lastScaleFactor", header: "qgesture.h".}
proc scaleFactor*(this: QPinchGesture): Qreal {.noSideEffect,
    importcpp: "scaleFactor", header: "qgesture.h".}
proc setTotalScaleFactor*(this: var QPinchGesture; value: Qreal) {.
    importcpp: "setTotalScaleFactor", header: "qgesture.h".}
proc setLastScaleFactor*(this: var QPinchGesture; value: Qreal) {.
    importcpp: "setLastScaleFactor", header: "qgesture.h".}
proc setScaleFactor*(this: var QPinchGesture; value: Qreal) {.
    importcpp: "setScaleFactor", header: "qgesture.h".}
proc totalRotationAngle*(this: QPinchGesture): Qreal {.noSideEffect,
    importcpp: "totalRotationAngle", header: "qgesture.h".}
proc lastRotationAngle*(this: QPinchGesture): Qreal {.noSideEffect,
    importcpp: "lastRotationAngle", header: "qgesture.h".}
proc rotationAngle*(this: QPinchGesture): Qreal {.noSideEffect,
    importcpp: "rotationAngle", header: "qgesture.h".}
proc setTotalRotationAngle*(this: var QPinchGesture; value: Qreal) {.
    importcpp: "setTotalRotationAngle", header: "qgesture.h".}
proc setLastRotationAngle*(this: var QPinchGesture; value: Qreal) {.
    importcpp: "setLastRotationAngle", header: "qgesture.h".}
proc setRotationAngle*(this: var QPinchGesture; value: Qreal) {.
    importcpp: "setRotationAngle", header: "qgesture.h".}
discard "forward decl of QSwipeGesturePrivate"



proc constructQSwipeGesture*(parent: ptr QObject = nil): QSwipeGesture {.constructor,
    importcpp: "QSwipeGesture(@)", header: "qgesture.h".}
proc destroyQSwipeGesture*(this: var QSwipeGesture) {.
    importcpp: "#.~QSwipeGesture()", header: "qgesture.h".}
proc horizontalDirection*(this: QSwipeGesture): QSwipeGestureSwipeDirection {.
    noSideEffect, importcpp: "horizontalDirection", header: "qgesture.h".}
proc verticalDirection*(this: QSwipeGesture): QSwipeGestureSwipeDirection {.
    noSideEffect, importcpp: "verticalDirection", header: "qgesture.h".}
proc swipeAngle*(this: QSwipeGesture): Qreal {.noSideEffect, importcpp: "swipeAngle",
    header: "qgesture.h".}
proc setSwipeAngle*(this: var QSwipeGesture; value: Qreal) {.
    importcpp: "setSwipeAngle", header: "qgesture.h".}
discard "forward decl of QTapGesturePrivate"


proc constructQTapGesture*(parent: ptr QObject = nil): QTapGesture {.constructor,
    importcpp: "QTapGesture(@)", header: "qgesture.h".}
proc destroyQTapGesture*(this: var QTapGesture) {.importcpp: "#.~QTapGesture()",
    header: "qgesture.h".}
proc position*(this: QTapGesture): QPointF {.noSideEffect, importcpp: "position",
    header: "qgesture.h".}
proc setPosition*(this: var QTapGesture; pos: QPointF) {.importcpp: "setPosition",
    header: "qgesture.h".}
discard "forward decl of QTapAndHoldGesturePrivate"


proc constructQTapAndHoldGesture*(parent: ptr QObject = nil): QTapAndHoldGesture {.
    constructor, importcpp: "QTapAndHoldGesture(@)", header: "qgesture.h".}
proc destroyQTapAndHoldGesture*(this: var QTapAndHoldGesture) {.
    importcpp: "#.~QTapAndHoldGesture()", header: "qgesture.h".}
proc position*(this: QTapAndHoldGesture): QPointF {.noSideEffect,
    importcpp: "position", header: "qgesture.h".}
proc setPosition*(this: var QTapAndHoldGesture; pos: QPointF) {.
    importcpp: "setPosition", header: "qgesture.h".}
proc setTimeout*(msecs: cint) {.importcpp: "QTapAndHoldGesture::setTimeout(@)",
                             header: "qgesture.h".}
proc timeout*(): cint {.importcpp: "QTapAndHoldGesture::timeout(@)",
                     header: "qgesture.h".}
discard "forward decl of QGesture"
discard "forward decl of QGestureEventPrivate"


proc constructQGestureEvent*(gestures: QList[ptr QGesture]): QGestureEvent {.
    constructor, importcpp: "QGestureEvent(@)", header: "qgesture.h".}
proc destroyQGestureEvent*(this: var QGestureEvent) {.
    importcpp: "#.~QGestureEvent()", header: "qgesture.h".}
proc gestures*(this: QGestureEvent): QList[ptr QGesture] {.noSideEffect,
    importcpp: "gestures", header: "qgesture.h".}
proc gesture*(this: QGestureEvent; `type`: GestureType): ptr QGesture {.noSideEffect,
    importcpp: "gesture", header: "qgesture.h".}
proc activeGestures*(this: QGestureEvent): QList[ptr QGesture] {.noSideEffect,
    importcpp: "activeGestures", header: "qgesture.h".}
proc canceledGestures*(this: QGestureEvent): QList[ptr QGesture] {.noSideEffect,
    importcpp: "canceledGestures", header: "qgesture.h".}
## using statement

## using statement

## using statement

## using statement

proc setAccepted*(this: var QGestureEvent; a2: ptr QGesture; a3: bool) {.
    importcpp: "setAccepted", header: "qgesture.h".}
proc accept*(this: var QGestureEvent; a2: ptr QGesture) {.importcpp: "accept",
    header: "qgesture.h".}
proc ignore*(this: var QGestureEvent; a2: ptr QGesture) {.importcpp: "ignore",
    header: "qgesture.h".}
proc isAccepted*(this: QGestureEvent; a2: ptr QGesture): bool {.noSideEffect,
    importcpp: "isAccepted", header: "qgesture.h".}
proc setAccepted*(this: var QGestureEvent; a2: GestureType; a3: bool) {.
    importcpp: "setAccepted", header: "qgesture.h".}
proc accept*(this: var QGestureEvent; a2: GestureType) {.importcpp: "accept",
    header: "qgesture.h".}
proc ignore*(this: var QGestureEvent; a2: GestureType) {.importcpp: "ignore",
    header: "qgesture.h".}
proc isAccepted*(this: QGestureEvent; a2: GestureType): bool {.noSideEffect,
    importcpp: "isAccepted", header: "qgesture.h".}
proc setWidget*(this: var QGestureEvent; widget: ptr QWidget) {.importcpp: "setWidget",
    header: "qgesture.h".}
proc widget*(this: QGestureEvent): ptr QWidget {.noSideEffect, importcpp: "widget",
    header: "qgesture.h".}
proc mapToGraphicsScene*(this: QGestureEvent; gesturePoint: QPointF): QPointF {.
    noSideEffect, importcpp: "mapToGraphicsScene", header: "qgesture.h".}
when not defined(QT_NO_DEBUG_STREAM):
  proc `<<`*(a1: QDebug; a2: ptr QGesture): QDebug {.importcpp: "(# << #)",
      header: "qgesture.h".}
  proc `<<`*(a1: QDebug; a2: ptr QGestureEvent): QDebug {.importcpp: "(# << #)",
      header: "qgesture.h".}
