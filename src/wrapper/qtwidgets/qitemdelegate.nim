import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(itemviews)
discard "forward decl of QItemDelegatePrivate"
discard "forward decl of QItemEditorFactory"


proc constructQItemDelegate*(parent: ptr QObject = nil): QItemDelegate {.constructor,
    importcpp: "QItemDelegate(@)", header: "qitemdelegate.h".}
proc destroyQItemDelegate*(this: var QItemDelegate) {.
    importcpp: "#.~QItemDelegate()", header: "qitemdelegate.h".}
proc hasClipping*(this: QItemDelegate): bool {.noSideEffect,
    importcpp: "hasClipping", header: "qitemdelegate.h".}
proc setClipping*(this: var QItemDelegate; clip: bool) {.importcpp: "setClipping",
    header: "qitemdelegate.h".}
proc paint*(this: QItemDelegate; painter: ptr QPainter; option: QStyleOptionViewItem;
           index: QModelIndex) {.noSideEffect, importcpp: "paint",
                               header: "qitemdelegate.h".}
proc sizeHint*(this: QItemDelegate; option: QStyleOptionViewItem; index: QModelIndex): QSize {.
    noSideEffect, importcpp: "sizeHint", header: "qitemdelegate.h".}
proc createEditor*(this: QItemDelegate; parent: ptr QWidget;
                  option: QStyleOptionViewItem; index: QModelIndex): ptr QWidget {.
    noSideEffect, importcpp: "createEditor", header: "qitemdelegate.h".}
proc setEditorData*(this: QItemDelegate; editor: ptr QWidget; index: QModelIndex) {.
    noSideEffect, importcpp: "setEditorData", header: "qitemdelegate.h".}
proc setModelData*(this: QItemDelegate; editor: ptr QWidget;
                  model: ptr QAbstractItemModel; index: QModelIndex) {.noSideEffect,
    importcpp: "setModelData", header: "qitemdelegate.h".}
proc updateEditorGeometry*(this: QItemDelegate; editor: ptr QWidget;
                          option: QStyleOptionViewItem; index: QModelIndex) {.
    noSideEffect, importcpp: "updateEditorGeometry", header: "qitemdelegate.h".}
proc itemEditorFactory*(this: QItemDelegate): ptr QItemEditorFactory {.noSideEffect,
    importcpp: "itemEditorFactory", header: "qitemdelegate.h".}
proc setItemEditorFactory*(this: var QItemDelegate; factory: ptr QItemEditorFactory) {.
    importcpp: "setItemEditorFactory", header: "qitemdelegate.h".}
