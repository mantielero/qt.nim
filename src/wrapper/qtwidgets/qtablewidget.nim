import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(tablewidget)


proc constructQTableWidgetSelectionRange*(): QTableWidgetSelectionRange {.
    constructor, importcpp: "QTableWidgetSelectionRange(@)",
    header: "qtablewidget.h".}
proc constructQTableWidgetSelectionRange*(top: cint; left: cint; bottom: cint;
    right: cint): QTableWidgetSelectionRange {.constructor,
    importcpp: "QTableWidgetSelectionRange(@)", header: "qtablewidget.h".}
proc topRow*(this: QTableWidgetSelectionRange): cint {.noSideEffect,
    importcpp: "topRow", header: "qtablewidget.h".}
proc bottomRow*(this: QTableWidgetSelectionRange): cint {.noSideEffect,
    importcpp: "bottomRow", header: "qtablewidget.h".}
proc leftColumn*(this: QTableWidgetSelectionRange): cint {.noSideEffect,
    importcpp: "leftColumn", header: "qtablewidget.h".}
proc rightColumn*(this: QTableWidgetSelectionRange): cint {.noSideEffect,
    importcpp: "rightColumn", header: "qtablewidget.h".}
proc rowCount*(this: QTableWidgetSelectionRange): cint {.noSideEffect,
    importcpp: "rowCount", header: "qtablewidget.h".}
proc columnCount*(this: QTableWidgetSelectionRange): cint {.noSideEffect,
    importcpp: "columnCount", header: "qtablewidget.h".}
discard "forward decl of QTableWidget"
discard "forward decl of QTableModel"
discard "forward decl of QWidgetItemData"
discard "forward decl of QTableWidgetItemPrivate"



proc constructQTableWidgetItem*(`type`: cint = `type`): QTableWidgetItem {.
    constructor, importcpp: "QTableWidgetItem(@)", header: "qtablewidget.h".}
proc constructQTableWidgetItem*(text: QString; `type`: cint = `type`): QTableWidgetItem {.
    constructor, importcpp: "QTableWidgetItem(@)", header: "qtablewidget.h".}
proc constructQTableWidgetItem*(icon: QIcon; text: QString; `type`: cint = `type`): QTableWidgetItem {.
    constructor, importcpp: "QTableWidgetItem(@)", header: "qtablewidget.h".}
proc constructQTableWidgetItem*(other: QTableWidgetItem): QTableWidgetItem {.
    constructor, importcpp: "QTableWidgetItem(@)", header: "qtablewidget.h".}
proc destroyQTableWidgetItem*(this: var QTableWidgetItem) {.
    importcpp: "#.~QTableWidgetItem()", header: "qtablewidget.h".}
proc clone*(this: QTableWidgetItem): ptr QTableWidgetItem {.noSideEffect,
    importcpp: "clone", header: "qtablewidget.h".}
proc tableWidget*(this: QTableWidgetItem): ptr QTableWidget {.noSideEffect,
    importcpp: "tableWidget", header: "qtablewidget.h".}
proc row*(this: QTableWidgetItem): cint {.noSideEffect, importcpp: "row",
                                      header: "qtablewidget.h".}
proc column*(this: QTableWidgetItem): cint {.noSideEffect, importcpp: "column",
    header: "qtablewidget.h".}
proc setSelected*(this: var QTableWidgetItem; select: bool) {.
    importcpp: "setSelected", header: "qtablewidget.h".}
proc isSelected*(this: QTableWidgetItem): bool {.noSideEffect,
    importcpp: "isSelected", header: "qtablewidget.h".}
proc flags*(this: QTableWidgetItem): ItemFlags {.noSideEffect, importcpp: "flags",
    header: "qtablewidget.h".}
proc setFlags*(this: var QTableWidgetItem; flags: ItemFlags) {.importcpp: "setFlags",
    header: "qtablewidget.h".}
proc text*(this: QTableWidgetItem): QString {.noSideEffect, importcpp: "text",
    header: "qtablewidget.h".}
proc setText*(this: var QTableWidgetItem; text: QString) {.importcpp: "setText",
    header: "qtablewidget.h".}
