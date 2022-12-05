import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(treewidget)
discard "forward decl of QTreeWidget"
discard "forward decl of QTreeModel"
discard "forward decl of QWidgetItemData"
discard "forward decl of QTreeWidgetItemPrivate"



proc constructQTreeWidgetItem*(`type`: cint = `type`): QTreeWidgetItem {.constructor,
    importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc constructQTreeWidgetItem*(strings: QStringList; `type`: cint = `type`): QTreeWidgetItem {.
    constructor, importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc constructQTreeWidgetItem*(treeview: ptr QTreeWidget; `type`: cint = `type`): QTreeWidgetItem {.
    constructor, importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc constructQTreeWidgetItem*(treeview: ptr QTreeWidget; strings: QStringList;
                              `type`: cint = `type`): QTreeWidgetItem {.constructor,
    importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc constructQTreeWidgetItem*(treeview: ptr QTreeWidget;
                              after: ptr QTreeWidgetItem; `type`: cint = `type`): QTreeWidgetItem {.
    constructor, importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc constructQTreeWidgetItem*(parent: ptr QTreeWidgetItem; `type`: cint = `type`): QTreeWidgetItem {.
    constructor, importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc constructQTreeWidgetItem*(parent: ptr QTreeWidgetItem; strings: QStringList;
                              `type`: cint = `type`): QTreeWidgetItem {.constructor,
    importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc constructQTreeWidgetItem*(parent: ptr QTreeWidgetItem;
                              after: ptr QTreeWidgetItem; `type`: cint = `type`): QTreeWidgetItem {.
    constructor, importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc constructQTreeWidgetItem*(other: QTreeWidgetItem): QTreeWidgetItem {.
    constructor, importcpp: "QTreeWidgetItem(@)", header: "qtreewidget.h".}
proc destroyQTreeWidgetItem*(this: var QTreeWidgetItem) {.
    importcpp: "#.~QTreeWidgetItem()", header: "qtreewidget.h".}
proc clone*(this: QTreeWidgetItem): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "clone", header: "qtreewidget.h".}
proc treeWidget*(this: QTreeWidgetItem): ptr QTreeWidget {.noSideEffect,
    importcpp: "treeWidget", header: "qtreewidget.h".}
proc setSelected*(this: var QTreeWidgetItem; select: bool) {.importcpp: "setSelected",
    header: "qtreewidget.h".}
proc isSelected*(this: QTreeWidgetItem): bool {.noSideEffect,
    importcpp: "isSelected", header: "qtreewidget.h".}
proc setHidden*(this: var QTreeWidgetItem; hide: bool) {.importcpp: "setHidden",
    header: "qtreewidget.h".}
proc isHidden*(this: QTreeWidgetItem): bool {.noSideEffect, importcpp: "isHidden",
    header: "qtreewidget.h".}
proc setExpanded*(this: var QTreeWidgetItem; expand: bool) {.importcpp: "setExpanded",
    header: "qtreewidget.h".}
proc isExpanded*(this: QTreeWidgetItem): bool {.noSideEffect,
    importcpp: "isExpanded", header: "qtreewidget.h".}
proc setFirstColumnSpanned*(this: var QTreeWidgetItem; span: bool) {.
    importcpp: "setFirstColumnSpanned", header: "qtreewidget.h".}
proc isFirstColumnSpanned*(this: QTreeWidgetItem): bool {.noSideEffect,
    importcpp: "isFirstColumnSpanned", header: "qtreewidget.h".}
proc setDisabled*(this: var QTreeWidgetItem; disabled: bool) {.
    importcpp: "setDisabled", header: "qtreewidget.h".}
proc isDisabled*(this: QTreeWidgetItem): bool {.noSideEffect,
    importcpp: "isDisabled", header: "qtreewidget.h".}


proc setChildIndicatorPolicy*(this: var QTreeWidgetItem;
                             policy: QTreeWidgetItemChildIndicatorPolicy) {.
    importcpp: "setChildIndicatorPolicy", header: "qtreewidget.h".}
proc childIndicatorPolicy*(this: QTreeWidgetItem): QTreeWidgetItemChildIndicatorPolicy {.
    noSideEffect, importcpp: "childIndicatorPolicy", header: "qtreewidget.h".}
proc flags*(this: QTreeWidgetItem): ItemFlags {.noSideEffect, importcpp: "flags",
    header: "qtreewidget.h".}
proc setFlags*(this: var QTreeWidgetItem; flags: ItemFlags) {.importcpp: "setFlags",
    header: "qtreewidget.h".}
proc text*(this: QTreeWidgetItem; column: cint): QString {.noSideEffect,
    importcpp: "text", header: "qtreewidget.h".}
proc setText*(this: var QTreeWidgetItem; column: cint; text: QString) {.
    importcpp: "setText", header: "qtreewidget.h".}
proc icon*(this: QTreeWidgetItem; column: cint): QIcon {.noSideEffect,
    importcpp: "icon", header: "qtreewidget.h".}
proc setIcon*(this: var QTreeWidgetItem; column: cint; icon: QIcon) {.
    importcpp: "setIcon", header: "qtreewidget.h".}
proc statusTip*(this: QTreeWidgetItem; column: cint): QString {.noSideEffect,
    importcpp: "statusTip", header: "qtreewidget.h".}
proc setStatusTip*(this: var QTreeWidgetItem; column: cint; statusTip: QString) {.
    importcpp: "setStatusTip", header: "qtreewidget.h".}
proc toolTip*(this: QTreeWidgetItem; column: cint): QString {.noSideEffect,
    importcpp: "toolTip", header: "qtreewidget.h".}
proc setToolTip*(this: var QTreeWidgetItem; column: cint; toolTip: QString) {.
    importcpp: "setToolTip", header: "qtreewidget.h".}
proc whatsThis*(this: QTreeWidgetItem; column: cint): QString {.noSideEffect,
    importcpp: "whatsThis", header: "qtreewidget.h".}
proc setWhatsThis*(this: var QTreeWidgetItem; column: cint; whatsThis: QString) {.
    importcpp: "setWhatsThis", header: "qtreewidget.h".}
proc font*(this: QTreeWidgetItem; column: cint): QFont {.noSideEffect,
    importcpp: "font", header: "qtreewidget.h".}
proc setFont*(this: var QTreeWidgetItem; column: cint; font: QFont) {.
    importcpp: "setFont", header: "qtreewidget.h".}
when qt_Version < qt_Version_Check(7, 0, 0):
  proc textAlignment*(this: QTreeWidgetItem; column: cint): cint {.noSideEffect,
      importcpp: "textAlignment", header: "qtreewidget.h".}
when not (qt_Version < qt_Version_Check(7, 0, 0)):
  proc textAlignment*(this: QTreeWidgetItem; column: cint): Alignment {.noSideEffect,
      importcpp: "textAlignment", header: "qtreewidget.h".}
proc setTextAlignment*(this: var QTreeWidgetItem; column: cint; alignment: cint) {.
    importcpp: "setTextAlignment", header: "qtreewidget.h".}
proc setTextAlignment*(this: var QTreeWidgetItem; column: cint;
                      alignment: AlignmentFlag) {.importcpp: "setTextAlignment",
    header: "qtreewidget.h".}
proc setTextAlignment*(this: var QTreeWidgetItem; column: cint; alignment: Alignment) {.
    importcpp: "setTextAlignment", header: "qtreewidget.h".}
proc background*(this: QTreeWidgetItem; column: cint): QBrush {.noSideEffect,
    importcpp: "background", header: "qtreewidget.h".}
proc setBackground*(this: var QTreeWidgetItem; column: cint; brush: QBrush) {.
    importcpp: "setBackground", header: "qtreewidget.h".}
proc foreground*(this: QTreeWidgetItem; column: cint): QBrush {.noSideEffect,
    importcpp: "foreground", header: "qtreewidget.h".}
proc setForeground*(this: var QTreeWidgetItem; column: cint; brush: QBrush) {.
    importcpp: "setForeground", header: "qtreewidget.h".}
proc checkState*(this: QTreeWidgetItem; column: cint): CheckState {.noSideEffect,
    importcpp: "checkState", header: "qtreewidget.h".}
proc setCheckState*(this: var QTreeWidgetItem; column: cint; state: CheckState) {.
    importcpp: "setCheckState", header: "qtreewidget.h".}
proc sizeHint*(this: QTreeWidgetItem; column: cint): QSize {.noSideEffect,
    importcpp: "sizeHint", header: "qtreewidget.h".}
proc setSizeHint*(this: var QTreeWidgetItem; column: cint; size: QSize) {.
    importcpp: "setSizeHint", header: "qtreewidget.h".}
proc data*(this: QTreeWidgetItem; column: cint; role: cint): QVariant {.noSideEffect,
    importcpp: "data", header: "qtreewidget.h".}
proc setData*(this: var QTreeWidgetItem; column: cint; role: cint; value: QVariant) {.
    importcpp: "setData", header: "qtreewidget.h".}
proc `<`*(this: QTreeWidgetItem; other: QTreeWidgetItem): bool {.noSideEffect,
    importcpp: "(# < #)", header: "qtreewidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc read*(this: var QTreeWidgetItem; `in`: var QDataStream) {.importcpp: "read",
      header: "qtreewidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc write*(this: QTreeWidgetItem; `out`: var QDataStream) {.noSideEffect,
      importcpp: "write", header: "qtreewidget.h".}
proc parent*(this: QTreeWidgetItem): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "parent", header: "qtreewidget.h".}
proc child*(this: QTreeWidgetItem; index: cint): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "child", header: "qtreewidget.h".}
proc childCount*(this: QTreeWidgetItem): cint {.noSideEffect,
    importcpp: "childCount", header: "qtreewidget.h".}
proc columnCount*(this: QTreeWidgetItem): cint {.noSideEffect,
    importcpp: "columnCount", header: "qtreewidget.h".}
proc indexOfChild*(this: QTreeWidgetItem; child: ptr QTreeWidgetItem): cint {.
    noSideEffect, importcpp: "indexOfChild", header: "qtreewidget.h".}
proc addChild*(this: var QTreeWidgetItem; child: ptr QTreeWidgetItem) {.
    importcpp: "addChild", header: "qtreewidget.h".}
proc insertChild*(this: var QTreeWidgetItem; index: cint; child: ptr QTreeWidgetItem) {.
    importcpp: "insertChild", header: "qtreewidget.h".}
proc removeChild*(this: var QTreeWidgetItem; child: ptr QTreeWidgetItem) {.
    importcpp: "removeChild", header: "qtreewidget.h".}
proc takeChild*(this: var QTreeWidgetItem; index: cint): ptr QTreeWidgetItem {.
    importcpp: "takeChild", header: "qtreewidget.h".}
proc addChildren*(this: var QTreeWidgetItem; children: QList[ptr QTreeWidgetItem]) {.
    importcpp: "addChildren", header: "qtreewidget.h".}
proc insertChildren*(this: var QTreeWidgetItem; index: cint;
                    children: QList[ptr QTreeWidgetItem]) {.
    importcpp: "insertChildren", header: "qtreewidget.h".}
proc takeChildren*(this: var QTreeWidgetItem): QList[ptr QTreeWidgetItem] {.
    importcpp: "takeChildren", header: "qtreewidget.h".}
proc `type`*(this: QTreeWidgetItem): cint {.noSideEffect, importcpp: "type",
                                        header: "qtreewidget.h".}
proc sortChildren*(this: var QTreeWidgetItem; column: cint; order: SortOrder) {.
    importcpp: "sortChildren", header: "qtreewidget.h".}
proc setText*(this: var QTreeWidgetItem; column: cint; atext: QString) {.
    importcpp: "setText", header: "qtreewidget.h".}
proc setIcon*(this: var QTreeWidgetItem; column: cint; aicon: QIcon) {.
    importcpp: "setIcon", header: "qtreewidget.h".}
proc setStatusTip*(this: var QTreeWidgetItem; column: cint; astatusTip: QString) {.
    importcpp: "setStatusTip", header: "qtreewidget.h".}
proc setToolTip*(this: var QTreeWidgetItem; column: cint; atoolTip: QString) {.
    importcpp: "setToolTip", header: "qtreewidget.h".}
proc setWhatsThis*(this: var QTreeWidgetItem; column: cint; awhatsThis: QString) {.
    importcpp: "setWhatsThis", header: "qtreewidget.h".}
proc setFont*(this: var QTreeWidgetItem; column: cint; afont: QFont) {.
    importcpp: "setFont", header: "qtreewidget.h".}
proc indexOfChild*(this: QTreeWidgetItem; achild: ptr QTreeWidgetItem): cint {.
    noSideEffect, importcpp: "indexOfChild", header: "qtreewidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc `<<`*(`out`: var QDataStream; item: QTreeWidgetItem): var QDataStream {.
      importcpp: "(# << #)", header: "qtreewidget.h".}
  proc `>>`*(`in`: var QDataStream; item: var QTreeWidgetItem): var QDataStream {.
      importcpp: "(# >> #)", header: "qtreewidget.h".}
discard "forward decl of QTreeWidgetPrivate"


proc constructQTreeWidget*(parent: ptr QWidget = nil): QTreeWidget {.constructor,
    importcpp: "QTreeWidget(@)", header: "qtreewidget.h".}
proc destroyQTreeWidget*(this: var QTreeWidget) {.importcpp: "#.~QTreeWidget()",
    header: "qtreewidget.h".}
proc columnCount*(this: QTreeWidget): cint {.noSideEffect, importcpp: "columnCount",
    header: "qtreewidget.h".}
proc setColumnCount*(this: var QTreeWidget; columns: cint) {.
    importcpp: "setColumnCount", header: "qtreewidget.h".}
proc invisibleRootItem*(this: QTreeWidget): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "invisibleRootItem", header: "qtreewidget.h".}
proc topLevelItem*(this: QTreeWidget; index: cint): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "topLevelItem", header: "qtreewidget.h".}
proc topLevelItemCount*(this: QTreeWidget): cint {.noSideEffect,
    importcpp: "topLevelItemCount", header: "qtreewidget.h".}
proc insertTopLevelItem*(this: var QTreeWidget; index: cint; item: ptr QTreeWidgetItem) {.
    importcpp: "insertTopLevelItem", header: "qtreewidget.h".}
proc addTopLevelItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem) {.
    importcpp: "addTopLevelItem", header: "qtreewidget.h".}
proc takeTopLevelItem*(this: var QTreeWidget; index: cint): ptr QTreeWidgetItem {.
    importcpp: "takeTopLevelItem", header: "qtreewidget.h".}
proc indexOfTopLevelItem*(this: QTreeWidget; item: ptr QTreeWidgetItem): cint {.
    noSideEffect, importcpp: "indexOfTopLevelItem", header: "qtreewidget.h".}
proc insertTopLevelItems*(this: var QTreeWidget; index: cint;
                         items: QList[ptr QTreeWidgetItem]) {.
    importcpp: "insertTopLevelItems", header: "qtreewidget.h".}
proc addTopLevelItems*(this: var QTreeWidget; items: QList[ptr QTreeWidgetItem]) {.
    importcpp: "addTopLevelItems", header: "qtreewidget.h".}
proc headerItem*(this: QTreeWidget): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "headerItem", header: "qtreewidget.h".}
proc setHeaderItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem) {.
    importcpp: "setHeaderItem", header: "qtreewidget.h".}
