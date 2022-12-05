##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(tableview)
discard "forward decl of QHeaderView"
discard "forward decl of QTableViewPrivate"
type
  QTableView* {.importcpp: "QTableView", header: "qtableview.h", bycopy.} = object of QAbstractItemView


proc constructQTableView*(parent: ptr QWidget = nil): QTableView {.constructor,
    importcpp: "QTableView(@)", header: "qtableview.h".}
proc destroyQTableView*(this: var QTableView) {.importcpp: "#.~QTableView()",
    header: "qtableview.h".}
proc setModel*(this: var QTableView; model: ptr QAbstractItemModel) {.
    importcpp: "setModel", header: "qtableview.h".}
proc setRootIndex*(this: var QTableView; index: QModelIndex) {.
    importcpp: "setRootIndex", header: "qtableview.h".}
proc setSelectionModel*(this: var QTableView;
                       selectionModel: ptr QItemSelectionModel) {.
    importcpp: "setSelectionModel", header: "qtableview.h".}
proc doItemsLayout*(this: var QTableView) {.importcpp: "doItemsLayout",
                                        header: "qtableview.h".}
proc horizontalHeader*(this: QTableView): ptr QHeaderView {.noSideEffect,
    importcpp: "horizontalHeader", header: "qtableview.h".}
proc verticalHeader*(this: QTableView): ptr QHeaderView {.noSideEffect,
    importcpp: "verticalHeader", header: "qtableview.h".}
proc setHorizontalHeader*(this: var QTableView; header: ptr QHeaderView) {.
    importcpp: "setHorizontalHeader", header: "qtableview.h".}
proc setVerticalHeader*(this: var QTableView; header: ptr QHeaderView) {.
    importcpp: "setVerticalHeader", header: "qtableview.h".}
proc rowViewportPosition*(this: QTableView; row: cint): cint {.noSideEffect,
    importcpp: "rowViewportPosition", header: "qtableview.h".}
proc rowAt*(this: QTableView; y: cint): cint {.noSideEffect, importcpp: "rowAt",
    header: "qtableview.h".}
proc setRowHeight*(this: var QTableView; row: cint; height: cint) {.
    importcpp: "setRowHeight", header: "qtableview.h".}
proc rowHeight*(this: QTableView; row: cint): cint {.noSideEffect,
    importcpp: "rowHeight", header: "qtableview.h".}
proc columnViewportPosition*(this: QTableView; column: cint): cint {.noSideEffect,
    importcpp: "columnViewportPosition", header: "qtableview.h".}
proc columnAt*(this: QTableView; x: cint): cint {.noSideEffect, importcpp: "columnAt",
    header: "qtableview.h".}
proc setColumnWidth*(this: var QTableView; column: cint; width: cint) {.
    importcpp: "setColumnWidth", header: "qtableview.h".}
proc columnWidth*(this: QTableView; column: cint): cint {.noSideEffect,
    importcpp: "columnWidth", header: "qtableview.h".}
proc isRowHidden*(this: QTableView; row: cint): bool {.noSideEffect,
    importcpp: "isRowHidden", header: "qtableview.h".}
proc setRowHidden*(this: var QTableView; row: cint; hide: bool) {.
    importcpp: "setRowHidden", header: "qtableview.h".}
proc isColumnHidden*(this: QTableView; column: cint): bool {.noSideEffect,
    importcpp: "isColumnHidden", header: "qtableview.h".}
proc setColumnHidden*(this: var QTableView; column: cint; hide: bool) {.
    importcpp: "setColumnHidden", header: "qtableview.h".}
proc setSortingEnabled*(this: var QTableView; enable: bool) {.
    importcpp: "setSortingEnabled", header: "qtableview.h".}
proc isSortingEnabled*(this: QTableView): bool {.noSideEffect,
    importcpp: "isSortingEnabled", header: "qtableview.h".}
proc showGrid*(this: QTableView): bool {.noSideEffect, importcpp: "showGrid",
                                     header: "qtableview.h".}
proc gridStyle*(this: QTableView): PenStyle {.noSideEffect, importcpp: "gridStyle",
    header: "qtableview.h".}
proc setGridStyle*(this: var QTableView; style: PenStyle) {.importcpp: "setGridStyle",
    header: "qtableview.h".}
proc setWordWrap*(this: var QTableView; on: bool) {.importcpp: "setWordWrap",
    header: "qtableview.h".}
proc wordWrap*(this: QTableView): bool {.noSideEffect, importcpp: "wordWrap",
                                     header: "qtableview.h".}
proc setCornerButtonEnabled*(this: var QTableView; enable: bool) {.
    importcpp: "setCornerButtonEnabled", header: "qtableview.h".}
proc isCornerButtonEnabled*(this: QTableView): bool {.noSideEffect,
    importcpp: "isCornerButtonEnabled", header: "qtableview.h".}
proc visualRect*(this: QTableView; index: QModelIndex): QRect {.noSideEffect,
    importcpp: "visualRect", header: "qtableview.h".}
proc scrollTo*(this: var QTableView; index: QModelIndex;
              hint: ScrollHint = ensureVisible) {.importcpp: "scrollTo",
    header: "qtableview.h".}
proc indexAt*(this: QTableView; p: QPoint): QModelIndex {.noSideEffect,
    importcpp: "indexAt", header: "qtableview.h".}
proc setSpan*(this: var QTableView; row: cint; column: cint; rowSpan: cint;
             columnSpan: cint) {.importcpp: "setSpan", header: "qtableview.h".}
proc rowSpan*(this: QTableView; row: cint; column: cint): cint {.noSideEffect,
    importcpp: "rowSpan", header: "qtableview.h".}
proc columnSpan*(this: QTableView; row: cint; column: cint): cint {.noSideEffect,
    importcpp: "columnSpan", header: "qtableview.h".}
proc clearSpans*(this: var QTableView) {.importcpp: "clearSpans",
                                     header: "qtableview.h".}
proc selectRow*(this: var QTableView; row: cint) {.importcpp: "selectRow",
    header: "qtableview.h".}
proc selectColumn*(this: var QTableView; column: cint) {.importcpp: "selectColumn",
    header: "qtableview.h".}
proc hideRow*(this: var QTableView; row: cint) {.importcpp: "hideRow",
    header: "qtableview.h".}
proc hideColumn*(this: var QTableView; column: cint) {.importcpp: "hideColumn",
    header: "qtableview.h".}
proc showRow*(this: var QTableView; row: cint) {.importcpp: "showRow",
    header: "qtableview.h".}
proc showColumn*(this: var QTableView; column: cint) {.importcpp: "showColumn",
    header: "qtableview.h".}
proc resizeRowToContents*(this: var QTableView; row: cint) {.
    importcpp: "resizeRowToContents", header: "qtableview.h".}
proc resizeRowsToContents*(this: var QTableView) {.
    importcpp: "resizeRowsToContents", header: "qtableview.h".}
proc resizeColumnToContents*(this: var QTableView; column: cint) {.
    importcpp: "resizeColumnToContents", header: "qtableview.h".}
proc resizeColumnsToContents*(this: var QTableView) {.
    importcpp: "resizeColumnsToContents", header: "qtableview.h".}
proc sortByColumn*(this: var QTableView; column: cint; order: SortOrder) {.
    importcpp: "sortByColumn", header: "qtableview.h".}
proc setShowGrid*(this: var QTableView; show: bool) {.importcpp: "setShowGrid",
    header: "qtableview.h".}