proc icon*(this: QTableWidgetItem): QIcon {.noSideEffect, importcpp: "icon",
                                        header: "qtablewidget.h".}
proc setIcon*(this: var QTableWidgetItem; icon: QIcon) {.importcpp: "setIcon",
    header: "qtablewidget.h".}
proc statusTip*(this: QTableWidgetItem): QString {.noSideEffect,
    importcpp: "statusTip", header: "qtablewidget.h".}
proc setStatusTip*(this: var QTableWidgetItem; statusTip: QString) {.
    importcpp: "setStatusTip", header: "qtablewidget.h".}
proc toolTip*(this: QTableWidgetItem): QString {.noSideEffect, importcpp: "toolTip",
    header: "qtablewidget.h".}
proc setToolTip*(this: var QTableWidgetItem; toolTip: QString) {.
    importcpp: "setToolTip", header: "qtablewidget.h".}
proc whatsThis*(this: QTableWidgetItem): QString {.noSideEffect,
    importcpp: "whatsThis", header: "qtablewidget.h".}
proc setWhatsThis*(this: var QTableWidgetItem; whatsThis: QString) {.
    importcpp: "setWhatsThis", header: "qtablewidget.h".}
proc font*(this: QTableWidgetItem): QFont {.noSideEffect, importcpp: "font",
                                        header: "qtablewidget.h".}
proc setFont*(this: var QTableWidgetItem; font: QFont) {.importcpp: "setFont",
    header: "qtablewidget.h".}
when qt_Version < qt_Version_Check(7, 0, 0):
  proc textAlignment*(this: QTableWidgetItem): cint {.noSideEffect,
      importcpp: "textAlignment", header: "qtablewidget.h".}
when not (qt_Version < qt_Version_Check(7, 0, 0)):
  proc textAlignment*(this: QTableWidgetItem): Alignment {.noSideEffect,
      importcpp: "textAlignment", header: "qtablewidget.h".}
proc setTextAlignment*(this: var QTableWidgetItem; alignment: cint) {.
    importcpp: "setTextAlignment", header: "qtablewidget.h".}
proc setTextAlignment*(this: var QTableWidgetItem; alignment: AlignmentFlag) {.
    importcpp: "setTextAlignment", header: "qtablewidget.h".}
proc setTextAlignment*(this: var QTableWidgetItem; alignment: Alignment) {.
    importcpp: "setTextAlignment", header: "qtablewidget.h".}
proc background*(this: QTableWidgetItem): QBrush {.noSideEffect,
    importcpp: "background", header: "qtablewidget.h".}
proc setBackground*(this: var QTableWidgetItem; brush: QBrush) {.
    importcpp: "setBackground", header: "qtablewidget.h".}
proc foreground*(this: QTableWidgetItem): QBrush {.noSideEffect,
    importcpp: "foreground", header: "qtablewidget.h".}
proc setForeground*(this: var QTableWidgetItem; brush: QBrush) {.
    importcpp: "setForeground", header: "qtablewidget.h".}
proc checkState*(this: QTableWidgetItem): CheckState {.noSideEffect,
    importcpp: "checkState", header: "qtablewidget.h".}
proc setCheckState*(this: var QTableWidgetItem; state: CheckState) {.
    importcpp: "setCheckState", header: "qtablewidget.h".}
proc sizeHint*(this: QTableWidgetItem): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qtablewidget.h".}
proc setSizeHint*(this: var QTableWidgetItem; size: QSize) {.importcpp: "setSizeHint",
    header: "qtablewidget.h".}
proc data*(this: QTableWidgetItem; role: cint): QVariant {.noSideEffect,
    importcpp: "data", header: "qtablewidget.h".}
proc setData*(this: var QTableWidgetItem; role: cint; value: QVariant) {.
    importcpp: "setData", header: "qtablewidget.h".}
proc `<`*(this: QTableWidgetItem; other: QTableWidgetItem): bool {.noSideEffect,
    importcpp: "(# < #)", header: "qtablewidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc read*(this: var QTableWidgetItem; `in`: var QDataStream) {.importcpp: "read",
      header: "qtablewidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc write*(this: QTableWidgetItem; `out`: var QDataStream) {.noSideEffect,
      importcpp: "write", header: "qtablewidget.h".}
