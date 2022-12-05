##  Copyright (C) 2018 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QPointingDevice"
discard "forward decl of QWidget"
## nodiscard

proc qWaitForWindowActive*(widget: ptr QWidget; timeout: cint = 5000): bool {.
    importcpp: "QTest::qWaitForWindowActive(@)", header: "qtestsupport_widgets.h".}
## nodiscard

proc qWaitForWindowExposed*(widget: ptr QWidget; timeout: cint = 5000): bool {.
    importcpp: "QTest::qWaitForWindowExposed(@)", header: "qtestsupport_widgets.h".}
type
  QTouchEventWidgetSequence* {.importcpp: "QTest::QTouchEventWidgetSequence",
                              header: "qtestsupport_widgets.h", bycopy.} = object of QTouchEventSequence


proc destroyQTouchEventWidgetSequence*(this: var QTouchEventWidgetSequence) {.
    importcpp: "#.~QTouchEventWidgetSequence()", header: "qtestsupport_widgets.h".}
proc press*(this: var QTouchEventWidgetSequence; touchId: cint; pt: QPoint;
           widget: ptr QWidget = nil): var QTouchEventWidgetSequence {.
    importcpp: "press", header: "qtestsupport_widgets.h".}
proc move*(this: var QTouchEventWidgetSequence; touchId: cint; pt: QPoint;
          widget: ptr QWidget = nil): var QTouchEventWidgetSequence {.
    importcpp: "move", header: "qtestsupport_widgets.h".}
proc release*(this: var QTouchEventWidgetSequence; touchId: cint; pt: QPoint;
             widget: ptr QWidget = nil): var QTouchEventWidgetSequence {.
    importcpp: "release", header: "qtestsupport_widgets.h".}
proc stationary*(this: var QTouchEventWidgetSequence; touchId: cint): var QTouchEventWidgetSequence {.
    importcpp: "stationary", header: "qtestsupport_widgets.h".}
proc commit*(this: var QTouchEventWidgetSequence; processEvents: bool = true): bool {.
    importcpp: "commit", header: "qtestsupport_widgets.h".}
##  namespace QTest
