##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(listwidget)
discard "forward decl of QListWidget"
discard "forward decl of QListModel"
discard "forward decl of QWidgetItemData"
discard "forward decl of QListWidgetItemPrivate"
type
  QListWidgetItem* {.importcpp: "QListWidgetItem", header: "qlistwidget.h", bycopy.} = object

  QListWidgetItemItemType* {.size: sizeof(cint),
                            importcpp: "QListWidgetItem::ItemType",
                            header: "qlistwidget.h".} = enum
    Type = 0, UserType = 1000


proc constructQListWidgetItem*(listview: ptr QListWidget = nil; `type`: cint = `type`): QListWidgetItem {.
    constructor, importcpp: "QListWidgetItem(@)", header: "qlistwidget.h".}
proc constructQListWidgetItem*(text: QString; listview: ptr QListWidget = nil;
                              `type`: cint = `type`): QListWidgetItem {.constructor,
    importcpp: "QListWidgetItem(@)", header: "qlistwidget.h".}
proc constructQListWidgetItem*(icon: QIcon; text: QString;
                              listview: ptr QListWidget = nil; `type`: cint = `type`): QListWidgetItem {.
    constructor, importcpp: "QListWidgetItem(@)", header: "qlistwidget.h".}
proc constructQListWidgetItem*(other: QListWidgetItem): QListWidgetItem {.
    constructor, importcpp: "QListWidgetItem(@)", header: "qlistwidget.h".}
proc destroyQListWidgetItem*(this: var QListWidgetItem) {.
    importcpp: "#.~QListWidgetItem()", header: "qlistwidget.h".}
proc clone*(this: QListWidgetItem): ptr QListWidgetItem {.noSideEffect,
    importcpp: "clone", header: "qlistwidget.h".}
proc listWidget*(this: QListWidgetItem): ptr QListWidget {.noSideEffect,
    importcpp: "listWidget", header: "qlistwidget.h".}
proc setSelected*(this: var QListWidgetItem; select: bool) {.importcpp: "setSelected",
    header: "qlistwidget.h".}
proc isSelected*(this: QListWidgetItem): bool {.noSideEffect,
    importcpp: "isSelected", header: "qlistwidget.h".}
proc setHidden*(this: var QListWidgetItem; hide: bool) {.importcpp: "setHidden",
    header: "qlistwidget.h".}
proc isHidden*(this: QListWidgetItem): bool {.noSideEffect, importcpp: "isHidden",
    header: "qlistwidget.h".}
proc flags*(this: QListWidgetItem): ItemFlags {.noSideEffect, importcpp: "flags",
    header: "qlistwidget.h".}
proc setFlags*(this: var QListWidgetItem; flags: ItemFlags) {.importcpp: "setFlags",
    header: "qlistwidget.h".}
proc text*(this: QListWidgetItem): QString {.noSideEffect, importcpp: "text",
    header: "qlistwidget.h".}
proc setText*(this: var QListWidgetItem; text: QString) {.importcpp: "setText",
    header: "qlistwidget.h".}
proc icon*(this: QListWidgetItem): QIcon {.noSideEffect, importcpp: "icon",
                                       header: "qlistwidget.h".}
proc setIcon*(this: var QListWidgetItem; icon: QIcon) {.importcpp: "setIcon",
    header: "qlistwidget.h".}
proc statusTip*(this: QListWidgetItem): QString {.noSideEffect,
    importcpp: "statusTip", header: "qlistwidget.h".}
proc setStatusTip*(this: var QListWidgetItem; statusTip: QString) {.
    importcpp: "setStatusTip", header: "qlistwidget.h".}
proc toolTip*(this: QListWidgetItem): QString {.noSideEffect, importcpp: "toolTip",
    header: "qlistwidget.h".}
proc setToolTip*(this: var QListWidgetItem; toolTip: QString) {.
    importcpp: "setToolTip", header: "qlistwidget.h".}
proc whatsThis*(this: QListWidgetItem): QString {.noSideEffect,
    importcpp: "whatsThis", header: "qlistwidget.h".}
