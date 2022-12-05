##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(columnview)
discard "forward decl of QColumnViewPrivate"
type
  QColumnView* {.importcpp: "QColumnView", header: "qcolumnview.h", bycopy.} = object of QAbstractItemView


proc constructQColumnView*(parent: ptr QWidget = nil): QColumnView {.constructor,
    importcpp: "QColumnView(@)", header: "qcolumnview.h".}
proc destroyQColumnView*(this: var QColumnView) {.importcpp: "#.~QColumnView()",
    header: "qcolumnview.h".}
proc indexAt*(this: QColumnView; point: QPoint): QModelIndex {.noSideEffect,
    importcpp: "indexAt", header: "qcolumnview.h".}
proc scrollTo*(this: var QColumnView; index: QModelIndex;
              hint: ScrollHint = ensureVisible) {.importcpp: "scrollTo",
    header: "qcolumnview.h".}
proc sizeHint*(this: QColumnView): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qcolumnview.h".}
proc visualRect*(this: QColumnView; index: QModelIndex): QRect {.noSideEffect,
    importcpp: "visualRect", header: "qcolumnview.h".}
proc setModel*(this: var QColumnView; model: ptr QAbstractItemModel) {.
    importcpp: "setModel", header: "qcolumnview.h".}
proc setSelectionModel*(this: var QColumnView;
                       selectionModel: ptr QItemSelectionModel) {.
    importcpp: "setSelectionModel", header: "qcolumnview.h".}
proc setRootIndex*(this: var QColumnView; index: QModelIndex) {.
    importcpp: "setRootIndex", header: "qcolumnview.h".}
proc selectAll*(this: var QColumnView) {.importcpp: "selectAll",
                                     header: "qcolumnview.h".}
proc setResizeGripsVisible*(this: var QColumnView; visible: bool) {.
    importcpp: "setResizeGripsVisible", header: "qcolumnview.h".}
proc resizeGripsVisible*(this: QColumnView): bool {.noSideEffect,
    importcpp: "resizeGripsVisible", header: "qcolumnview.h".}
proc previewWidget*(this: QColumnView): ptr QWidget {.noSideEffect,
    importcpp: "previewWidget", header: "qcolumnview.h".}
proc setPreviewWidget*(this: var QColumnView; widget: ptr QWidget) {.
    importcpp: "setPreviewWidget", header: "qcolumnview.h".}
proc setColumnWidths*(this: var QColumnView; list: QList[cint]) {.
    importcpp: "setColumnWidths", header: "qcolumnview.h".}
proc columnWidths*(this: QColumnView): QList[cint] {.noSideEffect,
    importcpp: "columnWidths", header: "qcolumnview.h".}