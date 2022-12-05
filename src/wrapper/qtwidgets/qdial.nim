import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(dial)
discard "forward decl of QDialPrivate"
discard "forward decl of QStyleOptionSlider"


proc constructQDial*(parent: ptr QWidget = nil): QDial {.constructor,
    importcpp: "QDial(@)", header: "qdial.h".}
proc destroyQDial*(this: var QDial) {.importcpp: "#.~QDial()", header: "qdial.h".}
proc wrapping*(this: QDial): bool {.noSideEffect, importcpp: "wrapping",
                                header: "qdial.h".}
proc notchSize*(this: QDial): cint {.noSideEffect, importcpp: "notchSize",
                                 header: "qdial.h".}
proc setNotchTarget*(this: var QDial; target: cdouble) {.importcpp: "setNotchTarget",
    header: "qdial.h".}
proc notchTarget*(this: QDial): Qreal {.noSideEffect, importcpp: "notchTarget",
                                    header: "qdial.h".}
proc notchesVisible*(this: QDial): bool {.noSideEffect, importcpp: "notchesVisible",
                                      header: "qdial.h".}
proc sizeHint*(this: QDial): QSize {.noSideEffect, importcpp: "sizeHint",
                                 header: "qdial.h".}
proc minimumSizeHint*(this: QDial): QSize {.noSideEffect,
                                        importcpp: "minimumSizeHint",
                                        header: "qdial.h".}
proc setNotchesVisible*(this: var QDial; visible: bool) {.
    importcpp: "setNotchesVisible", header: "qdial.h".}
proc setWrapping*(this: var QDial; on: bool) {.importcpp: "setWrapping",
    header: "qdial.h".}
