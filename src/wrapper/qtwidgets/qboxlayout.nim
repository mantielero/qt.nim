import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

when defined(QT_INCLUDE_COMPAT):
  discard
discard "forward decl of QBoxLayoutPrivate"



proc constructQBoxLayout*(a1: QBoxLayoutDirection; parent: ptr QWidget = nil): QBoxLayout {.
    constructor, importcpp: "QBoxLayout(@)", header: "qboxlayout.h".}
proc destroyQBoxLayout*(this: var QBoxLayout) {.importcpp: "#.~QBoxLayout()",
    header: "qboxlayout.h".}
proc direction*(this: QBoxLayout): QBoxLayoutDirection {.noSideEffect,
    importcpp: "direction", header: "qboxlayout.h".}
proc setDirection*(this: var QBoxLayout; a2: QBoxLayoutDirection) {.
    importcpp: "setDirection", header: "qboxlayout.h".}
proc addSpacing*(this: var QBoxLayout; size: cint) {.importcpp: "addSpacing",
    header: "qboxlayout.h".}
proc addStretch*(this: var QBoxLayout; stretch: cint = 0) {.importcpp: "addStretch",
    header: "qboxlayout.h".}
proc addSpacerItem*(this: var QBoxLayout; spacerItem: ptr QSpacerItem) {.
    importcpp: "addSpacerItem", header: "qboxlayout.h".}
proc addWidget*(this: var QBoxLayout; a2: ptr QWidget; stretch: cint = 0;
               alignment: Alignment = alignment()) {.importcpp: "addWidget",
    header: "qboxlayout.h".}
proc addLayout*(this: var QBoxLayout; layout: ptr QLayout; stretch: cint = 0) {.
    importcpp: "addLayout", header: "qboxlayout.h".}
proc addStrut*(this: var QBoxLayout; a2: cint) {.importcpp: "addStrut",
    header: "qboxlayout.h".}
proc addItem*(this: var QBoxLayout; a2: ptr QLayoutItem) {.importcpp: "addItem",
    header: "qboxlayout.h".}
proc insertSpacing*(this: var QBoxLayout; index: cint; size: cint) {.
    importcpp: "insertSpacing", header: "qboxlayout.h".}
proc insertStretch*(this: var QBoxLayout; index: cint; stretch: cint = 0) {.
    importcpp: "insertStretch", header: "qboxlayout.h".}
proc insertSpacerItem*(this: var QBoxLayout; index: cint; spacerItem: ptr QSpacerItem) {.
    importcpp: "insertSpacerItem", header: "qboxlayout.h".}
proc insertWidget*(this: var QBoxLayout; index: cint; widget: ptr QWidget;
                  stretch: cint = 0; alignment: Alignment = alignment()) {.
    importcpp: "insertWidget", header: "qboxlayout.h".}
proc insertLayout*(this: var QBoxLayout; index: cint; layout: ptr QLayout;
                  stretch: cint = 0) {.importcpp: "insertLayout",
                                   header: "qboxlayout.h".}
proc insertItem*(this: var QBoxLayout; index: cint; a3: ptr QLayoutItem) {.
    importcpp: "insertItem", header: "qboxlayout.h".}
proc spacing*(this: QBoxLayout): cint {.noSideEffect, importcpp: "spacing",
                                    header: "qboxlayout.h".}
proc setSpacing*(this: var QBoxLayout; spacing: cint) {.importcpp: "setSpacing",
    header: "qboxlayout.h".}
proc setStretchFactor*(this: var QBoxLayout; w: ptr QWidget; stretch: cint): bool {.
    importcpp: "setStretchFactor", header: "qboxlayout.h".}
proc setStretchFactor*(this: var QBoxLayout; l: ptr QLayout; stretch: cint): bool {.
    importcpp: "setStretchFactor", header: "qboxlayout.h".}
proc setStretch*(this: var QBoxLayout; index: cint; stretch: cint) {.
    importcpp: "setStretch", header: "qboxlayout.h".}
proc stretch*(this: QBoxLayout; index: cint): cint {.noSideEffect,
    importcpp: "stretch", header: "qboxlayout.h".}
proc sizeHint*(this: QBoxLayout): QSize {.noSideEffect, importcpp: "sizeHint",
                                      header: "qboxlayout.h".}
proc minimumSize*(this: QBoxLayout): QSize {.noSideEffect, importcpp: "minimumSize",
    header: "qboxlayout.h".}
proc maximumSize*(this: QBoxLayout): QSize {.noSideEffect, importcpp: "maximumSize",
    header: "qboxlayout.h".}
proc hasHeightForWidth*(this: QBoxLayout): bool {.noSideEffect,
    importcpp: "hasHeightForWidth", header: "qboxlayout.h".}
proc heightForWidth*(this: QBoxLayout; a2: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qboxlayout.h".}
proc minimumHeightForWidth*(this: QBoxLayout; a2: cint): cint {.noSideEffect,
    importcpp: "minimumHeightForWidth", header: "qboxlayout.h".}
proc expandingDirections*(this: QBoxLayout): Orientations {.noSideEffect,
    importcpp: "expandingDirections", header: "qboxlayout.h".}
proc invalidate*(this: var QBoxLayout) {.importcpp: "invalidate",
                                     header: "qboxlayout.h".}
proc itemAt*(this: QBoxLayout; a2: cint): ptr QLayoutItem {.noSideEffect,
    importcpp: "itemAt", header: "qboxlayout.h".}
proc takeAt*(this: var QBoxLayout; a2: cint): ptr QLayoutItem {.importcpp: "takeAt",
    header: "qboxlayout.h".}
proc count*(this: QBoxLayout): cint {.noSideEffect, importcpp: "count",
                                  header: "qboxlayout.h".}
proc setGeometry*(this: var QBoxLayout; a2: QRect) {.importcpp: "setGeometry",
    header: "qboxlayout.h".}


proc constructQHBoxLayout*(): QHBoxLayout {.constructor,
    importcpp: "QHBoxLayout(@)", header: "qboxlayout.h".}
proc constructQHBoxLayout*(parent: ptr QWidget): QHBoxLayout {.constructor,
    importcpp: "QHBoxLayout(@)", header: "qboxlayout.h".}
proc destroyQHBoxLayout*(this: var QHBoxLayout) {.importcpp: "#.~QHBoxLayout()",
    header: "qboxlayout.h".}


proc constructQVBoxLayout*(): QVBoxLayout {.constructor,
    importcpp: "QVBoxLayout(@)", header: "qboxlayout.h".}
proc constructQVBoxLayout*(parent: ptr QWidget): QVBoxLayout {.constructor,
    importcpp: "QVBoxLayout(@)", header: "qboxlayout.h".}
proc destroyQVBoxLayout*(this: var QVBoxLayout) {.importcpp: "#.~QVBoxLayout()",
    header: "qboxlayout.h".}
