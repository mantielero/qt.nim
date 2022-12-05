##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of tst_QAbstractItemView"
discard "forward decl of tst_QTreeView"
qt_Require_Config(itemviews)
discard "forward decl of QMenu"
discard "forward decl of QDrag"
discard "forward decl of QEvent"
discard "forward decl of QAbstractItemViewPrivate"
type
  QAbstractItemView* {.importcpp: "QAbstractItemView",
                      header: "qabstractitemview.h", bycopy.} = object of QAbstractScrollArea
    editTriggers* {.importc: "EditTriggers".}: Q_Flag

  QAbstractItemViewSelectionMode* {.size: sizeof(cint), importcpp: "QAbstractItemView::SelectionMode",
                                   header: "qabstractitemview.h".} = enum
    NoSelection, SingleSelection, MultiSelection, ExtendedSelection,
    ContiguousSelection


type
  QAbstractItemViewSelectionBehavior* {.size: sizeof(cint), importcpp: "QAbstractItemView::SelectionBehavior",
                                       header: "qabstractitemview.h".} = enum
    SelectItems, SelectRows, SelectColumns


type
  QAbstractItemViewScrollHint* {.size: sizeof(cint),
                                importcpp: "QAbstractItemView::ScrollHint",
                                header: "qabstractitemview.h".} = enum
    EnsureVisible, PositionAtTop, PositionAtBottom, PositionAtCenter


type
  QAbstractItemViewEditTrigger* {.size: sizeof(cint),
                                 importcpp: "QAbstractItemView::EditTrigger",
                                 header: "qabstractitemview.h".} = enum
    NoEditTriggers = 0, CurrentChanged = 1, DoubleClicked = 2, SelectedClicked = 4,
    EditKeyPressed = 8, AnyKeyPressed = 16, AllEditTriggers = 31


type
  QAbstractItemViewScrollMode* {.size: sizeof(cint),
                                importcpp: "QAbstractItemView::ScrollMode",
                                header: "qabstractitemview.h".} = enum
    ScrollPerItem, ScrollPerPixel


proc constructQAbstractItemView*(parent: ptr QWidget = nil): QAbstractItemView {.
    constructor, importcpp: "QAbstractItemView(@)", header: "qabstractitemview.h".}
proc destroyQAbstractItemView*(this: var QAbstractItemView) {.
    importcpp: "#.~QAbstractItemView()", header: "qabstractitemview.h".}
proc setModel*(this: var QAbstractItemView; model: ptr QAbstractItemModel) {.
    importcpp: "setModel", header: "qabstractitemview.h".}
proc model*(this: QAbstractItemView): ptr QAbstractItemModel {.noSideEffect,
    importcpp: "model", header: "qabstractitemview.h".}
proc setSelectionModel*(this: var QAbstractItemView;
                       selectionModel: ptr QItemSelectionModel) {.
    importcpp: "setSelectionModel", header: "qabstractitemview.h".}
proc selectionModel*(this: QAbstractItemView): ptr QItemSelectionModel {.
    noSideEffect, importcpp: "selectionModel", header: "qabstractitemview.h".}
proc setItemDelegate*(this: var QAbstractItemView;
                     delegate: ptr QAbstractItemDelegate) {.
    importcpp: "setItemDelegate", header: "qabstractitemview.h".}
proc itemDelegate*(this: QAbstractItemView): ptr QAbstractItemDelegate {.
    noSideEffect, importcpp: "itemDelegate", header: "qabstractitemview.h".}
proc setSelectionMode*(this: var QAbstractItemView;
                      mode: QAbstractItemViewSelectionMode) {.
    importcpp: "setSelectionMode", header: "qabstractitemview.h".}
proc selectionMode*(this: QAbstractItemView): QAbstractItemViewSelectionMode {.
    noSideEffect, importcpp: "selectionMode", header: "qabstractitemview.h".}
proc setSelectionBehavior*(this: var QAbstractItemView;
                          behavior: QAbstractItemViewSelectionBehavior) {.
    importcpp: "setSelectionBehavior", header: "qabstractitemview.h".}
proc selectionBehavior*(this: QAbstractItemView): QAbstractItemViewSelectionBehavior {.
    noSideEffect, importcpp: "selectionBehavior", header: "qabstractitemview.h".}
proc currentIndex*(this: QAbstractItemView): QModelIndex {.noSideEffect,
    importcpp: "currentIndex", header: "qabstractitemview.h".}
proc rootIndex*(this: QAbstractItemView): QModelIndex {.noSideEffect,
    importcpp: "rootIndex", header: "qabstractitemview.h".}
proc setEditTriggers*(this: var QAbstractItemView; triggers: EditTriggers) {.
    importcpp: "setEditTriggers", header: "qabstractitemview.h".}
proc editTriggers*(this: QAbstractItemView): EditTriggers {.noSideEffect,
    importcpp: "editTriggers", header: "qabstractitemview.h".}
proc setVerticalScrollMode*(this: var QAbstractItemView;
                           mode: QAbstractItemViewScrollMode) {.
    importcpp: "setVerticalScrollMode", header: "qabstractitemview.h".}