proc setWhatsThis*(this: var QListWidgetItem; whatsThis: QString) {.
    importcpp: "setWhatsThis", header: "qlistwidget.h".}
proc font*(this: QListWidgetItem): QFont {.noSideEffect, importcpp: "font",
                                       header: "qlistwidget.h".}
proc setFont*(this: var QListWidgetItem; font: QFont) {.importcpp: "setFont",
    header: "qlistwidget.h".}
when qt_Version < qt_Version_Check(7, 0, 0):
  proc textAlignment*(this: QListWidgetItem): cint {.noSideEffect,
      importcpp: "textAlignment", header: "qlistwidget.h".}
when not (qt_Version < qt_Version_Check(7, 0, 0)):
  proc textAlignment*(this: QListWidgetItem): Alignment {.noSideEffect,
      importcpp: "textAlignment", header: "qlistwidget.h".}
proc setTextAlignment*(this: var QListWidgetItem; alignment: cint) {.
    importcpp: "setTextAlignment", header: "qlistwidget.h".}
proc setTextAlignment*(this: var QListWidgetItem; alignment: AlignmentFlag) {.
    importcpp: "setTextAlignment", header: "qlistwidget.h".}
proc setTextAlignment*(this: var QListWidgetItem; alignment: Alignment) {.
    importcpp: "setTextAlignment", header: "qlistwidget.h".}
proc background*(this: QListWidgetItem): QBrush {.noSideEffect,
    importcpp: "background", header: "qlistwidget.h".}
proc setBackground*(this: var QListWidgetItem; brush: QBrush) {.
    importcpp: "setBackground", header: "qlistwidget.h".}
proc foreground*(this: QListWidgetItem): QBrush {.noSideEffect,
    importcpp: "foreground", header: "qlistwidget.h".}
proc setForeground*(this: var QListWidgetItem; brush: QBrush) {.
    importcpp: "setForeground", header: "qlistwidget.h".}
proc checkState*(this: QListWidgetItem): CheckState {.noSideEffect,
    importcpp: "checkState", header: "qlistwidget.h".}
proc setCheckState*(this: var QListWidgetItem; state: CheckState) {.
    importcpp: "setCheckState", header: "qlistwidget.h".}
proc sizeHint*(this: QListWidgetItem): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qlistwidget.h".}
proc setSizeHint*(this: var QListWidgetItem; size: QSize) {.importcpp: "setSizeHint",
    header: "qlistwidget.h".}
proc data*(this: QListWidgetItem; role: cint): QVariant {.noSideEffect,
    importcpp: "data", header: "qlistwidget.h".}
proc setData*(this: var QListWidgetItem; role: cint; value: QVariant) {.
    importcpp: "setData", header: "qlistwidget.h".}
proc `<`*(this: QListWidgetItem; other: QListWidgetItem): bool {.noSideEffect,
    importcpp: "(# < #)", header: "qlistwidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc read*(this: var QListWidgetItem; `in`: var QDataStream) {.importcpp: "read",
      header: "qlistwidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc write*(this: QListWidgetItem; `out`: var QDataStream) {.noSideEffect,
      importcpp: "write", header: "qlistwidget.h".}
proc `type`*(this: QListWidgetItem): cint {.noSideEffect, importcpp: "type",
                                        header: "qlistwidget.h".}
proc setText*(this: var QListWidgetItem; atext: QString) {.importcpp: "setText",
    header: "qlistwidget.h".}
proc setIcon*(this: var QListWidgetItem; aicon: QIcon) {.importcpp: "setIcon",
    header: "qlistwidget.h".}
proc setStatusTip*(this: var QListWidgetItem; astatusTip: QString) {.
    importcpp: "setStatusTip", header: "qlistwidget.h".}
proc setToolTip*(this: var QListWidgetItem; atoolTip: QString) {.
    importcpp: "setToolTip", header: "qlistwidget.h".}
