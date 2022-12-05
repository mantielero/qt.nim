##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QLayout"
discard "forward decl of QSize"
discard "forward decl of QLayoutPrivate"
type
  QLayout* {.importcpp: "QLayout", header: "qlayout.h", bycopy.} = object of QObject

  QLayoutSizeConstraint* {.size: sizeof(cint),
                          importcpp: "QLayout::SizeConstraint",
                          header: "qlayout.h".} = enum
    SetDefaultConstraint, SetNoConstraint, SetMinimumSize, SetFixedSize,
    SetMaximumSize, SetMinAndMaxSize


proc constructQLayout*(parent: ptr QWidget = nil): QLayout {.constructor,
    importcpp: "QLayout(@)", header: "qlayout.h".}
proc destroyQLayout*(this: var QLayout) {.importcpp: "#.~QLayout()",
                                      header: "qlayout.h".}
proc spacing*(this: QLayout): cint {.noSideEffect, importcpp: "spacing",
                                 header: "qlayout.h".}
proc setSpacing*(this: var QLayout; a2: cint) {.importcpp: "setSpacing",
    header: "qlayout.h".}
proc setContentsMargins*(this: var QLayout; left: cint; top: cint; right: cint;
                        bottom: cint) {.importcpp: "setContentsMargins",
                                      header: "qlayout.h".}
proc setContentsMargins*(this: var QLayout; margins: QMargins) {.
    importcpp: "setContentsMargins", header: "qlayout.h".}
proc unsetContentsMargins*(this: var QLayout) {.importcpp: "unsetContentsMargins",
    header: "qlayout.h".}
proc getContentsMargins*(this: QLayout; left: ptr cint; top: ptr cint; right: ptr cint;
                        bottom: ptr cint) {.noSideEffect,
    importcpp: "getContentsMargins", header: "qlayout.h".}
proc contentsMargins*(this: QLayout): QMargins {.noSideEffect,
    importcpp: "contentsMargins", header: "qlayout.h".}
proc contentsRect*(this: QLayout): QRect {.noSideEffect, importcpp: "contentsRect",
                                       header: "qlayout.h".}
proc setAlignment*(this: var QLayout; w: ptr QWidget; alignment: Alignment): bool {.
    importcpp: "setAlignment", header: "qlayout.h".}
proc setAlignment*(this: var QLayout; l: ptr QLayout; alignment: Alignment): bool {.
    importcpp: "setAlignment", header: "qlayout.h".}
## using statement

proc setSizeConstraint*(this: var QLayout; a2: QLayoutSizeConstraint) {.
    importcpp: "setSizeConstraint", header: "qlayout.h".}
proc sizeConstraint*(this: QLayout): QLayoutSizeConstraint {.noSideEffect,
    importcpp: "sizeConstraint", header: "qlayout.h".}
proc setMenuBar*(this: var QLayout; w: ptr QWidget) {.importcpp: "setMenuBar",
    header: "qlayout.h".}
proc menuBar*(this: QLayout): ptr QWidget {.noSideEffect, importcpp: "menuBar",
                                       header: "qlayout.h".}
proc parentWidget*(this: QLayout): ptr QWidget {.noSideEffect,
    importcpp: "parentWidget", header: "qlayout.h".}
proc invalidate*(this: var QLayout) {.importcpp: "invalidate", header: "qlayout.h".}
proc geometry*(this: QLayout): QRect {.noSideEffect, importcpp: "geometry",
                                   header: "qlayout.h".}
proc activate*(this: var QLayout): bool {.importcpp: "activate", header: "qlayout.h".}
proc update*(this: var QLayout) {.importcpp: "update", header: "qlayout.h".}
proc addWidget*(this: var QLayout; w: ptr QWidget) {.importcpp: "addWidget",
    header: "qlayout.h".}
proc addItem*(this: var QLayout; a2: ptr QLayoutItem) {.importcpp: "addItem",
    header: "qlayout.h".}
proc removeWidget*(this: var QLayout; w: ptr QWidget) {.importcpp: "removeWidget",
    header: "qlayout.h".}
proc removeItem*(this: var QLayout; a2: ptr QLayoutItem) {.importcpp: "removeItem",
    header: "qlayout.h".}
proc expandingDirections*(this: QLayout): Orientations {.noSideEffect,
    importcpp: "expandingDirections", header: "qlayout.h".}
proc minimumSize*(this: QLayout): QSize {.noSideEffect, importcpp: "minimumSize",
                                      header: "qlayout.h".}
proc maximumSize*(this: QLayout): QSize {.noSideEffect, importcpp: "maximumSize",
                                      header: "qlayout.h".}
proc setGeometry*(this: var QLayout; a2: QRect) {.importcpp: "setGeometry",
    header: "qlayout.h".}
proc itemAt*(this: QLayout; index: cint): ptr QLayoutItem {.noSideEffect,
    importcpp: "itemAt", header: "qlayout.h".}
proc takeAt*(this: var QLayout; index: cint): ptr QLayoutItem {.importcpp: "takeAt",
    header: "qlayout.h".}
proc indexOf*(this: QLayout; a2: ptr QWidget): cint {.noSideEffect,
    importcpp: "indexOf", header: "qlayout.h".}
proc indexOf*(this: QLayout; a2: ptr QLayoutItem): cint {.noSideEffect,
    importcpp: "indexOf", header: "qlayout.h".}
proc count*(this: QLayout): cint {.noSideEffect, importcpp: "count",
                               header: "qlayout.h".}
proc isEmpty*(this: QLayout): bool {.noSideEffect, importcpp: "isEmpty",
                                 header: "qlayout.h".}
proc controlTypes*(this: QLayout): ControlTypes {.noSideEffect,
    importcpp: "controlTypes", header: "qlayout.h".}
proc replaceWidget*(this: var QLayout; `from`: ptr QWidget; to: ptr QWidget;
                   options: FindChildOptions = findChildrenRecursively): ptr QLayoutItem {.
    importcpp: "replaceWidget", header: "qlayout.h".}
proc totalMinimumHeightForWidth*(this: QLayout; w: cint): cint {.noSideEffect,
    importcpp: "totalMinimumHeightForWidth", header: "qlayout.h".}
proc totalHeightForWidth*(this: QLayout; w: cint): cint {.noSideEffect,
    importcpp: "totalHeightForWidth", header: "qlayout.h".}
proc totalMinimumSize*(this: QLayout): QSize {.noSideEffect,
    importcpp: "totalMinimumSize", header: "qlayout.h".}
proc totalMaximumSize*(this: QLayout): QSize {.noSideEffect,
    importcpp: "totalMaximumSize", header: "qlayout.h".}
proc totalSizeHint*(this: QLayout): QSize {.noSideEffect, importcpp: "totalSizeHint",
                                        header: "qlayout.h".}
proc layout*(this: var QLayout): ptr QLayout {.importcpp: "layout", header: "qlayout.h".}
proc setEnabled*(this: var QLayout; a2: bool) {.importcpp: "setEnabled",
    header: "qlayout.h".}
proc isEnabled*(this: QLayout): bool {.noSideEffect, importcpp: "isEnabled",
                                   header: "qlayout.h".}
proc closestAcceptableSize*(w: ptr QWidget; s: QSize): QSize {.
    importcpp: "QLayout::closestAcceptableSize(@)", header: "qlayout.h".}
## ### support old includes
