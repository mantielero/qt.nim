import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

when defined(QT_INCLUDE_COMPAT):
  discard
discard "forward decl of QGridLayoutPrivate"


proc constructQGridLayout*(parent: ptr QWidget = nil): QGridLayout {.constructor,
    importcpp: "QGridLayout(@)", header: "qgridlayout.h".}
proc destroyQGridLayout*(this: var QGridLayout) {.importcpp: "#.~QGridLayout()",
    header: "qgridlayout.h".}
proc sizeHint*(this: QGridLayout): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qgridlayout.h".}
proc minimumSize*(this: QGridLayout): QSize {.noSideEffect, importcpp: "minimumSize",
    header: "qgridlayout.h".}
proc maximumSize*(this: QGridLayout): QSize {.noSideEffect, importcpp: "maximumSize",
    header: "qgridlayout.h".}
proc setHorizontalSpacing*(this: var QGridLayout; spacing: cint) {.
    importcpp: "setHorizontalSpacing", header: "qgridlayout.h".}
proc horizontalSpacing*(this: QGridLayout): cint {.noSideEffect,
    importcpp: "horizontalSpacing", header: "qgridlayout.h".}
proc setVerticalSpacing*(this: var QGridLayout; spacing: cint) {.
    importcpp: "setVerticalSpacing", header: "qgridlayout.h".}
proc verticalSpacing*(this: QGridLayout): cint {.noSideEffect,
    importcpp: "verticalSpacing", header: "qgridlayout.h".}
proc setSpacing*(this: var QGridLayout; spacing: cint) {.importcpp: "setSpacing",
    header: "qgridlayout.h".}
proc spacing*(this: QGridLayout): cint {.noSideEffect, importcpp: "spacing",
                                     header: "qgridlayout.h".}
proc setRowStretch*(this: var QGridLayout; row: cint; stretch: cint) {.
    importcpp: "setRowStretch", header: "qgridlayout.h".}
proc setColumnStretch*(this: var QGridLayout; column: cint; stretch: cint) {.
    importcpp: "setColumnStretch", header: "qgridlayout.h".}
proc rowStretch*(this: QGridLayout; row: cint): cint {.noSideEffect,
    importcpp: "rowStretch", header: "qgridlayout.h".}
proc columnStretch*(this: QGridLayout; column: cint): cint {.noSideEffect,
    importcpp: "columnStretch", header: "qgridlayout.h".}
proc setRowMinimumHeight*(this: var QGridLayout; row: cint; minSize: cint) {.
    importcpp: "setRowMinimumHeight", header: "qgridlayout.h".}
proc setColumnMinimumWidth*(this: var QGridLayout; column: cint; minSize: cint) {.
    importcpp: "setColumnMinimumWidth", header: "qgridlayout.h".}
proc rowMinimumHeight*(this: QGridLayout; row: cint): cint {.noSideEffect,
    importcpp: "rowMinimumHeight", header: "qgridlayout.h".}
proc columnMinimumWidth*(this: QGridLayout; column: cint): cint {.noSideEffect,
    importcpp: "columnMinimumWidth", header: "qgridlayout.h".}
proc columnCount*(this: QGridLayout): cint {.noSideEffect, importcpp: "columnCount",
    header: "qgridlayout.h".}
proc rowCount*(this: QGridLayout): cint {.noSideEffect, importcpp: "rowCount",
                                      header: "qgridlayout.h".}
proc cellRect*(this: QGridLayout; row: cint; column: cint): QRect {.noSideEffect,
    importcpp: "cellRect", header: "qgridlayout.h".}
proc hasHeightForWidth*(this: QGridLayout): bool {.noSideEffect,
    importcpp: "hasHeightForWidth", header: "qgridlayout.h".}
proc heightForWidth*(this: QGridLayout; a2: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qgridlayout.h".}
proc minimumHeightForWidth*(this: QGridLayout; a2: cint): cint {.noSideEffect,
    importcpp: "minimumHeightForWidth", header: "qgridlayout.h".}
proc expandingDirections*(this: QGridLayout): Orientations {.noSideEffect,
    importcpp: "expandingDirections", header: "qgridlayout.h".}
proc invalidate*(this: var QGridLayout) {.importcpp: "invalidate",
                                      header: "qgridlayout.h".}
proc addWidget*(this: var QGridLayout; w: ptr QWidget) {.importcpp: "addWidget",
    header: "qgridlayout.h".}
proc addWidget*(this: var QGridLayout; a2: ptr QWidget; row: cint; column: cint;
               a5: Alignment = alignment()) {.importcpp: "addWidget",
    header: "qgridlayout.h".}
proc addWidget*(this: var QGridLayout; a2: ptr QWidget; row: cint; column: cint;
               rowSpan: cint; columnSpan: cint; a7: Alignment = alignment()) {.
    importcpp: "addWidget", header: "qgridlayout.h".}
proc addLayout*(this: var QGridLayout; a2: ptr QLayout; row: cint; column: cint;
               a5: Alignment = alignment()) {.importcpp: "addLayout",
    header: "qgridlayout.h".}
proc addLayout*(this: var QGridLayout; a2: ptr QLayout; row: cint; column: cint;
               rowSpan: cint; columnSpan: cint; a7: Alignment = alignment()) {.
    importcpp: "addLayout", header: "qgridlayout.h".}
proc setOriginCorner*(this: var QGridLayout; a2: Corner) {.
    importcpp: "setOriginCorner", header: "qgridlayout.h".}
proc originCorner*(this: QGridLayout): Corner {.noSideEffect,
    importcpp: "originCorner", header: "qgridlayout.h".}
proc itemAt*(this: QGridLayout; index: cint): ptr QLayoutItem {.noSideEffect,
    importcpp: "itemAt", header: "qgridlayout.h".}
proc itemAtPosition*(this: QGridLayout; row: cint; column: cint): ptr QLayoutItem {.
    noSideEffect, importcpp: "itemAtPosition", header: "qgridlayout.h".}
proc takeAt*(this: var QGridLayout; index: cint): ptr QLayoutItem {.importcpp: "takeAt",
    header: "qgridlayout.h".}
proc count*(this: QGridLayout): cint {.noSideEffect, importcpp: "count",
                                   header: "qgridlayout.h".}
proc setGeometry*(this: var QGridLayout; a2: QRect) {.importcpp: "setGeometry",
    header: "qgridlayout.h".}
proc addItem*(this: var QGridLayout; item: ptr QLayoutItem; row: cint; column: cint;
             rowSpan: cint = 1; columnSpan: cint = 1; a7: Alignment = alignment()) {.
    importcpp: "addItem", header: "qgridlayout.h".}
proc setDefaultPositioning*(this: var QGridLayout; n: cint; orient: Orientation) {.
    importcpp: "setDefaultPositioning", header: "qgridlayout.h".}
proc getItemPosition*(this: QGridLayout; idx: cint; row: ptr cint; column: ptr cint;
                     rowSpan: ptr cint; columnSpan: ptr cint) {.noSideEffect,
    importcpp: "getItemPosition", header: "qgridlayout.h".}
