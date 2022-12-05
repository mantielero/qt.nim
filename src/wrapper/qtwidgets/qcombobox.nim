##  Copyright (C) 2020 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(combobox)
discard "forward decl of QAbstractItemView"
discard "forward decl of QLineEdit"
discard "forward decl of QComboBoxPrivate"
discard "forward decl of QCompleter"
type
  QComboBox* {.importcpp: "QComboBox", header: "qcombobox.h", bycopy.} = object of QWidget


proc constructQComboBox*(parent: ptr QWidget = nil): QComboBox {.constructor,
    importcpp: "QComboBox(@)", header: "qcombobox.h".}
proc destroyQComboBox*(this: var QComboBox) {.importcpp: "#.~QComboBox()",
    header: "qcombobox.h".}
proc maxVisibleItems*(this: QComboBox): cint {.noSideEffect,
    importcpp: "maxVisibleItems", header: "qcombobox.h".}
proc setMaxVisibleItems*(this: var QComboBox; maxItems: cint) {.
    importcpp: "setMaxVisibleItems", header: "qcombobox.h".}
proc count*(this: QComboBox): cint {.noSideEffect, importcpp: "count",
                                 header: "qcombobox.h".}
proc setMaxCount*(this: var QComboBox; max: cint) {.importcpp: "setMaxCount",
    header: "qcombobox.h".}
proc maxCount*(this: QComboBox): cint {.noSideEffect, importcpp: "maxCount",
                                    header: "qcombobox.h".}
proc duplicatesEnabled*(this: QComboBox): bool {.noSideEffect,
    importcpp: "duplicatesEnabled", header: "qcombobox.h".}
proc setDuplicatesEnabled*(this: var QComboBox; enable: bool) {.
    importcpp: "setDuplicatesEnabled", header: "qcombobox.h".}
proc setFrame*(this: var QComboBox; a2: bool) {.importcpp: "setFrame",
    header: "qcombobox.h".}
proc hasFrame*(this: QComboBox): bool {.noSideEffect, importcpp: "hasFrame",
                                    header: "qcombobox.h".}
proc findText*(this: QComboBox; text: QString; flags: MatchFlags = staticCast[MatchFlags](
    matchExactly or matchCaseSensitive)): cint {.noSideEffect, importcpp: "findText",
    header: "qcombobox.h".}
proc findData*(this: QComboBox; data: QVariant; role: cint = userRole; flags: MatchFlags = staticCast[
    MatchFlags](matchExactly or matchCaseSensitive)): cint {.noSideEffect,
    importcpp: "findData", header: "qcombobox.h".}
type
  QComboBoxInsertPolicy* {.size: sizeof(cint),
                          importcpp: "QComboBox::InsertPolicy",
                          header: "qcombobox.h".} = enum
    NoInsert, InsertAtTop, InsertAtCurrent, InsertAtBottom, InsertAfterCurrent,
    InsertBeforeCurrent, InsertAlphabetically


proc insertPolicy*(this: QComboBox): QComboBoxInsertPolicy {.noSideEffect,
    importcpp: "insertPolicy", header: "qcombobox.h".}
proc setInsertPolicy*(this: var QComboBox; policy: QComboBoxInsertPolicy) {.
    importcpp: "setInsertPolicy", header: "qcombobox.h".}
type
  QComboBoxSizeAdjustPolicy* {.size: sizeof(cint),
                              importcpp: "QComboBox::SizeAdjustPolicy",
                              header: "qcombobox.h".} = enum
    AdjustToContents, AdjustToContentsOnFirstShow,
    AdjustToMinimumContentsLengthWithIcon


proc sizeAdjustPolicy*(this: QComboBox): QComboBoxSizeAdjustPolicy {.noSideEffect,
    importcpp: "sizeAdjustPolicy", header: "qcombobox.h".}
proc setSizeAdjustPolicy*(this: var QComboBox; policy: QComboBoxSizeAdjustPolicy) {.
    importcpp: "setSizeAdjustPolicy", header: "qcombobox.h".}
