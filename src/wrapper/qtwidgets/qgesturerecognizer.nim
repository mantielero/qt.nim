##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QObject"
discard "forward decl of QEvent"
discard "forward decl of QGesture"
type
  QGestureRecognizer* {.importcpp: "QGestureRecognizer",
                       header: "qgesturerecognizer.h", bycopy.} = object

  QGestureRecognizerResultFlag* {.size: sizeof(cint),
                                 importcpp: "QGestureRecognizer::ResultFlag",
                                 header: "qgesturerecognizer.h".} = enum
    Ignore = 0x0001, MayBeGesture = 0x0002, TriggerGesture = 0x0004,
    FinishGesture = 0x0008, CancelGesture = 0x0010, ResultStateMask = 0x00ff, ConsumeEventHint = 0x0100, ##  StoreEventHint          = 0x0200,
                                                                                             ##  ReplayStoredEventsHint  = 0x0400,
                                                                                             ##  DiscardStoredEventsHint = 0x0800,
    ResultHintMask = 0xff00


proc constructQGestureRecognizer*(): QGestureRecognizer {.constructor,
    importcpp: "QGestureRecognizer(@)", header: "qgesturerecognizer.h".}
proc destroyQGestureRecognizer*(this: var QGestureRecognizer) {.
    importcpp: "#.~QGestureRecognizer()", header: "qgesturerecognizer.h".}
proc create*(this: var QGestureRecognizer; target: ptr QObject): ptr QGesture {.
    importcpp: "create", header: "qgesturerecognizer.h".}
proc recognize*(this: var QGestureRecognizer; state: ptr QGesture;
               watched: ptr QObject; event: ptr QEvent): Result {.
    importcpp: "recognize", header: "qgesturerecognizer.h".}
proc reset*(this: var QGestureRecognizer; state: ptr QGesture) {.importcpp: "reset",
    header: "qgesturerecognizer.h".}
proc registerRecognizer*(recognizer: ptr QGestureRecognizer): GestureType {.
    importcpp: "QGestureRecognizer::registerRecognizer(@)",
    header: "qgesturerecognizer.h".}
proc unregisterRecognizer*(`type`: GestureType) {.
    importcpp: "QGestureRecognizer::unregisterRecognizer(@)",
    header: "qgesturerecognizer.h".}