##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(progressbar)
discard "forward decl of QProgressBarPrivate"
discard "forward decl of QStyleOptionProgressBar"
type
  QProgressBar* {.importcpp: "QProgressBar", header: "qprogressbar.h", bycopy.} = object of QWidget

  QProgressBarDirection* {.size: sizeof(cint),
                          importcpp: "QProgressBar::Direction",
                          header: "qprogressbar.h".} = enum
    TopToBottom, BottomToTop


proc constructQProgressBar*(parent: ptr QWidget = nil): QProgressBar {.constructor,
    importcpp: "QProgressBar(@)", header: "qprogressbar.h".}
proc destroyQProgressBar*(this: var QProgressBar) {.importcpp: "#.~QProgressBar()",
    header: "qprogressbar.h".}
proc minimum*(this: QProgressBar): cint {.noSideEffect, importcpp: "minimum",
                                      header: "qprogressbar.h".}
proc maximum*(this: QProgressBar): cint {.noSideEffect, importcpp: "maximum",
                                      header: "qprogressbar.h".}
proc value*(this: QProgressBar): cint {.noSideEffect, importcpp: "value",
                                    header: "qprogressbar.h".}
proc text*(this: QProgressBar): QString {.noSideEffect, importcpp: "text",
                                      header: "qprogressbar.h".}
proc setTextVisible*(this: var QProgressBar; visible: bool) {.
    importcpp: "setTextVisible", header: "qprogressbar.h".}
proc isTextVisible*(this: QProgressBar): bool {.noSideEffect,
    importcpp: "isTextVisible", header: "qprogressbar.h".}
proc alignment*(this: QProgressBar): Alignment {.noSideEffect,
    importcpp: "alignment", header: "qprogressbar.h".}
proc setAlignment*(this: var QProgressBar; alignment: Alignment) {.
    importcpp: "setAlignment", header: "qprogressbar.h".}
proc sizeHint*(this: QProgressBar): QSize {.noSideEffect, importcpp: "sizeHint",
                                        header: "qprogressbar.h".}
proc minimumSizeHint*(this: QProgressBar): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qprogressbar.h".}
proc orientation*(this: QProgressBar): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qprogressbar.h".}
proc setInvertedAppearance*(this: var QProgressBar; invert: bool) {.
    importcpp: "setInvertedAppearance", header: "qprogressbar.h".}
proc invertedAppearance*(this: QProgressBar): bool {.noSideEffect,
    importcpp: "invertedAppearance", header: "qprogressbar.h".}
proc setTextDirection*(this: var QProgressBar; textDirection: QProgressBarDirection) {.
    importcpp: "setTextDirection", header: "qprogressbar.h".}
proc textDirection*(this: QProgressBar): QProgressBarDirection {.noSideEffect,
    importcpp: "textDirection", header: "qprogressbar.h".}
proc setFormat*(this: var QProgressBar; format: QString) {.importcpp: "setFormat",
    header: "qprogressbar.h".}
proc resetFormat*(this: var QProgressBar) {.importcpp: "resetFormat",
                                        header: "qprogressbar.h".}
proc format*(this: QProgressBar): QString {.noSideEffect, importcpp: "format",
                                        header: "qprogressbar.h".}
proc reset*(this: var QProgressBar) {.importcpp: "reset", header: "qprogressbar.h".}
proc setRange*(this: var QProgressBar; minimum: cint; maximum: cint) {.
    importcpp: "setRange", header: "qprogressbar.h".}
proc setMinimum*(this: var QProgressBar; minimum: cint) {.importcpp: "setMinimum",
    header: "qprogressbar.h".}
proc setMaximum*(this: var QProgressBar; maximum: cint) {.importcpp: "setMaximum",
    header: "qprogressbar.h".}
proc setValue*(this: var QProgressBar; value: cint) {.importcpp: "setValue",
    header: "qprogressbar.h".}
proc setOrientation*(this: var QProgressBar; a2: Orientation) {.
    importcpp: "setOrientation", header: "qprogressbar.h".}