proc `type`*(this: QTableWidgetItem): cint {.noSideEffect, importcpp: "type",
    header: "qtablewidget.h".}
proc setText*(this: var QTableWidgetItem; atext: QString) {.importcpp: "setText",
    header: "qtablewidget.h".}
proc setIcon*(this: var QTableWidgetItem; aicon: QIcon) {.importcpp: "setIcon",
    header: "qtablewidget.h".}
proc setStatusTip*(this: var QTableWidgetItem; astatusTip: QString) {.
    importcpp: "setStatusTip", header: "qtablewidget.h".}
proc setToolTip*(this: var QTableWidgetItem; atoolTip: QString) {.
    importcpp: "setToolTip", header: "qtablewidget.h".}
proc setWhatsThis*(this: var QTableWidgetItem; awhatsThis: QString) {.
    importcpp: "setWhatsThis", header: "qtablewidget.h".}
proc setFont*(this: var QTableWidgetItem; afont: QFont) {.importcpp: "setFont",
    header: "qtablewidget.h".}
when not defined(QT_NO_DATASTREAM):
  proc `>>`*(`in`: var QDataStream; item: var QTableWidgetItem): var QDataStream {.
      importcpp: "(# >> #)", header: "qtablewidget.h".}
  proc `<<`*(`out`: var QDataStream; item: QTableWidgetItem): var QDataStream {.
      importcpp: "(# << #)", header: "qtablewidget.h".}
discard "forward decl of QTableWidgetPrivate"


proc constructQTableWidget*(parent: ptr QWidget = nil): QTableWidget {.constructor,
    importcpp: "QTableWidget(@)", header: "qtablewidget.h".}
proc constructQTableWidget*(rows: cint; columns: cint; parent: ptr QWidget = nil): QTableWidget {.
    constructor, importcpp: "QTableWidget(@)", header: "qtablewidget.h".}
proc destroyQTableWidget*(this: var QTableWidget) {.importcpp: "#.~QTableWidget()",
    header: "qtablewidget.h".}
proc setRowCount*(this: var QTableWidget; rows: cint) {.importcpp: "setRowCount",
    header: "qtablewidget.h".}
proc rowCount*(this: QTableWidget): cint {.noSideEffect, importcpp: "rowCount",
                                       header: "qtablewidget.h".}
proc setColumnCount*(this: var QTableWidget; columns: cint) {.
    importcpp: "setColumnCount", header: "qtablewidget.h".}
proc columnCount*(this: QTableWidget): cint {.noSideEffect, importcpp: "columnCount",
    header: "qtablewidget.h".}
proc row*(this: QTableWidget; item: ptr QTableWidgetItem): cint {.noSideEffect,
    importcpp: "row", header: "qtablewidget.h".}
proc column*(this: QTableWidget; item: ptr QTableWidgetItem): cint {.noSideEffect,
    importcpp: "column", header: "qtablewidget.h".}
proc item*(this: QTableWidget; row: cint; column: cint): ptr QTableWidgetItem {.
    noSideEffect, importcpp: "item", header: "qtablewidget.h".}
proc setItem*(this: var QTableWidget; row: cint; column: cint;
             item: ptr QTableWidgetItem) {.importcpp: "setItem",
                                        header: "qtablewidget.h".}
proc takeItem*(this: var QTableWidget; row: cint; column: cint): ptr QTableWidgetItem {.
    importcpp: "takeItem", header: "qtablewidget.h".}
proc items*(this: QTableWidget; data: ptr QMimeData): QList[ptr QTableWidgetItem] {.
    noSideEffect, importcpp: "items", header: "qtablewidget.h".}
proc indexFromItem*(this: QTableWidget; item: ptr QTableWidgetItem): QModelIndex {.
    noSideEffect, importcpp: "indexFromItem", header: "qtablewidget.h".}
proc itemFromIndex*(this: QTableWidget; index: QModelIndex): ptr QTableWidgetItem {.
    noSideEffect, importcpp: "itemFromIndex", header: "qtablewidget.h".}