proc setHeaderLabels*(this: var QTreeWidget; labels: QStringList) {.
    importcpp: "setHeaderLabels", header: "qtreewidget.h".}
proc setHeaderLabel*(this: var QTreeWidget; label: QString) {.
    importcpp: "setHeaderLabel", header: "qtreewidget.h".}
proc currentItem*(this: QTreeWidget): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "currentItem", header: "qtreewidget.h".}
proc currentColumn*(this: QTreeWidget): cint {.noSideEffect,
    importcpp: "currentColumn", header: "qtreewidget.h".}
proc setCurrentItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem) {.
    importcpp: "setCurrentItem", header: "qtreewidget.h".}
proc setCurrentItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem; column: cint) {.
    importcpp: "setCurrentItem", header: "qtreewidget.h".}
proc setCurrentItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem; column: cint;
                    command: SelectionFlags) {.importcpp: "setCurrentItem",
    header: "qtreewidget.h".}
proc itemAt*(this: QTreeWidget; p: QPoint): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "itemAt", header: "qtreewidget.h".}
proc itemAt*(this: QTreeWidget; x: cint; y: cint): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "itemAt", header: "qtreewidget.h".}
proc visualItemRect*(this: QTreeWidget; item: ptr QTreeWidgetItem): QRect {.
    noSideEffect, importcpp: "visualItemRect", header: "qtreewidget.h".}
