import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(abstractslider)
discard "forward decl of QAbstractSliderPrivate"


proc constructQAbstractSlider*(parent: ptr QWidget = nil): QAbstractSlider {.
    constructor, importcpp: "QAbstractSlider(@)", header: "qabstractslider.h".}
proc destroyQAbstractSlider*(this: var QAbstractSlider) {.
    importcpp: "#.~QAbstractSlider()", header: "qabstractslider.h".}
proc orientation*(this: QAbstractSlider): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qabstractslider.h".}
proc setMinimum*(this: var QAbstractSlider; a2: cint) {.importcpp: "setMinimum",
    header: "qabstractslider.h".}
proc minimum*(this: QAbstractSlider): cint {.noSideEffect, importcpp: "minimum",
    header: "qabstractslider.h".}
proc setMaximum*(this: var QAbstractSlider; a2: cint) {.importcpp: "setMaximum",
    header: "qabstractslider.h".}
proc maximum*(this: QAbstractSlider): cint {.noSideEffect, importcpp: "maximum",
    header: "qabstractslider.h".}
proc setSingleStep*(this: var QAbstractSlider; a2: cint) {.importcpp: "setSingleStep",
    header: "qabstractslider.h".}
proc singleStep*(this: QAbstractSlider): cint {.noSideEffect,
    importcpp: "singleStep", header: "qabstractslider.h".}
proc setPageStep*(this: var QAbstractSlider; a2: cint) {.importcpp: "setPageStep",
    header: "qabstractslider.h".}
proc pageStep*(this: QAbstractSlider): cint {.noSideEffect, importcpp: "pageStep",
    header: "qabstractslider.h".}
proc setTracking*(this: var QAbstractSlider; enable: bool) {.importcpp: "setTracking",
    header: "qabstractslider.h".}
proc hasTracking*(this: QAbstractSlider): bool {.noSideEffect,
    importcpp: "hasTracking", header: "qabstractslider.h".}
proc setSliderDown*(this: var QAbstractSlider; a2: bool) {.importcpp: "setSliderDown",
    header: "qabstractslider.h".}
proc isSliderDown*(this: QAbstractSlider): bool {.noSideEffect,
    importcpp: "isSliderDown", header: "qabstractslider.h".}
proc setSliderPosition*(this: var QAbstractSlider; a2: cint) {.
    importcpp: "setSliderPosition", header: "qabstractslider.h".}
proc sliderPosition*(this: QAbstractSlider): cint {.noSideEffect,
    importcpp: "sliderPosition", header: "qabstractslider.h".}
proc setInvertedAppearance*(this: var QAbstractSlider; a2: bool) {.
    importcpp: "setInvertedAppearance", header: "qabstractslider.h".}
proc invertedAppearance*(this: QAbstractSlider): bool {.noSideEffect,
    importcpp: "invertedAppearance", header: "qabstractslider.h".}
proc setInvertedControls*(this: var QAbstractSlider; a2: bool) {.
    importcpp: "setInvertedControls", header: "qabstractslider.h".}
proc invertedControls*(this: QAbstractSlider): bool {.noSideEffect,
    importcpp: "invertedControls", header: "qabstractslider.h".}


proc value*(this: QAbstractSlider): cint {.noSideEffect, importcpp: "value",
                                       header: "qabstractslider.h".}
proc triggerAction*(this: var QAbstractSlider; action: QAbstractSliderSliderAction) {.
    importcpp: "triggerAction", header: "qabstractslider.h".}
proc setValue*(this: var QAbstractSlider; a2: cint) {.importcpp: "setValue",
    header: "qabstractslider.h".}
proc setOrientation*(this: var QAbstractSlider; a2: Orientation) {.
    importcpp: "setOrientation", header: "qabstractslider.h".}
proc setRange*(this: var QAbstractSlider; min: cint; max: cint) {.importcpp: "setRange",
    header: "qabstractslider.h".}