proc verticalHeaderItem*(this: QTableWidget; row: cint): ptr QTableWidgetItem {.
    noSideEffect, importcpp: "verticalHeaderItem", header: "qtablewidget.h".}
proc setVerticalHeaderItem*(this: var QTableWidget; row: cint;
                           item: ptr QTableWidgetItem) {.
    importcpp: "setVerticalHeaderItem", header: "qtablewidget.h".}
proc takeVerticalHeaderItem*(this: var QTableWidget; row: cint): ptr QTableWidgetItem {.
    importcpp: "takeVerticalHeaderItem", header: "qtablewidget.h".}
proc horizontalHeaderItem*(this: QTableWidget; column: cint): ptr QTableWidgetItem {.
    noSideEffect, importcpp: "horizontalHeaderItem", header: "qtablewidget.h".}
proc setHorizontalHeaderItem*(this: var QTableWidget; column: cint;
                             item: ptr QTableWidgetItem) {.
    importcpp: "setHorizontalHeaderItem", header: "qtablewidget.h".}
proc takeHorizontalHeaderItem*(this: var QTableWidget; column: cint): ptr QTableWidgetItem {.
    importcpp: "takeHorizontalHeaderItem", header: "qtablewidget.h".}
proc setVerticalHeaderLabels*(this: var QTableWidget; labels: QStringList) {.
    importcpp: "setVerticalHeaderLabels", header: "qtablewidget.h".}
proc setHorizontalHeaderLabels*(this: var QTableWidget; labels: QStringList) {.
    importcpp: "setHorizontalHeaderLabels", header: "qtablewidget.h".}
proc currentRow*(this: QTableWidget): cint {.noSideEffect, importcpp: "currentRow",
    header: "qtablewidget.h".}
proc currentColumn*(this: QTableWidget): cint {.noSideEffect,
    importcpp: "currentColumn", header: "qtablewidget.h".}
proc currentItem*(this: QTableWidget): ptr QTableWidgetItem {.noSideEffect,
    importcpp: "currentItem", header: "qtablewidget.h".}
proc setCurrentItem*(this: var QTableWidget; item: ptr QTableWidgetItem) {.
    importcpp: "setCurrentItem", header: "qtablewidget.h".}
proc setCurrentItem*(this: var QTableWidget; item: ptr QTableWidgetItem;
                    command: SelectionFlags) {.importcpp: "setCurrentItem",
    header: "qtablewidget.h".}
proc setCurrentCell*(this: var QTableWidget; row: cint; column: cint) {.
    importcpp: "setCurrentCell", header: "qtablewidget.h".}
proc setCurrentCell*(this: var QTableWidget; row: cint; column: cint;
                    command: SelectionFlags) {.importcpp: "setCurrentCell",
    header: "qtablewidget.h".}
proc sortItems*(this: var QTableWidget; column: cint;
               order: SortOrder = ascendingOrder) {.importcpp: "sortItems",
    header: "qtablewidget.h".}
proc setSortingEnabled*(this: var QTableWidget; enable: bool) {.
    importcpp: "setSortingEnabled", header: "qtablewidget.h".}
proc isSortingEnabled*(this: QTableWidget): bool {.noSideEffect,
    importcpp: "isSortingEnabled", header: "qtablewidget.h".}
proc editItem*(this: var QTableWidget; item: ptr QTableWidgetItem) {.
    importcpp: "editItem", header: "qtablewidget.h".}
proc openPersistentEditor*(this: var QTableWidget; item: ptr QTableWidgetItem) {.
    importcpp: "openPersistentEditor", header: "qtablewidget.h".}
proc closePersistentEditor*(this: var QTableWidget; item: ptr QTableWidgetItem) {.
    importcpp: "closePersistentEditor", header: "qtablewidget.h".}
## using statement

proc isPersistentEditorOpen*(this: QTableWidget; item: ptr QTableWidgetItem): bool {.
    noSideEffect, importcpp: "isPersistentEditorOpen", header: "qtablewidget.h".}