proc sortColumn*(this: QTreeWidget): cint {.noSideEffect, importcpp: "sortColumn",
                                        header: "qtreewidget.h".}
proc sortItems*(this: var QTreeWidget; column: cint; order: SortOrder) {.
    importcpp: "sortItems", header: "qtreewidget.h".}
proc editItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem; column: cint = 0) {.
    importcpp: "editItem", header: "qtreewidget.h".}
proc openPersistentEditor*(this: var QTreeWidget; item: ptr QTreeWidgetItem;
                          column: cint = 0) {.importcpp: "openPersistentEditor",
    header: "qtreewidget.h".}
proc closePersistentEditor*(this: var QTreeWidget; item: ptr QTreeWidgetItem;
                           column: cint = 0) {.importcpp: "closePersistentEditor",
    header: "qtreewidget.h".}
## using statement

proc isPersistentEditorOpen*(this: QTreeWidget; item: ptr QTreeWidgetItem;
                            column: cint = 0): bool {.noSideEffect,
    importcpp: "isPersistentEditorOpen", header: "qtreewidget.h".}
proc itemWidget*(this: QTreeWidget; item: ptr QTreeWidgetItem; column: cint): ptr QWidget {.
    noSideEffect, importcpp: "itemWidget", header: "qtreewidget.h".}
