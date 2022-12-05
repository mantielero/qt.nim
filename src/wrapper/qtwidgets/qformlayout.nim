import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(formlayout)
discard "forward decl of QFormLayoutPrivate"









proc constructQFormLayout*(parent: ptr QWidget = nil): QFormLayout {.constructor,
    importcpp: "QFormLayout(@)", header: "qformlayout.h".}
proc destroyQFormLayout*(this: var QFormLayout) {.importcpp: "#.~QFormLayout()",
    header: "qformlayout.h".}
proc setFieldGrowthPolicy*(this: var QFormLayout;
                          policy: QFormLayoutFieldGrowthPolicy) {.
    importcpp: "setFieldGrowthPolicy", header: "qformlayout.h".}
proc fieldGrowthPolicy*(this: QFormLayout): QFormLayoutFieldGrowthPolicy {.
    noSideEffect, importcpp: "fieldGrowthPolicy", header: "qformlayout.h".}
proc setRowWrapPolicy*(this: var QFormLayout; policy: QFormLayoutRowWrapPolicy) {.
    importcpp: "setRowWrapPolicy", header: "qformlayout.h".}
proc rowWrapPolicy*(this: QFormLayout): QFormLayoutRowWrapPolicy {.noSideEffect,
    importcpp: "rowWrapPolicy", header: "qformlayout.h".}
proc setLabelAlignment*(this: var QFormLayout; alignment: Alignment) {.
    importcpp: "setLabelAlignment", header: "qformlayout.h".}
proc labelAlignment*(this: QFormLayout): Alignment {.noSideEffect,
    importcpp: "labelAlignment", header: "qformlayout.h".}
proc setFormAlignment*(this: var QFormLayout; alignment: Alignment) {.
    importcpp: "setFormAlignment", header: "qformlayout.h".}
proc formAlignment*(this: QFormLayout): Alignment {.noSideEffect,
    importcpp: "formAlignment", header: "qformlayout.h".}
proc setHorizontalSpacing*(this: var QFormLayout; spacing: cint) {.
    importcpp: "setHorizontalSpacing", header: "qformlayout.h".}
proc horizontalSpacing*(this: QFormLayout): cint {.noSideEffect,
    importcpp: "horizontalSpacing", header: "qformlayout.h".}
proc setVerticalSpacing*(this: var QFormLayout; spacing: cint) {.
    importcpp: "setVerticalSpacing", header: "qformlayout.h".}
proc verticalSpacing*(this: QFormLayout): cint {.noSideEffect,
    importcpp: "verticalSpacing", header: "qformlayout.h".}
proc spacing*(this: QFormLayout): cint {.noSideEffect, importcpp: "spacing",
                                     header: "qformlayout.h".}
proc setSpacing*(this: var QFormLayout; a2: cint) {.importcpp: "setSpacing",
    header: "qformlayout.h".}
proc addRow*(this: var QFormLayout; label: ptr QWidget; field: ptr QWidget) {.
    importcpp: "addRow", header: "qformlayout.h".}
proc addRow*(this: var QFormLayout; label: ptr QWidget; field: ptr QLayout) {.
    importcpp: "addRow", header: "qformlayout.h".}
proc addRow*(this: var QFormLayout; labelText: QString; field: ptr QWidget) {.
    importcpp: "addRow", header: "qformlayout.h".}
proc addRow*(this: var QFormLayout; labelText: QString; field: ptr QLayout) {.
    importcpp: "addRow", header: "qformlayout.h".}
proc addRow*(this: var QFormLayout; widget: ptr QWidget) {.importcpp: "addRow",
    header: "qformlayout.h".}
proc addRow*(this: var QFormLayout; layout: ptr QLayout) {.importcpp: "addRow",
    header: "qformlayout.h".}
proc insertRow*(this: var QFormLayout; row: cint; label: ptr QWidget; field: ptr QWidget) {.
    importcpp: "insertRow", header: "qformlayout.h".}
proc insertRow*(this: var QFormLayout; row: cint; label: ptr QWidget; field: ptr QLayout) {.
    importcpp: "insertRow", header: "qformlayout.h".}
proc insertRow*(this: var QFormLayout; row: cint; labelText: QString; field: ptr QWidget) {.
    importcpp: "insertRow", header: "qformlayout.h".}
proc insertRow*(this: var QFormLayout; row: cint; labelText: QString; field: ptr QLayout) {.
    importcpp: "insertRow", header: "qformlayout.h".}
proc insertRow*(this: var QFormLayout; row: cint; widget: ptr QWidget) {.
    importcpp: "insertRow", header: "qformlayout.h".}
proc insertRow*(this: var QFormLayout; row: cint; layout: ptr QLayout) {.
    importcpp: "insertRow", header: "qformlayout.h".}
proc removeRow*(this: var QFormLayout; row: cint) {.importcpp: "removeRow",
    header: "qformlayout.h".}
proc removeRow*(this: var QFormLayout; widget: ptr QWidget) {.importcpp: "removeRow",
    header: "qformlayout.h".}
proc removeRow*(this: var QFormLayout; layout: ptr QLayout) {.importcpp: "removeRow",
    header: "qformlayout.h".}