proc cellWidget*(this: QTableWidget; row: cint; column: cint): ptr QWidget {.
    noSideEffect, importcpp: "cellWidget", header: "qtablewidget.h".}
proc setCellWidget*(this: var QTableWidget; row: cint; column: cint; widget: ptr QWidget) {.
    importcpp: "setCellWidget", header: "qtablewidget.h".}
proc removeCellWidget*(this: var QTableWidget; row: cint; column: cint) {.
    importcpp: "removeCellWidget", header: "qtablewidget.h".}
proc setRangeSelected*(this: var QTableWidget; range: QTableWidgetSelectionRange;
                      select: bool) {.importcpp: "setRangeSelected",
                                    header: "qtablewidget.h".}
proc selectedRanges*(this: QTableWidget): QList[QTableWidgetSelectionRange] {.
    noSideEffect, importcpp: "selectedRanges", header: "qtablewidget.h".}
proc selectedItems*(this: QTableWidget): QList[ptr QTableWidgetItem] {.noSideEffect,
    importcpp: "selectedItems", header: "qtablewidget.h".}
proc findItems*(this: QTableWidget; text: QString; flags: MatchFlags): QList[
    ptr QTableWidgetItem] {.noSideEffect, importcpp: "findItems",
                          header: "qtablewidget.h".}
proc visualRow*(this: QTableWidget; logicalRow: cint): cint {.noSideEffect,
    importcpp: "visualRow", header: "qtablewidget.h".}
proc visualColumn*(this: QTableWidget; logicalColumn: cint): cint {.noSideEffect,
    importcpp: "visualColumn", header: "qtablewidget.h".}
proc itemAt*(this: QTableWidget; p: QPoint): ptr QTableWidgetItem {.noSideEffect,
    importcpp: "itemAt", header: "qtablewidget.h".}
proc itemAt*(this: QTableWidget; x: cint; y: cint): ptr QTableWidgetItem {.noSideEffect,
    importcpp: "itemAt", header: "qtablewidget.h".}
proc visualItemRect*(this: QTableWidget; item: ptr QTableWidgetItem): QRect {.
    noSideEffect, importcpp: "visualItemRect", header: "qtablewidget.h".}
proc itemPrototype*(this: QTableWidget): ptr QTableWidgetItem {.noSideEffect,
    importcpp: "itemPrototype", header: "qtablewidget.h".}
proc setItemPrototype*(this: var QTableWidget; item: ptr QTableWidgetItem) {.
    importcpp: "setItemPrototype", header: "qtablewidget.h".}
proc scrollToItem*(this: var QTableWidget; item: ptr QTableWidgetItem;
                  hint: ScrollHint = ensureVisible) {.importcpp: "scrollToItem",
    header: "qtablewidget.h".}
proc insertRow*(this: var QTableWidget; row: cint) {.importcpp: "insertRow",
    header: "qtablewidget.h".}
proc insertColumn*(this: var QTableWidget; column: cint) {.importcpp: "insertColumn",
    header: "qtablewidget.h".}
proc removeRow*(this: var QTableWidget; row: cint) {.importcpp: "removeRow",
    header: "qtablewidget.h".}
proc removeColumn*(this: var QTableWidget; column: cint) {.importcpp: "removeColumn",
    header: "qtablewidget.h".}
proc clear*(this: var QTableWidget) {.importcpp: "clear", header: "qtablewidget.h".}
proc clearContents*(this: var QTableWidget) {.importcpp: "clearContents",
    header: "qtablewidget.h".}
proc removeCellWidget*(this: var QTableWidget; arow: cint; acolumn: cint) {.
    importcpp: "removeCellWidget", header: "qtablewidget.h".}
proc itemAt*(this: QTableWidget; ax: cint; ay: cint): ptr QTableWidgetItem {.
    noSideEffect, importcpp: "itemAt", header: "qtablewidget.h".}
proc row*(this: QTableWidgetItem): cint {.noSideEffect, importcpp: "row",
                                      header: "qtablewidget.h".}
proc column*(this: QTableWidgetItem): cint {.noSideEffect, importcpp: "column",
    header: "qtablewidget.h".}