proc setWhatsThis*(this: var QListWidgetItem; awhatsThis: QString) {.
    importcpp: "setWhatsThis", header: "qlistwidget.h".}
proc setFont*(this: var QListWidgetItem; afont: QFont) {.importcpp: "setFont",
    header: "qlistwidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc `<<`*(`out`: var QDataStream; item: QListWidgetItem): var QDataStream {.
      importcpp: "(# << #)", header: "qlistwidget.h".}
  proc `>>`*(`in`: var QDataStream; item: var QListWidgetItem): var QDataStream {.
      importcpp: "(# >> #)", header: "qlistwidget.h".}
discard "forward decl of QListWidgetPrivate"
type
  QListWidget* {.importcpp: "QListWidget", header: "qlistwidget.h", bycopy.} = object of QListView


proc constructQListWidget*(parent: ptr QWidget = nil): QListWidget {.constructor,
    importcpp: "QListWidget(@)", header: "qlistwidget.h".}
proc destroyQListWidget*(this: var QListWidget) {.importcpp: "#.~QListWidget()",
    header: "qlistwidget.h".}
proc setSelectionModel*(this: var QListWidget;
                       selectionModel: ptr QItemSelectionModel) {.
    importcpp: "setSelectionModel", header: "qlistwidget.h".}
proc item*(this: QListWidget; row: cint): ptr QListWidgetItem {.noSideEffect,
    importcpp: "item", header: "qlistwidget.h".}
proc row*(this: QListWidget; item: ptr QListWidgetItem): cint {.noSideEffect,
    importcpp: "row", header: "qlistwidget.h".}
proc insertItem*(this: var QListWidget; row: cint; item: ptr QListWidgetItem) {.
    importcpp: "insertItem", header: "qlistwidget.h".}
proc insertItem*(this: var QListWidget; row: cint; label: QString) {.
    importcpp: "insertItem", header: "qlistwidget.h".}
proc insertItems*(this: var QListWidget; row: cint; labels: QStringList) {.
    importcpp: "insertItems", header: "qlistwidget.h".}
proc addItem*(this: var QListWidget; label: QString) {.importcpp: "addItem",
    header: "qlistwidget.h".}
proc addItem*(this: var QListWidget; item: ptr QListWidgetItem) {.importcpp: "addItem",
    header: "qlistwidget.h".}
proc addItems*(this: var QListWidget; labels: QStringList) {.importcpp: "addItems",
    header: "qlistwidget.h".}
proc takeItem*(this: var QListWidget; row: cint): ptr QListWidgetItem {.
    importcpp: "takeItem", header: "qlistwidget.h".}
proc count*(this: QListWidget): cint {.noSideEffect, importcpp: "count",
                                   header: "qlistwidget.h".}
proc currentItem*(this: QListWidget): ptr QListWidgetItem {.noSideEffect,
    importcpp: "currentItem", header: "qlistwidget.h".}
proc setCurrentItem*(this: var QListWidget; item: ptr QListWidgetItem) {.
    importcpp: "setCurrentItem", header: "qlistwidget.h".}
proc setCurrentItem*(this: var QListWidget; item: ptr QListWidgetItem;
                    command: SelectionFlags) {.importcpp: "setCurrentItem",
    header: "qlistwidget.h".}
proc currentRow*(this: QListWidget): cint {.noSideEffect, importcpp: "currentRow",
                                        header: "qlistwidget.h".}
proc setCurrentRow*(this: var QListWidget; row: cint) {.importcpp: "setCurrentRow",
    header: "qlistwidget.h".}
proc setCurrentRow*(this: var QListWidget; row: cint; command: SelectionFlags) {.
    importcpp: "setCurrentRow", header: "qlistwidget.h".}
proc itemAt*(this: QListWidget; p: QPoint): ptr QListWidgetItem {.noSideEffect,
    importcpp: "itemAt", header: "qlistwidget.h".}
proc itemAt*(this: QListWidget; x: cint; y: cint): ptr QListWidgetItem {.noSideEffect,
    importcpp: "itemAt", header: "qlistwidget.h".}
