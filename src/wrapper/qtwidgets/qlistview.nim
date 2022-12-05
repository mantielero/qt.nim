import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(listview)
discard "forward decl of QListViewPrivate"











proc constructQListView*(parent: ptr QWidget = nil): QListView {.constructor,
    importcpp: "QListView(@)", header: "qlistview.h".}
proc destroyQListView*(this: var QListView) {.importcpp: "#.~QListView()",
    header: "qlistview.h".}
proc setMovement*(this: var QListView; movement: QListViewMovement) {.
    importcpp: "setMovement", header: "qlistview.h".}
proc movement*(this: QListView): QListViewMovement {.noSideEffect,
    importcpp: "movement", header: "qlistview.h".}
proc setFlow*(this: var QListView; flow: QListViewFlow) {.importcpp: "setFlow",
    header: "qlistview.h".}
proc flow*(this: QListView): QListViewFlow {.noSideEffect, importcpp: "flow",
    header: "qlistview.h".}
proc setWrapping*(this: var QListView; enable: bool) {.importcpp: "setWrapping",
    header: "qlistview.h".}
proc isWrapping*(this: QListView): bool {.noSideEffect, importcpp: "isWrapping",
                                      header: "qlistview.h".}
proc setResizeMode*(this: var QListView; mode: QListViewResizeMode) {.
    importcpp: "setResizeMode", header: "qlistview.h".}
proc resizeMode*(this: QListView): QListViewResizeMode {.noSideEffect,
    importcpp: "resizeMode", header: "qlistview.h".}
proc setLayoutMode*(this: var QListView; mode: QListViewLayoutMode) {.
    importcpp: "setLayoutMode", header: "qlistview.h".}
proc layoutMode*(this: QListView): QListViewLayoutMode {.noSideEffect,
    importcpp: "layoutMode", header: "qlistview.h".}
proc setSpacing*(this: var QListView; space: cint) {.importcpp: "setSpacing",
    header: "qlistview.h".}
proc spacing*(this: QListView): cint {.noSideEffect, importcpp: "spacing",
                                   header: "qlistview.h".}
proc setBatchSize*(this: var QListView; batchSize: cint) {.importcpp: "setBatchSize",
    header: "qlistview.h".}
proc batchSize*(this: QListView): cint {.noSideEffect, importcpp: "batchSize",
                                     header: "qlistview.h".}
proc setGridSize*(this: var QListView; size: QSize) {.importcpp: "setGridSize",
    header: "qlistview.h".}
proc gridSize*(this: QListView): QSize {.noSideEffect, importcpp: "gridSize",
                                     header: "qlistview.h".}
proc setViewMode*(this: var QListView; mode: QListViewViewMode) {.
    importcpp: "setViewMode", header: "qlistview.h".}
proc viewMode*(this: QListView): QListViewViewMode {.noSideEffect,
    importcpp: "viewMode", header: "qlistview.h".}
proc clearPropertyFlags*(this: var QListView) {.importcpp: "clearPropertyFlags",
    header: "qlistview.h".}
proc isRowHidden*(this: QListView; row: cint): bool {.noSideEffect,
    importcpp: "isRowHidden", header: "qlistview.h".}
proc setRowHidden*(this: var QListView; row: cint; hide: bool) {.
    importcpp: "setRowHidden", header: "qlistview.h".}
proc setModelColumn*(this: var QListView; column: cint) {.importcpp: "setModelColumn",
    header: "qlistview.h".}
proc modelColumn*(this: QListView): cint {.noSideEffect, importcpp: "modelColumn",
                                       header: "qlistview.h".}
proc setUniformItemSizes*(this: var QListView; enable: bool) {.
    importcpp: "setUniformItemSizes", header: "qlistview.h".}
proc uniformItemSizes*(this: QListView): bool {.noSideEffect,
    importcpp: "uniformItemSizes", header: "qlistview.h".}
proc setWordWrap*(this: var QListView; on: bool) {.importcpp: "setWordWrap",
    header: "qlistview.h".}
proc wordWrap*(this: QListView): bool {.noSideEffect, importcpp: "wordWrap",
                                    header: "qlistview.h".}
proc setSelectionRectVisible*(this: var QListView; show: bool) {.
    importcpp: "setSelectionRectVisible", header: "qlistview.h".}
proc isSelectionRectVisible*(this: QListView): bool {.noSideEffect,
    importcpp: "isSelectionRectVisible", header: "qlistview.h".}
proc setItemAlignment*(this: var QListView; alignment: Alignment) {.
    importcpp: "setItemAlignment", header: "qlistview.h".}
proc itemAlignment*(this: QListView): Alignment {.noSideEffect,
    importcpp: "itemAlignment", header: "qlistview.h".}
proc visualRect*(this: QListView; index: QModelIndex): QRect {.noSideEffect,
    importcpp: "visualRect", header: "qlistview.h".}
proc scrollTo*(this: var QListView; index: QModelIndex;
              hint: ScrollHint = ensureVisible) {.importcpp: "scrollTo",
    header: "qlistview.h".}
proc indexAt*(this: QListView; p: QPoint): QModelIndex {.noSideEffect,
    importcpp: "indexAt", header: "qlistview.h".}
proc doItemsLayout*(this: var QListView) {.importcpp: "doItemsLayout",
                                       header: "qlistview.h".}
proc reset*(this: var QListView) {.importcpp: "reset", header: "qlistview.h".}
proc setRootIndex*(this: var QListView; index: QModelIndex) {.
    importcpp: "setRootIndex", header: "qlistview.h".}
