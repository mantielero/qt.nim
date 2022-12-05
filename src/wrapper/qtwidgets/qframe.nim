import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QFramePrivate"
discard "forward decl of QStyleOptionFrame"


proc constructQFrame*(parent: ptr QWidget = nil; f: WindowFlags = windowFlags()): QFrame {.
    constructor, importcpp: "QFrame(@)", header: "qframe.h".}
proc destroyQFrame*(this: var QFrame) {.importcpp: "#.~QFrame()", header: "qframe.h".}
proc frameStyle*(this: QFrame): cint {.noSideEffect, importcpp: "frameStyle",
                                   header: "qframe.h".}
proc setFrameStyle*(this: var QFrame; a2: cint) {.importcpp: "setFrameStyle",
    header: "qframe.h".}
proc frameWidth*(this: QFrame): cint {.noSideEffect, importcpp: "frameWidth",
                                   header: "qframe.h".}
proc sizeHint*(this: QFrame): QSize {.noSideEffect, importcpp: "sizeHint",
                                  header: "qframe.h".}






proc frameShape*(this: QFrame): QFrameShape {.noSideEffect, importcpp: "frameShape",
    header: "qframe.h".}
proc setFrameShape*(this: var QFrame; a2: QFrameShape) {.importcpp: "setFrameShape",
    header: "qframe.h".}
proc frameShadow*(this: QFrame): QFrameShadow {.noSideEffect,
    importcpp: "frameShadow", header: "qframe.h".}
proc setFrameShadow*(this: var QFrame; a2: QFrameShadow) {.
    importcpp: "setFrameShadow", header: "qframe.h".}
proc lineWidth*(this: QFrame): cint {.noSideEffect, importcpp: "lineWidth",
                                  header: "qframe.h".}
proc setLineWidth*(this: var QFrame; a2: cint) {.importcpp: "setLineWidth",
    header: "qframe.h".}
proc midLineWidth*(this: QFrame): cint {.noSideEffect, importcpp: "midLineWidth",
                                     header: "qframe.h".}
proc setMidLineWidth*(this: var QFrame; a2: cint) {.importcpp: "setMidLineWidth",
    header: "qframe.h".}
proc frameRect*(this: QFrame): QRect {.noSideEffect, importcpp: "frameRect",
                                   header: "qframe.h".}
proc setFrameRect*(this: var QFrame; a2: QRect) {.importcpp: "setFrameRect",
    header: "qframe.h".}