proc setItemWidget*(this: var QTreeWidget; item: ptr QTreeWidgetItem; column: cint;
                   widget: ptr QWidget) {.importcpp: "setItemWidget",
                                       header: "qtreewidget.h".}
proc removeItemWidget*(this: var QTreeWidget; item: ptr QTreeWidgetItem; column: cint) {.
    importcpp: "removeItemWidget", header: "qtreewidget.h".}
proc selectedItems*(this: QTreeWidget): QList[ptr QTreeWidgetItem] {.noSideEffect,
    importcpp: "selectedItems", header: "qtreewidget.h".}
proc findItems*(this: QTreeWidget; text: QString; flags: MatchFlags; column: cint = 0): QList[
    ptr QTreeWidgetItem] {.noSideEffect, importcpp: "findItems",
                         header: "qtreewidget.h".}
proc itemAbove*(this: QTreeWidget; item: ptr QTreeWidgetItem): ptr QTreeWidgetItem {.
    noSideEffect, importcpp: "itemAbove", header: "qtreewidget.h".}
proc itemBelow*(this: QTreeWidget; item: ptr QTreeWidgetItem): ptr QTreeWidgetItem {.
    noSideEffect, importcpp: "itemBelow", header: "qtreewidget.h".}
proc indexFromItem*(this: QTreeWidget; item: ptr QTreeWidgetItem; column: cint = 0): QModelIndex {.
    noSideEffect, importcpp: "indexFromItem", header: "qtreewidget.h".}