proc verticalScrollMode*(this: QAbstractItemView): QAbstractItemViewScrollMode {.
    noSideEffect, importcpp: "verticalScrollMode", header: "qabstractitemview.h".}
proc resetVerticalScrollMode*(this: var QAbstractItemView) {.
    importcpp: "resetVerticalScrollMode", header: "qabstractitemview.h".}
proc setHorizontalScrollMode*(this: var QAbstractItemView;
                             mode: QAbstractItemViewScrollMode) {.
    importcpp: "setHorizontalScrollMode", header: "qabstractitemview.h".}
proc horizontalScrollMode*(this: QAbstractItemView): QAbstractItemViewScrollMode {.
    noSideEffect, importcpp: "horizontalScrollMode", header: "qabstractitemview.h".}
proc resetHorizontalScrollMode*(this: var QAbstractItemView) {.
    importcpp: "resetHorizontalScrollMode", header: "qabstractitemview.h".}
proc setAutoScroll*(this: var QAbstractItemView; enable: bool) {.
    importcpp: "setAutoScroll", header: "qabstractitemview.h".}
proc hasAutoScroll*(this: QAbstractItemView): bool {.noSideEffect,
    importcpp: "hasAutoScroll", header: "qabstractitemview.h".}
proc setAutoScrollMargin*(this: var QAbstractItemView; margin: cint) {.
    importcpp: "setAutoScrollMargin", header: "qabstractitemview.h".}
proc autoScrollMargin*(this: QAbstractItemView): cint {.noSideEffect,
    importcpp: "autoScrollMargin", header: "qabstractitemview.h".}
proc setTabKeyNavigation*(this: var QAbstractItemView; enable: bool) {.
    importcpp: "setTabKeyNavigation", header: "qabstractitemview.h".}
proc tabKeyNavigation*(this: QAbstractItemView): bool {.noSideEffect,
    importcpp: "tabKeyNavigation", header: "qabstractitemview.h".}
proc setDropIndicatorShown*(this: var QAbstractItemView; enable: bool) {.
    importcpp: "setDropIndicatorShown", header: "qabstractitemview.h".}
proc showDropIndicator*(this: QAbstractItemView): bool {.noSideEffect,
    importcpp: "showDropIndicator", header: "qabstractitemview.h".}
proc setDragEnabled*(this: var QAbstractItemView; enable: bool) {.
    importcpp: "setDragEnabled", header: "qabstractitemview.h".}
proc dragEnabled*(this: QAbstractItemView): bool {.noSideEffect,
    importcpp: "dragEnabled", header: "qabstractitemview.h".}
proc setDragDropOverwriteMode*(this: var QAbstractItemView; overwrite: bool) {.
    importcpp: "setDragDropOverwriteMode", header: "qabstractitemview.h".}
proc dragDropOverwriteMode*(this: QAbstractItemView): bool {.noSideEffect,
    importcpp: "dragDropOverwriteMode", header: "qabstractitemview.h".}
type
  QAbstractItemViewDragDropMode* {.size: sizeof(cint),
                                  importcpp: "QAbstractItemView::DragDropMode",
                                  header: "qabstractitemview.h".} = enum
    NoDragDrop, DragOnly, DropOnly, DragDrop, InternalMove


proc setDragDropMode*(this: var QAbstractItemView;
                     behavior: QAbstractItemViewDragDropMode) {.
    importcpp: "setDragDropMode", header: "qabstractitemview.h".}
proc dragDropMode*(this: QAbstractItemView): QAbstractItemViewDragDropMode {.
    noSideEffect, importcpp: "dragDropMode", header: "qabstractitemview.h".}
proc setDefaultDropAction*(this: var QAbstractItemView; dropAction: DropAction) {.
    importcpp: "setDefaultDropAction", header: "qabstractitemview.h".}
proc defaultDropAction*(this: QAbstractItemView): DropAction {.noSideEffect,
    importcpp: "defaultDropAction", header: "qabstractitemview.h".}
proc setAlternatingRowColors*(this: var QAbstractItemView; enable: bool) {.
    importcpp: "setAlternatingRowColors", header: "qabstractitemview.h".}
proc alternatingRowColors*(this: QAbstractItemView): bool {.noSideEffect,
    importcpp: "alternatingRowColors", header: "qabstractitemview.h".}
proc setIconSize*(this: var QAbstractItemView; size: QSize) {.
    importcpp: "setIconSize", header: "qabstractitemview.h".}
proc iconSize*(this: QAbstractItemView): QSize {.noSideEffect, importcpp: "iconSize",
    header: "qabstractitemview.h".}
proc setTextElideMode*(this: var QAbstractItemView; mode: TextElideMode) {.
    importcpp: "setTextElideMode", header: "qabstractitemview.h".}
proc textElideMode*(this: QAbstractItemView): TextElideMode {.noSideEffect,
    importcpp: "textElideMode", header: "qabstractitemview.h".}
