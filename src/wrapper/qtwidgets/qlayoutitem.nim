##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

var QLAYOUTSIZE_MAX* {.importcpp: "QLAYOUTSIZE_MAX", header: "qlayoutitem.h".}: cint

discard "forward decl of QLayout"
discard "forward decl of QLayoutItem"
discard "forward decl of QSpacerItem"
discard "forward decl of QWidget"
discard "forward decl of QSize"
type
  QLayoutItem* {.importcpp: "QLayoutItem", header: "qlayoutitem.h", bycopy.} = object


proc constructQLayoutItem*(alignment: Alignment = alignment()): QLayoutItem {.
    constructor, importcpp: "QLayoutItem(@)", header: "qlayoutitem.h".}
proc destroyQLayoutItem*(this: var QLayoutItem) {.importcpp: "#.~QLayoutItem()",
    header: "qlayoutitem.h".}
proc sizeHint*(this: QLayoutItem): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qlayoutitem.h".}
proc minimumSize*(this: QLayoutItem): QSize {.noSideEffect, importcpp: "minimumSize",
    header: "qlayoutitem.h".}
proc maximumSize*(this: QLayoutItem): QSize {.noSideEffect, importcpp: "maximumSize",
    header: "qlayoutitem.h".}
proc expandingDirections*(this: QLayoutItem): Orientations {.noSideEffect,
    importcpp: "expandingDirections", header: "qlayoutitem.h".}
proc setGeometry*(this: var QLayoutItem; a2: QRect) {.importcpp: "setGeometry",
    header: "qlayoutitem.h".}
proc geometry*(this: QLayoutItem): QRect {.noSideEffect, importcpp: "geometry",
                                       header: "qlayoutitem.h".}
proc isEmpty*(this: QLayoutItem): bool {.noSideEffect, importcpp: "isEmpty",
                                     header: "qlayoutitem.h".}
proc hasHeightForWidth*(this: QLayoutItem): bool {.noSideEffect,
    importcpp: "hasHeightForWidth", header: "qlayoutitem.h".}