proc itemFromIndex*(this: QTreeWidget; index: QModelIndex): ptr QTreeWidgetItem {.
    noSideEffect, importcpp: "itemFromIndex", header: "qtreewidget.h".}
proc setSelectionModel*(this: var QTreeWidget;
                       selectionModel: ptr QItemSelectionModel) {.
    importcpp: "setSelectionModel", header: "qtreewidget.h".}
proc scrollToItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem;
                  hint: ScrollHint = ensureVisible) {.importcpp: "scrollToItem",
    header: "qtreewidget.h".}
proc expandItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem) {.
    importcpp: "expandItem", header: "qtreewidget.h".}
proc collapseItem*(this: var QTreeWidget; item: ptr QTreeWidgetItem) {.
    importcpp: "collapseItem", header: "qtreewidget.h".}
proc clear*(this: var QTreeWidget) {.importcpp: "clear", header: "qtreewidget.h".}
proc removeItemWidget*(this: var QTreeWidget; item: ptr QTreeWidgetItem; column: cint) {.
    importcpp: "removeItemWidget", header: "qtreewidget.h".}
proc itemAt*(this: QTreeWidget; ax: cint; ay: cint): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "itemAt", header: "qtreewidget.h".}
proc setHeaderLabel*(this: var QTreeWidget; alabel: QString) {.
    importcpp: "setHeaderLabel", header: "qtreewidget.h".}
proc setDisabled*(this: var QTreeWidgetItem; disabled: bool) {.
    importcpp: "setDisabled", header: "qtreewidget.h".}
proc isDisabled*(this: QTreeWidgetItem): bool {.noSideEffect,
    importcpp: "isDisabled", header: "qtreewidget.h".}