proc visualItemRect*(this: QListWidget; item: ptr QListWidgetItem): QRect {.
    noSideEffect, importcpp: "visualItemRect", header: "qlistwidget.h".}
proc sortItems*(this: var QListWidget; order: SortOrder = ascendingOrder) {.
    importcpp: "sortItems", header: "qlistwidget.h".}
proc setSortingEnabled*(this: var QListWidget; enable: bool) {.
    importcpp: "setSortingEnabled", header: "qlistwidget.h".}
proc isSortingEnabled*(this: QListWidget): bool {.noSideEffect,
    importcpp: "isSortingEnabled", header: "qlistwidget.h".}
proc editItem*(this: var QListWidget; item: ptr QListWidgetItem) {.
    importcpp: "editItem", header: "qlistwidget.h".}
proc openPersistentEditor*(this: var QListWidget; item: ptr QListWidgetItem) {.
    importcpp: "openPersistentEditor", header: "qlistwidget.h".}
proc closePersistentEditor*(this: var QListWidget; item: ptr QListWidgetItem) {.
    importcpp: "closePersistentEditor", header: "qlistwidget.h".}
## using statement

proc isPersistentEditorOpen*(this: QListWidget; item: ptr QListWidgetItem): bool {.
    noSideEffect, importcpp: "isPersistentEditorOpen", header: "qlistwidget.h".}
proc itemWidget*(this: QListWidget; item: ptr QListWidgetItem): ptr QWidget {.
    noSideEffect, importcpp: "itemWidget", header: "qlistwidget.h".}
proc setItemWidget*(this: var QListWidget; item: ptr QListWidgetItem;
                   widget: ptr QWidget) {.importcpp: "setItemWidget",
                                       header: "qlistwidget.h".}
proc removeItemWidget*(this: var QListWidget; item: ptr QListWidgetItem) {.
    importcpp: "removeItemWidget", header: "qlistwidget.h".}
proc selectedItems*(this: QListWidget): QList[ptr QListWidgetItem] {.noSideEffect,
    importcpp: "selectedItems", header: "qlistwidget.h".}
proc findItems*(this: QListWidget; text: QString; flags: MatchFlags): QList[
    ptr QListWidgetItem] {.noSideEffect, importcpp: "findItems",
                         header: "qlistwidget.h".}
proc items*(this: QListWidget; data: ptr QMimeData): QList[ptr QListWidgetItem] {.
    noSideEffect, importcpp: "items", header: "qlistwidget.h".}
proc indexFromItem*(this: QListWidget; item: ptr QListWidgetItem): QModelIndex {.
    noSideEffect, importcpp: "indexFromItem", header: "qlistwidget.h".}
proc itemFromIndex*(this: QListWidget; index: QModelIndex): ptr QListWidgetItem {.
    noSideEffect, importcpp: "itemFromIndex", header: "qlistwidget.h".}
proc scrollToItem*(this: var QListWidget; item: ptr QListWidgetItem;
                  hint: ScrollHint = ensureVisible) {.importcpp: "scrollToItem",
    header: "qlistwidget.h".}
proc clear*(this: var QListWidget) {.importcpp: "clear", header: "qlistwidget.h".}
proc removeItemWidget*(this: var QListWidget; aItem: ptr QListWidgetItem) {.
    importcpp: "removeItemWidget", header: "qlistwidget.h".}
proc addItem*(this: var QListWidget; aitem: ptr QListWidgetItem) {.
    importcpp: "addItem", header: "qlistwidget.h".}
proc itemAt*(this: QListWidget; ax: cint; ay: cint): ptr QListWidgetItem {.noSideEffect,
    importcpp: "itemAt", header: "qlistwidget.h".}
proc setHidden*(this: var QListWidgetItem; ahide: bool) {.importcpp: "setHidden",
    header: "qlistwidget.h".}
proc isHidden*(this: QListWidgetItem): bool {.noSideEffect, importcpp: "isHidden",
    header: "qlistwidget.h".}