proc minimumContentsLength*(this: QComboBox): cint {.noSideEffect,
    importcpp: "minimumContentsLength", header: "qcombobox.h".}
proc setMinimumContentsLength*(this: var QComboBox; characters: cint) {.
    importcpp: "setMinimumContentsLength", header: "qcombobox.h".}
proc iconSize*(this: QComboBox): QSize {.noSideEffect, importcpp: "iconSize",
                                     header: "qcombobox.h".}
proc setIconSize*(this: var QComboBox; size: QSize) {.importcpp: "setIconSize",
    header: "qcombobox.h".}
proc setPlaceholderText*(this: var QComboBox; placeholderText: QString) {.
    importcpp: "setPlaceholderText", header: "qcombobox.h".}
proc placeholderText*(this: QComboBox): QString {.noSideEffect,
    importcpp: "placeholderText", header: "qcombobox.h".}
proc isEditable*(this: QComboBox): bool {.noSideEffect, importcpp: "isEditable",
                                      header: "qcombobox.h".}
proc setEditable*(this: var QComboBox; editable: bool) {.importcpp: "setEditable",
    header: "qcombobox.h".}
proc setLineEdit*(this: var QComboBox; edit: ptr QLineEdit) {.importcpp: "setLineEdit",
    header: "qcombobox.h".}
proc lineEdit*(this: QComboBox): ptr QLineEdit {.noSideEffect, importcpp: "lineEdit",
    header: "qcombobox.h".}
when not defined(QT_NO_VALIDATOR):
  proc setValidator*(this: var QComboBox; v: ptr QValidator) {.
      importcpp: "setValidator", header: "qcombobox.h".}
when not defined(QT_NO_VALIDATOR):
  proc validator*(this: QComboBox): ptr QValidator {.noSideEffect,
      importcpp: "validator", header: "qcombobox.h".}
proc setCompleter*(this: var QComboBox; c: ptr QCompleter) {.importcpp: "setCompleter",
    header: "qcombobox.h".}
proc completer*(this: QComboBox): ptr QCompleter {.noSideEffect,
    importcpp: "completer", header: "qcombobox.h".}
proc itemDelegate*(this: QComboBox): ptr QAbstractItemDelegate {.noSideEffect,
    importcpp: "itemDelegate", header: "qcombobox.h".}
proc setItemDelegate*(this: var QComboBox; delegate: ptr QAbstractItemDelegate) {.
    importcpp: "setItemDelegate", header: "qcombobox.h".}
proc model*(this: QComboBox): ptr QAbstractItemModel {.noSideEffect,
    importcpp: "model", header: "qcombobox.h".}
proc setModel*(this: var QComboBox; model: ptr QAbstractItemModel) {.
    importcpp: "setModel", header: "qcombobox.h".}
proc rootModelIndex*(this: QComboBox): QModelIndex {.noSideEffect,
    importcpp: "rootModelIndex", header: "qcombobox.h".}
proc setRootModelIndex*(this: var QComboBox; index: QModelIndex) {.
    importcpp: "setRootModelIndex", header: "qcombobox.h".}
proc modelColumn*(this: QComboBox): cint {.noSideEffect, importcpp: "modelColumn",
                                       header: "qcombobox.h".}
proc setModelColumn*(this: var QComboBox; visibleColumn: cint) {.
    importcpp: "setModelColumn", header: "qcombobox.h".}
proc currentIndex*(this: QComboBox): cint {.noSideEffect, importcpp: "currentIndex",
                                        header: "qcombobox.h".}
proc currentText*(this: QComboBox): QString {.noSideEffect, importcpp: "currentText",
    header: "qcombobox.h".}
proc currentData*(this: QComboBox; role: cint = userRole): QVariant {.noSideEffect,
    importcpp: "currentData", header: "qcombobox.h".}
proc itemText*(this: QComboBox; index: cint): QString {.noSideEffect,
    importcpp: "itemText", header: "qcombobox.h".}
proc itemIcon*(this: QComboBox; index: cint): QIcon {.noSideEffect,
    importcpp: "itemIcon", header: "qcombobox.h".}