proc heightForWidth*(this: QLayoutItem; a2: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qlayoutitem.h".}
proc minimumHeightForWidth*(this: QLayoutItem; a2: cint): cint {.noSideEffect,
    importcpp: "minimumHeightForWidth", header: "qlayoutitem.h".}
proc invalidate*(this: var QLayoutItem) {.importcpp: "invalidate",
                                      header: "qlayoutitem.h".}
proc widget*(this: QLayoutItem): ptr QWidget {.noSideEffect, importcpp: "widget",
    header: "qlayoutitem.h".}
proc layout*(this: var QLayoutItem): ptr QLayout {.importcpp: "layout",
    header: "qlayoutitem.h".}
proc spacerItem*(this: var QLayoutItem): ptr QSpacerItem {.importcpp: "spacerItem",
    header: "qlayoutitem.h".}
proc alignment*(this: QLayoutItem): Alignment {.noSideEffect, importcpp: "alignment",
    header: "qlayoutitem.h".}
proc setAlignment*(this: var QLayoutItem; a: Alignment) {.importcpp: "setAlignment",
    header: "qlayoutitem.h".}
proc controlTypes*(this: QLayoutItem): ControlTypes {.noSideEffect,
    importcpp: "controlTypes", header: "qlayoutitem.h".}
##  inline QLayoutItem::QLayoutItem(Qt::Alignment aalignment)
##      : align(aalignment) { }

type
  QSpacerItem* {.importcpp: "QSpacerItem", header: "qlayoutitem.h", bycopy.} = object of QLayoutItem


proc constructQSpacerItem*(w: cint; h: cint; hData: Policy = minimum;
                          vData: Policy = minimum): QSpacerItem {.constructor,
    importcpp: "QSpacerItem(@)", header: "qlayoutitem.h".}
proc destroyQSpacerItem*(this: var QSpacerItem) {.importcpp: "#.~QSpacerItem()",
    header: "qlayoutitem.h".}
proc changeSize*(this: var QSpacerItem; w: cint; h: cint; hData: Policy = minimum;
                vData: Policy = minimum) {.importcpp: "changeSize",
                                       header: "qlayoutitem.h".}
proc sizeHint*(this: QSpacerItem): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qlayoutitem.h".}
proc minimumSize*(this: QSpacerItem): QSize {.noSideEffect, importcpp: "minimumSize",
    header: "qlayoutitem.h".}
proc maximumSize*(this: QSpacerItem): QSize {.noSideEffect, importcpp: "maximumSize",
    header: "qlayoutitem.h".}
proc expandingDirections*(this: QSpacerItem): Orientations {.noSideEffect,
    importcpp: "expandingDirections", header: "qlayoutitem.h".}
proc isEmpty*(this: QSpacerItem): bool {.noSideEffect, importcpp: "isEmpty",
                                     header: "qlayoutitem.h".}
proc setGeometry*(this: var QSpacerItem; a2: QRect) {.importcpp: "setGeometry",
    header: "qlayoutitem.h".}
proc geometry*(this: QSpacerItem): QRect {.noSideEffect, importcpp: "geometry",
                                       header: "qlayoutitem.h".}
proc spacerItem*(this: var QSpacerItem): ptr QSpacerItem {.importcpp: "spacerItem",
    header: "qlayoutitem.h".}
proc sizePolicy*(this: QSpacerItem): QSizePolicy {.noSideEffect,
    importcpp: "sizePolicy", header: "qlayoutitem.h".}
type
  QWidgetItem* {.importcpp: "QWidgetItem", header: "qlayoutitem.h", bycopy.} = object of QLayoutItem


proc constructQWidgetItem*(w: ptr QWidget): QWidgetItem {.constructor,
    importcpp: "QWidgetItem(@)", header: "qlayoutitem.h".}
proc destroyQWidgetItem*(this: var QWidgetItem) {.importcpp: "#.~QWidgetItem()",
    header: "qlayoutitem.h".}
proc sizeHint*(this: QWidgetItem): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qlayoutitem.h".}
proc minimumSize*(this: QWidgetItem): QSize {.noSideEffect, importcpp: "minimumSize",
    header: "qlayoutitem.h".}
proc maximumSize*(this: QWidgetItem): QSize {.noSideEffect, importcpp: "maximumSize",
    header: "qlayoutitem.h".}
proc expandingDirections*(this: QWidgetItem): Orientations {.noSideEffect,
    importcpp: "expandingDirections", header: "qlayoutitem.h".}
proc isEmpty*(this: QWidgetItem): bool {.noSideEffect, importcpp: "isEmpty",
                                     header: "qlayoutitem.h".}
proc setGeometry*(this: var QWidgetItem; a2: QRect) {.importcpp: "setGeometry",
    header: "qlayoutitem.h".}
proc geometry*(this: QWidgetItem): QRect {.noSideEffect, importcpp: "geometry",
                                       header: "qlayoutitem.h".}
proc widget*(this: QWidgetItem): ptr QWidget {.noSideEffect, importcpp: "widget",
    header: "qlayoutitem.h".}
proc hasHeightForWidth*(this: QWidgetItem): bool {.noSideEffect,
    importcpp: "hasHeightForWidth", header: "qlayoutitem.h".}
proc heightForWidth*(this: QWidgetItem; a2: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qlayoutitem.h".}
proc minimumHeightForWidth*(this: QWidgetItem; a2: cint): cint {.noSideEffect,
    importcpp: "minimumHeightForWidth", header: "qlayoutitem.h".}
proc controlTypes*(this: QWidgetItem): ControlTypes {.noSideEffect,
    importcpp: "controlTypes", header: "qlayoutitem.h".}
type
  QWidgetItemV2* {.importcpp: "QWidgetItemV2", header: "qlayoutitem.h", bycopy.} = object of QWidgetItem


proc constructQWidgetItemV2*(widget: ptr QWidget): QWidgetItemV2 {.constructor,
    importcpp: "QWidgetItemV2(@)", header: "qlayoutitem.h".}
proc destroyQWidgetItemV2*(this: var QWidgetItemV2) {.
    importcpp: "#.~QWidgetItemV2()", header: "qlayoutitem.h".}
proc sizeHint*(this: QWidgetItemV2): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qlayoutitem.h".}
proc minimumSize*(this: QWidgetItemV2): QSize {.noSideEffect,
    importcpp: "minimumSize", header: "qlayoutitem.h".}
proc maximumSize*(this: QWidgetItemV2): QSize {.noSideEffect,
    importcpp: "maximumSize", header: "qlayoutitem.h".}
proc heightForWidth*(this: QWidgetItemV2; width: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qlayoutitem.h".}