proc takeRow*(this: var QFormLayout; row: cint): QFormLayoutTakeRowResult {.
    importcpp: "takeRow", header: "qformlayout.h".}
proc takeRow*(this: var QFormLayout; widget: ptr QWidget): QFormLayoutTakeRowResult {.
    importcpp: "takeRow", header: "qformlayout.h".}
proc takeRow*(this: var QFormLayout; layout: ptr QLayout): QFormLayoutTakeRowResult {.
    importcpp: "takeRow", header: "qformlayout.h".}
proc setItem*(this: var QFormLayout; row: cint; role: QFormLayoutItemRole;
             item: ptr QLayoutItem) {.importcpp: "setItem", header: "qformlayout.h".}
proc setWidget*(this: var QFormLayout; row: cint; role: QFormLayoutItemRole;
               widget: ptr QWidget) {.importcpp: "setWidget", header: "qformlayout.h".}
proc setLayout*(this: var QFormLayout; row: cint; role: QFormLayoutItemRole;
               layout: ptr QLayout) {.importcpp: "setLayout", header: "qformlayout.h".}
proc setRowVisible*(this: var QFormLayout; row: cint; on: bool) {.
    importcpp: "setRowVisible", header: "qformlayout.h".}
proc setRowVisible*(this: var QFormLayout; widget: ptr QWidget; on: bool) {.
    importcpp: "setRowVisible", header: "qformlayout.h".}
proc setRowVisible*(this: var QFormLayout; layout: ptr QLayout; on: bool) {.
    importcpp: "setRowVisible", header: "qformlayout.h".}
proc isRowVisible*(this: QFormLayout; row: cint): bool {.noSideEffect,
    importcpp: "isRowVisible", header: "qformlayout.h".}
proc isRowVisible*(this: QFormLayout; widget: ptr QWidget): bool {.noSideEffect,
    importcpp: "isRowVisible", header: "qformlayout.h".}
proc isRowVisible*(this: QFormLayout; layout: ptr QLayout): bool {.noSideEffect,
    importcpp: "isRowVisible", header: "qformlayout.h".}
proc itemAt*(this: QFormLayout; row: cint; role: QFormLayoutItemRole): ptr QLayoutItem {.
    noSideEffect, importcpp: "itemAt", header: "qformlayout.h".}
proc getItemPosition*(this: QFormLayout; index: cint; rowPtr: ptr cint;
                     rolePtr: ptr QFormLayoutItemRole) {.noSideEffect,
    importcpp: "getItemPosition", header: "qformlayout.h".}
proc getWidgetPosition*(this: QFormLayout; widget: ptr QWidget; rowPtr: ptr cint;
                       rolePtr: ptr QFormLayoutItemRole) {.noSideEffect,
    importcpp: "getWidgetPosition", header: "qformlayout.h".}
proc getLayoutPosition*(this: QFormLayout; layout: ptr QLayout; rowPtr: ptr cint;
                       rolePtr: ptr QFormLayoutItemRole) {.noSideEffect,
    importcpp: "getLayoutPosition", header: "qformlayout.h".}
proc labelForField*(this: QFormLayout; field: ptr QWidget): ptr QWidget {.noSideEffect,
    importcpp: "labelForField", header: "qformlayout.h".}
proc labelForField*(this: QFormLayout; field: ptr QLayout): ptr QWidget {.noSideEffect,
    importcpp: "labelForField", header: "qformlayout.h".}
proc addItem*(this: var QFormLayout; item: ptr QLayoutItem) {.importcpp: "addItem",
    header: "qformlayout.h".}
proc itemAt*(this: QFormLayout; index: cint): ptr QLayoutItem {.noSideEffect,
    importcpp: "itemAt", header: "qformlayout.h".}
proc takeAt*(this: var QFormLayout; index: cint): ptr QLayoutItem {.importcpp: "takeAt",
    header: "qformlayout.h".}
proc setGeometry*(this: var QFormLayout; rect: QRect) {.importcpp: "setGeometry",
    header: "qformlayout.h".}
proc minimumSize*(this: QFormLayout): QSize {.noSideEffect, importcpp: "minimumSize",
    header: "qformlayout.h".}
proc sizeHint*(this: QFormLayout): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qformlayout.h".}
proc invalidate*(this: var QFormLayout) {.importcpp: "invalidate",
                                      header: "qformlayout.h".}
proc hasHeightForWidth*(this: QFormLayout): bool {.noSideEffect,
    importcpp: "hasHeightForWidth", header: "qformlayout.h".}
proc heightForWidth*(this: QFormLayout; width: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qformlayout.h".}
proc expandingDirections*(this: QFormLayout): Orientations {.noSideEffect,
    importcpp: "expandingDirections", header: "qformlayout.h".}
proc count*(this: QFormLayout): cint {.noSideEffect, importcpp: "count",
                                   header: "qformlayout.h".}
proc rowCount*(this: QFormLayout): cint {.noSideEffect, importcpp: "rowCount",
                                      header: "qformlayout.h".}
when 0:
  proc dump*(this: QFormLayout) {.noSideEffect, importcpp: "dump",
                               header: "qformlayout.h".}
q_Declare_Typeinfo(takeRowResult, q_Primitive_Type)