proc itemData*(this: QComboBox; index: cint; role: cint = userRole): QVariant {.
    noSideEffect, importcpp: "itemData", header: "qcombobox.h".}
proc addItem*(this: var QComboBox; text: QString; userData: QVariant = qVariant()) {.
    importcpp: "addItem", header: "qcombobox.h".}
proc addItem*(this: var QComboBox; icon: QIcon; text: QString;
             userData: QVariant = qVariant()) {.importcpp: "addItem",
    header: "qcombobox.h".}
proc addItems*(this: var QComboBox; texts: QStringList) {.importcpp: "addItems",
    header: "qcombobox.h".}
proc insertItem*(this: var QComboBox; index: cint; text: QString;
                userData: QVariant = qVariant()) {.importcpp: "insertItem",
    header: "qcombobox.h".}
proc insertItem*(this: var QComboBox; index: cint; icon: QIcon; text: QString;
                userData: QVariant = qVariant()) {.importcpp: "insertItem",
    header: "qcombobox.h".}
proc insertItems*(this: var QComboBox; index: cint; texts: QStringList) {.
    importcpp: "insertItems", header: "qcombobox.h".}
proc insertSeparator*(this: var QComboBox; index: cint) {.
    importcpp: "insertSeparator", header: "qcombobox.h".}
proc removeItem*(this: var QComboBox; index: cint) {.importcpp: "removeItem",
    header: "qcombobox.h".}
proc setItemText*(this: var QComboBox; index: cint; text: QString) {.
    importcpp: "setItemText", header: "qcombobox.h".}
proc setItemIcon*(this: var QComboBox; index: cint; icon: QIcon) {.
    importcpp: "setItemIcon", header: "qcombobox.h".}
proc setItemData*(this: var QComboBox; index: cint; value: QVariant;
                 role: cint = userRole) {.importcpp: "setItemData",
                                      header: "qcombobox.h".}
proc view*(this: QComboBox): ptr QAbstractItemView {.noSideEffect, importcpp: "view",
    header: "qcombobox.h".}
proc setView*(this: var QComboBox; itemView: ptr QAbstractItemView) {.
    importcpp: "setView", header: "qcombobox.h".}
proc sizeHint*(this: QComboBox): QSize {.noSideEffect, importcpp: "sizeHint",
                                     header: "qcombobox.h".}
proc minimumSizeHint*(this: QComboBox): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qcombobox.h".}
proc showPopup*(this: var QComboBox) {.importcpp: "showPopup", header: "qcombobox.h".}
proc hidePopup*(this: var QComboBox) {.importcpp: "hidePopup", header: "qcombobox.h".}
proc event*(this: var QComboBox; event: ptr QEvent): bool {.importcpp: "event",
    header: "qcombobox.h".}
proc inputMethodQuery*(this: QComboBox; a2: InputMethodQuery): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qcombobox.h".}
proc inputMethodQuery*(this: QComboBox; query: InputMethodQuery; argument: QVariant): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qcombobox.h".}
proc clear*(this: var QComboBox) {.importcpp: "clear", header: "qcombobox.h".}
proc clearEditText*(this: var QComboBox) {.importcpp: "clearEditText",
                                       header: "qcombobox.h".}
proc setEditText*(this: var QComboBox; text: QString) {.importcpp: "setEditText",
    header: "qcombobox.h".}
proc setCurrentIndex*(this: var QComboBox; index: cint) {.
    importcpp: "setCurrentIndex", header: "qcombobox.h".}
proc setCurrentText*(this: var QComboBox; text: QString) {.
    importcpp: "setCurrentText", header: "qcombobox.h".}
proc addItem*(this: var QComboBox; atext: QString; auserData: QVariant) {.
    importcpp: "addItem", header: "qcombobox.h".}
proc addItem*(this: var QComboBox; aicon: QIcon; atext: QString; auserData: QVariant) {.
    importcpp: "addItem", header: "qcombobox.h".}
proc insertItem*(this: var QComboBox; aindex: cint; atext: QString; auserData: QVariant) {.
    importcpp: "insertItem", header: "qcombobox.h".}