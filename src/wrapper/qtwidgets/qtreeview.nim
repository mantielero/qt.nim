import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of tst_QTreeView"
qt_Require_Config(treeview)
discard "forward decl of QTreeViewPrivate"
discard "forward decl of QHeaderView"


proc constructQTreeView*(parent: ptr QWidget = nil): QTreeView {.constructor,
    importcpp: "QTreeView(@)", header: "qtreeview.h".}
proc destroyQTreeView*(this: var QTreeView) {.importcpp: "#.~QTreeView()",
    header: "qtreeview.h".}
proc setModel*(this: var QTreeView; model: ptr QAbstractItemModel) {.
    importcpp: "setModel", header: "qtreeview.h".}
proc setRootIndex*(this: var QTreeView; index: QModelIndex) {.
    importcpp: "setRootIndex", header: "qtreeview.h".}
proc setSelectionModel*(this: var QTreeView; selectionModel: ptr QItemSelectionModel) {.
    importcpp: "setSelectionModel", header: "qtreeview.h".}
proc header*(this: QTreeView): ptr QHeaderView {.noSideEffect, importcpp: "header",
    header: "qtreeview.h".}
proc setHeader*(this: var QTreeView; header: ptr QHeaderView) {.importcpp: "setHeader",
    header: "qtreeview.h".}
proc autoExpandDelay*(this: QTreeView): cint {.noSideEffect,
    importcpp: "autoExpandDelay", header: "qtreeview.h".}
proc setAutoExpandDelay*(this: var QTreeView; delay: cint) {.
    importcpp: "setAutoExpandDelay", header: "qtreeview.h".}
proc indentation*(this: QTreeView): cint {.noSideEffect, importcpp: "indentation",
                                       header: "qtreeview.h".}
proc setIndentation*(this: var QTreeView; i: cint) {.importcpp: "setIndentation",
    header: "qtreeview.h".}
proc resetIndentation*(this: var QTreeView) {.importcpp: "resetIndentation",
    header: "qtreeview.h".}
proc rootIsDecorated*(this: QTreeView): bool {.noSideEffect,
    importcpp: "rootIsDecorated", header: "qtreeview.h".}
proc setRootIsDecorated*(this: var QTreeView; show: bool) {.
    importcpp: "setRootIsDecorated", header: "qtreeview.h".}
proc uniformRowHeights*(this: QTreeView): bool {.noSideEffect,
    importcpp: "uniformRowHeights", header: "qtreeview.h".}
proc setUniformRowHeights*(this: var QTreeView; uniform: bool) {.
    importcpp: "setUniformRowHeights", header: "qtreeview.h".}
proc itemsExpandable*(this: QTreeView): bool {.noSideEffect,
    importcpp: "itemsExpandable", header: "qtreeview.h".}
proc setItemsExpandable*(this: var QTreeView; enable: bool) {.
    importcpp: "setItemsExpandable", header: "qtreeview.h".}
proc expandsOnDoubleClick*(this: QTreeView): bool {.noSideEffect,
    importcpp: "expandsOnDoubleClick", header: "qtreeview.h".}
proc setExpandsOnDoubleClick*(this: var QTreeView; enable: bool) {.
    importcpp: "setExpandsOnDoubleClick", header: "qtreeview.h".}
proc columnViewportPosition*(this: QTreeView; column: cint): cint {.noSideEffect,
    importcpp: "columnViewportPosition", header: "qtreeview.h".}
proc columnWidth*(this: QTreeView; column: cint): cint {.noSideEffect,
    importcpp: "columnWidth", header: "qtreeview.h".}
proc setColumnWidth*(this: var QTreeView; column: cint; width: cint) {.
    importcpp: "setColumnWidth", header: "qtreeview.h".}
proc columnAt*(this: QTreeView; x: cint): cint {.noSideEffect, importcpp: "columnAt",
    header: "qtreeview.h".}
proc isColumnHidden*(this: QTreeView; column: cint): bool {.noSideEffect,
    importcpp: "isColumnHidden", header: "qtreeview.h".}
proc setColumnHidden*(this: var QTreeView; column: cint; hide: bool) {.
    importcpp: "setColumnHidden", header: "qtreeview.h".}
proc isHeaderHidden*(this: QTreeView): bool {.noSideEffect,
    importcpp: "isHeaderHidden", header: "qtreeview.h".}
proc setHeaderHidden*(this: var QTreeView; hide: bool) {.importcpp: "setHeaderHidden",
    header: "qtreeview.h".}
proc isRowHidden*(this: QTreeView; row: cint; parent: QModelIndex): bool {.noSideEffect,
    importcpp: "isRowHidden", header: "qtreeview.h".}
proc setRowHidden*(this: var QTreeView; row: cint; parent: QModelIndex; hide: bool) {.
    importcpp: "setRowHidden", header: "qtreeview.h".}
proc isFirstColumnSpanned*(this: QTreeView; row: cint; parent: QModelIndex): bool {.
    noSideEffect, importcpp: "isFirstColumnSpanned", header: "qtreeview.h".}
