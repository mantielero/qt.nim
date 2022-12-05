##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(itemviews)
discard "forward decl of QPainter"
discard "forward decl of QModelIndex"
discard "forward decl of QAbstractItemModel"
discard "forward decl of QAbstractItemView"
discard "forward decl of QHelpEvent"
discard "forward decl of QAbstractItemDelegatePrivate"
type
  QAbstractItemDelegate* {.importcpp: "QAbstractItemDelegate",
                          header: "qabstractitemdelegate.h", bycopy.} = object of QObject

  QAbstractItemDelegateEndEditHint* {.size: sizeof(cint), importcpp: "QAbstractItemDelegate::EndEditHint",
                                     header: "qabstractitemdelegate.h".} = enum
    NoHint, EditNextItem, EditPreviousItem, SubmitModelCache, RevertModelCache


proc constructQAbstractItemDelegate*(parent: ptr QObject = nil): QAbstractItemDelegate {.
    constructor, importcpp: "QAbstractItemDelegate(@)",
    header: "qabstractitemdelegate.h".}
proc destroyQAbstractItemDelegate*(this: var QAbstractItemDelegate) {.
    importcpp: "#.~QAbstractItemDelegate()", header: "qabstractitemdelegate.h".}
proc paint*(this: QAbstractItemDelegate; painter: ptr QPainter;
           option: QStyleOptionViewItem; index: QModelIndex) {.noSideEffect,
    importcpp: "paint", header: "qabstractitemdelegate.h".}
proc sizeHint*(this: QAbstractItemDelegate; option: QStyleOptionViewItem;
              index: QModelIndex): QSize {.noSideEffect, importcpp: "sizeHint",
                                        header: "qabstractitemdelegate.h".}
proc createEditor*(this: QAbstractItemDelegate; parent: ptr QWidget;
                  option: QStyleOptionViewItem; index: QModelIndex): ptr QWidget {.
    noSideEffect, importcpp: "createEditor", header: "qabstractitemdelegate.h".}
proc destroyEditor*(this: QAbstractItemDelegate; editor: ptr QWidget;
                   index: QModelIndex) {.noSideEffect, importcpp: "destroyEditor",
                                       header: "qabstractitemdelegate.h".}
proc setEditorData*(this: QAbstractItemDelegate; editor: ptr QWidget;
                   index: QModelIndex) {.noSideEffect, importcpp: "setEditorData",
                                       header: "qabstractitemdelegate.h".}
proc setModelData*(this: QAbstractItemDelegate; editor: ptr QWidget;
                  model: ptr QAbstractItemModel; index: QModelIndex) {.noSideEffect,
    importcpp: "setModelData", header: "qabstractitemdelegate.h".}
proc updateEditorGeometry*(this: QAbstractItemDelegate; editor: ptr QWidget;
                          option: QStyleOptionViewItem; index: QModelIndex) {.
    noSideEffect, importcpp: "updateEditorGeometry",
    header: "qabstractitemdelegate.h".}
proc editorEvent*(this: var QAbstractItemDelegate; event: ptr QEvent;
                 model: ptr QAbstractItemModel; option: QStyleOptionViewItem;
                 index: QModelIndex): bool {.importcpp: "editorEvent",
    header: "qabstractitemdelegate.h".}
proc helpEvent*(this: var QAbstractItemDelegate; event: ptr QHelpEvent;
               view: ptr QAbstractItemView; option: QStyleOptionViewItem;
               index: QModelIndex): bool {.importcpp: "helpEvent",
                                        header: "qabstractitemdelegate.h".}
proc paintingRoles*(this: QAbstractItemDelegate): QList[cint] {.noSideEffect,
    importcpp: "paintingRoles", header: "qabstractitemdelegate.h".}