proc keyboardSearch*(this: var QAbstractItemView; search: QString) {.
    importcpp: "keyboardSearch", header: "qabstractitemview.h".}
proc visualRect*(this: QAbstractItemView; index: QModelIndex): QRect {.noSideEffect,
    importcpp: "visualRect", header: "qabstractitemview.h".}
proc scrollTo*(this: var QAbstractItemView; index: QModelIndex;
              hint: QAbstractItemViewScrollHint = ensureVisible) {.
    importcpp: "scrollTo", header: "qabstractitemview.h".}
proc indexAt*(this: QAbstractItemView; point: QPoint): QModelIndex {.noSideEffect,
    importcpp: "indexAt", header: "qabstractitemview.h".}
proc sizeHintForIndex*(this: QAbstractItemView; index: QModelIndex): QSize {.
    noSideEffect, importcpp: "sizeHintForIndex", header: "qabstractitemview.h".}
proc sizeHintForRow*(this: QAbstractItemView; row: cint): cint {.noSideEffect,
    importcpp: "sizeHintForRow", header: "qabstractitemview.h".}
proc sizeHintForColumn*(this: QAbstractItemView; column: cint): cint {.noSideEffect,
    importcpp: "sizeHintForColumn", header: "qabstractitemview.h".}
proc openPersistentEditor*(this: var QAbstractItemView; index: QModelIndex) {.
    importcpp: "openPersistentEditor", header: "qabstractitemview.h".}
proc closePersistentEditor*(this: var QAbstractItemView; index: QModelIndex) {.
    importcpp: "closePersistentEditor", header: "qabstractitemview.h".}
proc isPersistentEditorOpen*(this: QAbstractItemView; index: QModelIndex): bool {.
    noSideEffect, importcpp: "isPersistentEditorOpen",
    header: "qabstractitemview.h".}
proc setIndexWidget*(this: var QAbstractItemView; index: QModelIndex;
                    widget: ptr QWidget) {.importcpp: "setIndexWidget",
                                        header: "qabstractitemview.h".}
proc indexWidget*(this: QAbstractItemView; index: QModelIndex): ptr QWidget {.
    noSideEffect, importcpp: "indexWidget", header: "qabstractitemview.h".}
proc setItemDelegateForRow*(this: var QAbstractItemView; row: cint;
                           delegate: ptr QAbstractItemDelegate) {.
    importcpp: "setItemDelegateForRow", header: "qabstractitemview.h".}
proc itemDelegateForRow*(this: QAbstractItemView; row: cint): ptr QAbstractItemDelegate {.
    noSideEffect, importcpp: "itemDelegateForRow", header: "qabstractitemview.h".}
proc setItemDelegateForColumn*(this: var QAbstractItemView; column: cint;
                              delegate: ptr QAbstractItemDelegate) {.
    importcpp: "setItemDelegateForColumn", header: "qabstractitemview.h".}
proc itemDelegateForColumn*(this: QAbstractItemView; column: cint): ptr QAbstractItemDelegate {.
    noSideEffect, importcpp: "itemDelegateForColumn", header: "qabstractitemview.h".}
proc itemDelegate*(this: QAbstractItemView; index: QModelIndex): ptr QAbstractItemDelegate {.
    noSideEffect, importcpp: "itemDelegate", header: "qabstractitemview.h".}
proc itemDelegateForIndex*(this: QAbstractItemView; index: QModelIndex): ptr QAbstractItemDelegate {.
    noSideEffect, importcpp: "itemDelegateForIndex", header: "qabstractitemview.h".}
proc inputMethodQuery*(this: QAbstractItemView; query: InputMethodQuery): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qabstractitemview.h".}
## using statement

proc reset*(this: var QAbstractItemView) {.importcpp: "reset",
                                       header: "qabstractitemview.h".}
proc setRootIndex*(this: var QAbstractItemView; index: QModelIndex) {.
    importcpp: "setRootIndex", header: "qabstractitemview.h".}
proc doItemsLayout*(this: var QAbstractItemView) {.importcpp: "doItemsLayout",
    header: "qabstractitemview.h".}
proc selectAll*(this: var QAbstractItemView) {.importcpp: "selectAll",
    header: "qabstractitemview.h".}
proc edit*(this: var QAbstractItemView; index: QModelIndex) {.importcpp: "edit",
    header: "qabstractitemview.h".}
proc clearSelection*(this: var QAbstractItemView) {.importcpp: "clearSelection",
    header: "qabstractitemview.h".}
proc setCurrentIndex*(this: var QAbstractItemView; index: QModelIndex) {.
    importcpp: "setCurrentIndex", header: "qabstractitemview.h".}
proc scrollToTop*(this: var QAbstractItemView) {.importcpp: "scrollToTop",
    header: "qabstractitemview.h".}
proc scrollToBottom*(this: var QAbstractItemView) {.importcpp: "scrollToBottom",
    header: "qabstractitemview.h".}
proc update*(this: var QAbstractItemView; index: QModelIndex) {.importcpp: "update",
    header: "qabstractitemview.h".}