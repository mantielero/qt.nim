##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(slider)
discard "forward decl of QSliderPrivate"
discard "forward decl of QStyleOptionSlider"
type
  QSlider* {.importcpp: "QSlider", header: "qslider.h", bycopy.} = object of QAbstractSlider

  QSliderTickPosition* {.size: sizeof(cint), importcpp: "QSlider::TickPosition",
                        header: "qslider.h".} = enum
    NoTicks = 0, TicksAbove = 1, TicksLeft = ticksAbove, TicksBelow = 2,
    TicksRight = ticksBelow, TicksBothSides = 3


proc constructQSlider*(parent: ptr QWidget = nil): QSlider {.constructor,
    importcpp: "QSlider(@)", header: "qslider.h".}
proc constructQSlider*(orientation: Orientation; parent: ptr QWidget = nil): QSlider {.
    constructor, importcpp: "QSlider(@)", header: "qslider.h".}
proc destroyQSlider*(this: var QSlider) {.importcpp: "#.~QSlider()",
                                      header: "qslider.h".}
proc sizeHint*(this: QSlider): QSize {.noSideEffect, importcpp: "sizeHint",
                                   header: "qslider.h".}
proc minimumSizeHint*(this: QSlider): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qslider.h".}
proc setTickPosition*(this: var QSlider; position: QSliderTickPosition) {.
    importcpp: "setTickPosition", header: "qslider.h".}
proc tickPosition*(this: QSlider): QSliderTickPosition {.noSideEffect,
    importcpp: "tickPosition", header: "qslider.h".}
proc setTickInterval*(this: var QSlider; ti: cint) {.importcpp: "setTickInterval",
    header: "qslider.h".}
proc tickInterval*(this: QSlider): cint {.noSideEffect, importcpp: "tickInterval",
                                      header: "qslider.h".}
proc event*(this: var QSlider; event: ptr QEvent): bool {.importcpp: "event",
    header: "qslider.h".}