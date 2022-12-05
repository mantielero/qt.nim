import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QObject"
discard "forward decl of QEvent"
discard "forward decl of QGesture"



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
