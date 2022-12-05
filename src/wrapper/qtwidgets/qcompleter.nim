##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(completer)
discard "forward decl of QCompleterPrivate"
discard "forward decl of QAbstractItemView"
discard "forward decl of QAbstractProxyModel"
discard "forward decl of QWidget"
type
  QCompleter* {.importcpp: "QCompleter", header: "qcompleter.h", bycopy.} = object of QObject

  QCompleterCompletionMode* {.size: sizeof(cint),
                             importcpp: "QCompleter::CompletionMode",
                             header: "qcompleter.h".} = enum
    PopupCompletion, UnfilteredPopupCompletion, InlineCompletion


type
  QCompleterModelSorting* {.size: sizeof(cint),
                           importcpp: "QCompleter::ModelSorting",
                           header: "qcompleter.h".} = enum
    UnsortedModel = 0, CaseSensitivelySortedModel, CaseInsensitivelySortedModel


proc constructQCompleter*(parent: ptr QObject = nil): QCompleter {.constructor,
    importcpp: "QCompleter(@)", header: "qcompleter.h".}
proc constructQCompleter*(model: ptr QAbstractItemModel; parent: ptr QObject = nil): QCompleter {.
    constructor, importcpp: "QCompleter(@)", header: "qcompleter.h".}
proc constructQCompleter*(completions: QStringList; parent: ptr QObject = nil): QCompleter {.
    constructor, importcpp: "QCompleter(@)", header: "qcompleter.h".}
proc destroyQCompleter*(this: var QCompleter) {.importcpp: "#.~QCompleter()",
    header: "qcompleter.h".}
proc setWidget*(this: var QCompleter; widget: ptr QWidget) {.importcpp: "setWidget",
    header: "qcompleter.h".}
proc widget*(this: QCompleter): ptr QWidget {.noSideEffect, importcpp: "widget",
    header: "qcompleter.h".}
proc setModel*(this: var QCompleter; c: ptr QAbstractItemModel) {.
    importcpp: "setModel", header: "qcompleter.h".}
proc model*(this: QCompleter): ptr QAbstractItemModel {.noSideEffect,
    importcpp: "model", header: "qcompleter.h".}
proc setCompletionMode*(this: var QCompleter; mode: QCompleterCompletionMode) {.
    importcpp: "setCompletionMode", header: "qcompleter.h".}
proc completionMode*(this: QCompleter): QCompleterCompletionMode {.noSideEffect,
    importcpp: "completionMode", header: "qcompleter.h".}
proc setFilterMode*(this: var QCompleter; filterMode: MatchFlags) {.
    importcpp: "setFilterMode", header: "qcompleter.h".}
proc filterMode*(this: QCompleter): MatchFlags {.noSideEffect,
    importcpp: "filterMode", header: "qcompleter.h".}
proc popup*(this: QCompleter): ptr QAbstractItemView {.noSideEffect,
    importcpp: "popup", header: "qcompleter.h".}
proc setPopup*(this: var QCompleter; popup: ptr QAbstractItemView) {.
    importcpp: "setPopup", header: "qcompleter.h".}
proc setCaseSensitivity*(this: var QCompleter; caseSensitivity: CaseSensitivity) {.
    importcpp: "setCaseSensitivity", header: "qcompleter.h".}
proc caseSensitivity*(this: QCompleter): CaseSensitivity {.noSideEffect,
    importcpp: "caseSensitivity", header: "qcompleter.h".}
proc setModelSorting*(this: var QCompleter; sorting: QCompleterModelSorting) {.
    importcpp: "setModelSorting", header: "qcompleter.h".}
proc modelSorting*(this: QCompleter): QCompleterModelSorting {.noSideEffect,
    importcpp: "modelSorting", header: "qcompleter.h".}
proc setCompletionColumn*(this: var QCompleter; column: cint) {.
    importcpp: "setCompletionColumn", header: "qcompleter.h".}
proc completionColumn*(this: QCompleter): cint {.noSideEffect,
    importcpp: "completionColumn", header: "qcompleter.h".}
proc setCompletionRole*(this: var QCompleter; role: cint) {.
    importcpp: "setCompletionRole", header: "qcompleter.h".}
proc completionRole*(this: QCompleter): cint {.noSideEffect,
    importcpp: "completionRole", header: "qcompleter.h".}
proc wrapAround*(this: QCompleter): bool {.noSideEffect, importcpp: "wrapAround",
                                       header: "qcompleter.h".}
proc maxVisibleItems*(this: QCompleter): cint {.noSideEffect,
    importcpp: "maxVisibleItems", header: "qcompleter.h".}
proc setMaxVisibleItems*(this: var QCompleter; maxItems: cint) {.
    importcpp: "setMaxVisibleItems", header: "qcompleter.h".}
proc completionCount*(this: QCompleter): cint {.noSideEffect,
    importcpp: "completionCount", header: "qcompleter.h".}
proc setCurrentRow*(this: var QCompleter; row: cint): bool {.
    importcpp: "setCurrentRow", header: "qcompleter.h".}
proc currentRow*(this: QCompleter): cint {.noSideEffect, importcpp: "currentRow",
                                       header: "qcompleter.h".}
proc currentIndex*(this: QCompleter): QModelIndex {.noSideEffect,
    importcpp: "currentIndex", header: "qcompleter.h".}
proc currentCompletion*(this: QCompleter): QString {.noSideEffect,
    importcpp: "currentCompletion", header: "qcompleter.h".}
proc completionModel*(this: QCompleter): ptr QAbstractItemModel {.noSideEffect,
    importcpp: "completionModel", header: "qcompleter.h".}
proc completionPrefix*(this: QCompleter): QString {.noSideEffect,
    importcpp: "completionPrefix", header: "qcompleter.h".}
proc setCompletionPrefix*(this: var QCompleter; prefix: QString) {.
    importcpp: "setCompletionPrefix", header: "qcompleter.h".}
proc complete*(this: var QCompleter; rect: QRect = qRect()) {.importcpp: "complete",
    header: "qcompleter.h".}
proc setWrapAround*(this: var QCompleter; wrap: bool) {.importcpp: "setWrapAround",
    header: "qcompleter.h".}
proc pathFromIndex*(this: QCompleter; index: QModelIndex): QString {.noSideEffect,
    importcpp: "pathFromIndex", header: "qcompleter.h".}
proc splitPath*(this: QCompleter; path: QString): QStringList {.noSideEffect,
    importcpp: "splitPath", header: "qcompleter.h".}