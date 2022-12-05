##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(itemviews)
discard "forward decl of QStyledItemDelegatePrivate"
discard "forward decl of QItemEditorFactory"
type
  QStyledItemDelegate* {.importcpp: "QStyledItemDelegate",
                        header: "qstyleditemdelegate.h", bycopy.} = object of QAbstractItemDelegate


proc constructQStyledItemDelegate*(parent: ptr QObject = nil): QStyledItemDelegate {.
    constructor, importcpp: "QStyledItemDelegate(@)",
    header: "qstyleditemdelegate.h".}
proc destroyQStyledItemDelegate*(this: var QStyledItemDelegate) {.
    importcpp: "#.~QStyledItemDelegate()", header: "qstyleditemdelegate.h".}
proc paint*(this: QStyledItemDelegate; painter: ptr QPainter;
           option: QStyleOptionViewItem; index: QModelIndex) {.noSideEffect,
    importcpp: "paint", header: "qstyleditemdelegate.h".}
proc sizeHint*(this: QStyledItemDelegate; option: QStyleOptionViewItem;
              index: QModelIndex): QSize {.noSideEffect, importcpp: "sizeHint",
                                        header: "qstyleditemdelegate.h".}
proc createEditor*(this: QStyledItemDelegate; parent: ptr QWidget;
                  option: QStyleOptionViewItem; index: QModelIndex): ptr QWidget {.
    noSideEffect, importcpp: "createEditor", header: "qstyleditemdelegate.h".}
proc setEditorData*(this: QStyledItemDelegate; editor: ptr QWidget; index: QModelIndex) {.
    noSideEffect, importcpp: "setEditorData", header: "qstyleditemdelegate.h".}
proc setModelData*(this: QStyledItemDelegate; editor: ptr QWidget;
                  model: ptr QAbstractItemModel; index: QModelIndex) {.noSideEffect,
    importcpp: "setModelData", header: "qstyleditemdelegate.h".}
proc updateEditorGeometry*(this: QStyledItemDelegate; editor: ptr QWidget;
                          option: QStyleOptionViewItem; index: QModelIndex) {.
    noSideEffect, importcpp: "updateEditorGeometry",
    header: "qstyleditemdelegate.h".}
proc itemEditorFactory*(this: QStyledItemDelegate): ptr QItemEditorFactory {.
    noSideEffect, importcpp: "itemEditorFactory", header: "qstyleditemdelegate.h".}
proc setItemEditorFactory*(this: var QStyledItemDelegate;
                          factory: ptr QItemEditorFactory) {.
    importcpp: "setItemEditorFactory", header: "qstyleditemdelegate.h".}
proc displayText*(this: QStyledItemDelegate; value: QVariant; locale: QLocale): QString {.
    noSideEffect, importcpp: "displayText", header: "qstyleditemdelegate.h".}