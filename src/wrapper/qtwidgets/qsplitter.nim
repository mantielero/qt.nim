##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(splitter)
discard "forward decl of QSplitterPrivate"
discard "forward decl of QTextStream"
discard "forward decl of QSplitterHandle"
type
  QSplitter* {.importcpp: "QSplitter", header: "qsplitter.h", bycopy.} = object of QFrame


proc constructQSplitter*(parent: ptr QWidget = nil): QSplitter {.constructor,
    importcpp: "QSplitter(@)", header: "qsplitter.h".}
proc constructQSplitter*(a1: Orientation; parent: ptr QWidget = nil): QSplitter {.
    constructor, importcpp: "QSplitter(@)", header: "qsplitter.h".}
proc destroyQSplitter*(this: var QSplitter) {.importcpp: "#.~QSplitter()",
    header: "qsplitter.h".}
proc addWidget*(this: var QSplitter; widget: ptr QWidget) {.importcpp: "addWidget",
    header: "qsplitter.h".}
proc insertWidget*(this: var QSplitter; index: cint; widget: ptr QWidget) {.
    importcpp: "insertWidget", header: "qsplitter.h".}
proc replaceWidget*(this: var QSplitter; index: cint; widget: ptr QWidget): ptr QWidget {.
    importcpp: "replaceWidget", header: "qsplitter.h".}
proc setOrientation*(this: var QSplitter; a2: Orientation) {.
    importcpp: "setOrientation", header: "qsplitter.h".}
proc orientation*(this: QSplitter): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qsplitter.h".}
proc setChildrenCollapsible*(this: var QSplitter; a2: bool) {.
    importcpp: "setChildrenCollapsible", header: "qsplitter.h".}
proc childrenCollapsible*(this: QSplitter): bool {.noSideEffect,
    importcpp: "childrenCollapsible", header: "qsplitter.h".}
proc setCollapsible*(this: var QSplitter; index: cint; a3: bool) {.
    importcpp: "setCollapsible", header: "qsplitter.h".}
proc isCollapsible*(this: QSplitter; index: cint): bool {.noSideEffect,
    importcpp: "isCollapsible", header: "qsplitter.h".}
proc setOpaqueResize*(this: var QSplitter; opaque: bool = true) {.
    importcpp: "setOpaqueResize", header: "qsplitter.h".}
proc opaqueResize*(this: QSplitter): bool {.noSideEffect, importcpp: "opaqueResize",
                                        header: "qsplitter.h".}
proc refresh*(this: var QSplitter) {.importcpp: "refresh", header: "qsplitter.h".}
proc sizeHint*(this: QSplitter): QSize {.noSideEffect, importcpp: "sizeHint",
                                     header: "qsplitter.h".}
proc minimumSizeHint*(this: QSplitter): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qsplitter.h".}
proc sizes*(this: QSplitter): QList[cint] {.noSideEffect, importcpp: "sizes",
                                        header: "qsplitter.h".}
proc setSizes*(this: var QSplitter; list: QList[cint]) {.importcpp: "setSizes",
    header: "qsplitter.h".}
proc saveState*(this: QSplitter): QByteArray {.noSideEffect, importcpp: "saveState",
    header: "qsplitter.h".}
proc restoreState*(this: var QSplitter; state: QByteArray): bool {.
    importcpp: "restoreState", header: "qsplitter.h".}
proc handleWidth*(this: QSplitter): cint {.noSideEffect, importcpp: "handleWidth",
                                       header: "qsplitter.h".}
proc setHandleWidth*(this: var QSplitter; a2: cint) {.importcpp: "setHandleWidth",
    header: "qsplitter.h".}
proc indexOf*(this: QSplitter; w: ptr QWidget): cint {.noSideEffect,
    importcpp: "indexOf", header: "qsplitter.h".}
proc widget*(this: QSplitter; index: cint): ptr QWidget {.noSideEffect,
    importcpp: "widget", header: "qsplitter.h".}
proc count*(this: QSplitter): cint {.noSideEffect, importcpp: "count",
                                 header: "qsplitter.h".}
proc getRange*(this: QSplitter; index: cint; a3: ptr cint; a4: ptr cint) {.noSideEffect,
    importcpp: "getRange", header: "qsplitter.h".}
proc handle*(this: QSplitter; index: cint): ptr QSplitterHandle {.noSideEffect,
    importcpp: "handle", header: "qsplitter.h".}
proc setStretchFactor*(this: var QSplitter; index: cint; stretch: cint) {.
    importcpp: "setStretchFactor", header: "qsplitter.h".}
discard "forward decl of QSplitterHandlePrivate"
type
  QSplitterHandle* {.importcpp: "QSplitterHandle", header: "qsplitter.h", bycopy.} = object of QWidget


proc constructQSplitterHandle*(o: Orientation; parent: ptr QSplitter): QSplitterHandle {.
    constructor, importcpp: "QSplitterHandle(@)", header: "qsplitter.h".}
proc destroyQSplitterHandle*(this: var QSplitterHandle) {.
    importcpp: "#.~QSplitterHandle()", header: "qsplitter.h".}
proc setOrientation*(this: var QSplitterHandle; o: Orientation) {.
    importcpp: "setOrientation", header: "qsplitter.h".}
proc orientation*(this: QSplitterHandle): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qsplitter.h".}
proc opaqueResize*(this: QSplitterHandle): bool {.noSideEffect,
    importcpp: "opaqueResize", header: "qsplitter.h".}
proc splitter*(this: QSplitterHandle): ptr QSplitter {.noSideEffect,
    importcpp: "splitter", header: "qsplitter.h".}
proc sizeHint*(this: QSplitterHandle): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qsplitter.h".}