proc setFirstColumnSpanned*(this: var QTreeView; row: cint; parent: QModelIndex;
                           span: bool) {.importcpp: "setFirstColumnSpanned",
                                       header: "qtreeview.h".}
proc isExpanded*(this: QTreeView; index: QModelIndex): bool {.noSideEffect,
    importcpp: "isExpanded", header: "qtreeview.h".}
proc setExpanded*(this: var QTreeView; index: QModelIndex; expand: bool) {.
    importcpp: "setExpanded", header: "qtreeview.h".}
proc setSortingEnabled*(this: var QTreeView; enable: bool) {.
    importcpp: "setSortingEnabled", header: "qtreeview.h".}
proc isSortingEnabled*(this: QTreeView): bool {.noSideEffect,
    importcpp: "isSortingEnabled", header: "qtreeview.h".}
proc setAnimated*(this: var QTreeView; enable: bool) {.importcpp: "setAnimated",
    header: "qtreeview.h".}
proc isAnimated*(this: QTreeView): bool {.noSideEffect, importcpp: "isAnimated",
                                      header: "qtreeview.h".}
proc setAllColumnsShowFocus*(this: var QTreeView; enable: bool) {.
    importcpp: "setAllColumnsShowFocus", header: "qtreeview.h".}
proc allColumnsShowFocus*(this: QTreeView): bool {.noSideEffect,
    importcpp: "allColumnsShowFocus", header: "qtreeview.h".}
proc setWordWrap*(this: var QTreeView; on: bool) {.importcpp: "setWordWrap",
    header: "qtreeview.h".}
proc wordWrap*(this: QTreeView): bool {.noSideEffect, importcpp: "wordWrap",
                                    header: "qtreeview.h".}
proc setTreePosition*(this: var QTreeView; logicalIndex: cint) {.
    importcpp: "setTreePosition", header: "qtreeview.h".}
proc treePosition*(this: QTreeView): cint {.noSideEffect, importcpp: "treePosition",
                                        header: "qtreeview.h".}
proc keyboardSearch*(this: var QTreeView; search: QString) {.
    importcpp: "keyboardSearch", header: "qtreeview.h".}
proc visualRect*(this: QTreeView; index: QModelIndex): QRect {.noSideEffect,
    importcpp: "visualRect", header: "qtreeview.h".}
proc scrollTo*(this: var QTreeView; index: QModelIndex;
              hint: ScrollHint = ensureVisible) {.importcpp: "scrollTo",
    header: "qtreeview.h".}
proc indexAt*(this: QTreeView; p: QPoint): QModelIndex {.noSideEffect,
    importcpp: "indexAt", header: "qtreeview.h".}
proc indexAbove*(this: QTreeView; index: QModelIndex): QModelIndex {.noSideEffect,
    importcpp: "indexAbove", header: "qtreeview.h".}
proc indexBelow*(this: QTreeView; index: QModelIndex): QModelIndex {.noSideEffect,
    importcpp: "indexBelow", header: "qtreeview.h".}
proc doItemsLayout*(this: var QTreeView) {.importcpp: "doItemsLayout",
                                       header: "qtreeview.h".}
proc reset*(this: var QTreeView) {.importcpp: "reset", header: "qtreeview.h".}
proc dataChanged*(this: var QTreeView; topLeft: QModelIndex; bottomRight: QModelIndex;
                 roles: QList[cint] = qList[cint]()) {.importcpp: "dataChanged",
    header: "qtreeview.h".}
proc selectAll*(this: var QTreeView) {.importcpp: "selectAll", header: "qtreeview.h".}
proc hideColumn*(this: var QTreeView; column: cint) {.importcpp: "hideColumn",
    header: "qtreeview.h".}
proc showColumn*(this: var QTreeView; column: cint) {.importcpp: "showColumn",
    header: "qtreeview.h".}
proc expand*(this: var QTreeView; index: QModelIndex) {.importcpp: "expand",
    header: "qtreeview.h".}
proc collapse*(this: var QTreeView; index: QModelIndex) {.importcpp: "collapse",
    header: "qtreeview.h".}
proc resizeColumnToContents*(this: var QTreeView; column: cint) {.
    importcpp: "resizeColumnToContents", header: "qtreeview.h".}
proc sortByColumn*(this: var QTreeView; column: cint; order: SortOrder) {.
    importcpp: "sortByColumn", header: "qtreeview.h".}
proc expandAll*(this: var QTreeView) {.importcpp: "expandAll", header: "qtreeview.h".}
proc expandRecursively*(this: var QTreeView; index: QModelIndex; depth: cint = -1) {.
    importcpp: "expandRecursively", header: "qtreeview.h".}
proc collapseAll*(this: var QTreeView) {.importcpp: "collapseAll",
                                     header: "qtreeview.h".}
proc expandToDepth*(this: var QTreeView; depth: cint) {.importcpp: "expandToDepth",
    header: "qtreeview.h".}
