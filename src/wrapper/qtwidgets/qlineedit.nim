##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(lineedit)
discard "forward decl of QValidator"
discard "forward decl of QMenu"
discard "forward decl of QLineEditPrivate"
discard "forward decl of QCompleter"
discard "forward decl of QStyleOptionFrame"
discard "forward decl of QAbstractSpinBox"
discard "forward decl of QDateTimeEdit"
discard "forward decl of QIcon"
discard "forward decl of QToolButton"
type
  QLineEdit* {.importcpp: "QLineEdit", header: "qlineedit.h", bycopy.} = object of QWidget

  QLineEditActionPosition* {.size: sizeof(cint),
                            importcpp: "QLineEdit::ActionPosition",
                            header: "qlineedit.h".} = enum
    LeadingPosition, TrailingPosition


proc constructQLineEdit*(parent: ptr QWidget = nil): QLineEdit {.constructor,
    importcpp: "QLineEdit(@)", header: "qlineedit.h".}
proc constructQLineEdit*(a1: QString; parent: ptr QWidget = nil): QLineEdit {.
    constructor, importcpp: "QLineEdit(@)", header: "qlineedit.h".}
proc destroyQLineEdit*(this: var QLineEdit) {.importcpp: "#.~QLineEdit()",
    header: "qlineedit.h".}
proc text*(this: QLineEdit): QString {.noSideEffect, importcpp: "text",
                                   header: "qlineedit.h".}
proc displayText*(this: QLineEdit): QString {.noSideEffect, importcpp: "displayText",
    header: "qlineedit.h".}
proc placeholderText*(this: QLineEdit): QString {.noSideEffect,
    importcpp: "placeholderText", header: "qlineedit.h".}
proc setPlaceholderText*(this: var QLineEdit; a2: QString) {.
    importcpp: "setPlaceholderText", header: "qlineedit.h".}
proc maxLength*(this: QLineEdit): cint {.noSideEffect, importcpp: "maxLength",
                                     header: "qlineedit.h".}
proc setMaxLength*(this: var QLineEdit; a2: cint) {.importcpp: "setMaxLength",
    header: "qlineedit.h".}
proc setFrame*(this: var QLineEdit; a2: bool) {.importcpp: "setFrame",
    header: "qlineedit.h".}
proc hasFrame*(this: QLineEdit): bool {.noSideEffect, importcpp: "hasFrame",
                                    header: "qlineedit.h".}
proc setClearButtonEnabled*(this: var QLineEdit; enable: bool) {.
    importcpp: "setClearButtonEnabled", header: "qlineedit.h".}
proc isClearButtonEnabled*(this: QLineEdit): bool {.noSideEffect,
    importcpp: "isClearButtonEnabled", header: "qlineedit.h".}
type
  QLineEditEchoMode* {.size: sizeof(cint), importcpp: "QLineEdit::EchoMode",
                      header: "qlineedit.h".} = enum
    Normal, NoEcho, Password, PasswordEchoOnEdit


proc echoMode*(this: QLineEdit): QLineEditEchoMode {.noSideEffect,
    importcpp: "echoMode", header: "qlineedit.h".}
proc setEchoMode*(this: var QLineEdit; a2: QLineEditEchoMode) {.
    importcpp: "setEchoMode", header: "qlineedit.h".}
proc isReadOnly*(this: QLineEdit): bool {.noSideEffect, importcpp: "isReadOnly",
                                      header: "qlineedit.h".}
proc setReadOnly*(this: var QLineEdit; a2: bool) {.importcpp: "setReadOnly",
    header: "qlineedit.h".}
when not defined(QT_NO_VALIDATOR):
  proc setValidator*(this: var QLineEdit; a2: ptr QValidator) {.
      importcpp: "setValidator", header: "qlineedit.h".}
when not defined(QT_NO_VALIDATOR):
  proc validator*(this: QLineEdit): ptr QValidator {.noSideEffect,
      importcpp: "validator", header: "qlineedit.h".}
proc setCompleter*(this: var QLineEdit; completer: ptr QCompleter) {.
    importcpp: "setCompleter", header: "qlineedit.h".}
proc completer*(this: QLineEdit): ptr QCompleter {.noSideEffect,
    importcpp: "completer", header: "qlineedit.h".}
proc sizeHint*(this: QLineEdit): QSize {.noSideEffect, importcpp: "sizeHint",
                                     header: "qlineedit.h".}
proc minimumSizeHint*(this: QLineEdit): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qlineedit.h".}
proc cursorPosition*(this: QLineEdit): cint {.noSideEffect,
    importcpp: "cursorPosition", header: "qlineedit.h".}
proc setCursorPosition*(this: var QLineEdit; a2: cint) {.
    importcpp: "setCursorPosition", header: "qlineedit.h".}
proc cursorPositionAt*(this: var QLineEdit; pos: QPoint): cint {.
    importcpp: "cursorPositionAt", header: "qlineedit.h".}
proc setAlignment*(this: var QLineEdit; flag: Alignment) {.importcpp: "setAlignment",
    header: "qlineedit.h".}
proc alignment*(this: QLineEdit): Alignment {.noSideEffect, importcpp: "alignment",
    header: "qlineedit.h".}
proc cursorForward*(this: var QLineEdit; mark: bool; steps: cint = 1) {.
    importcpp: "cursorForward", header: "qlineedit.h".}
proc cursorBackward*(this: var QLineEdit; mark: bool; steps: cint = 1) {.
    importcpp: "cursorBackward", header: "qlineedit.h".}
proc cursorWordForward*(this: var QLineEdit; mark: bool) {.
    importcpp: "cursorWordForward", header: "qlineedit.h".}
proc cursorWordBackward*(this: var QLineEdit; mark: bool) {.
    importcpp: "cursorWordBackward", header: "qlineedit.h".}
proc backspace*(this: var QLineEdit) {.importcpp: "backspace", header: "qlineedit.h".}
proc del*(this: var QLineEdit) {.importcpp: "del", header: "qlineedit.h".}
proc home*(this: var QLineEdit; mark: bool) {.importcpp: "home", header: "qlineedit.h".}
proc `end`*(this: var QLineEdit; mark: bool) {.importcpp: "end", header: "qlineedit.h".}
proc isModified*(this: QLineEdit): bool {.noSideEffect, importcpp: "isModified",
                                      header: "qlineedit.h".}
proc setModified*(this: var QLineEdit; a2: bool) {.importcpp: "setModified",
    header: "qlineedit.h".}
proc setSelection*(this: var QLineEdit; a2: cint; a3: cint) {.importcpp: "setSelection",
    header: "qlineedit.h".}
proc hasSelectedText*(this: QLineEdit): bool {.noSideEffect,
    importcpp: "hasSelectedText", header: "qlineedit.h".}
proc selectedText*(this: QLineEdit): QString {.noSideEffect,
    importcpp: "selectedText", header: "qlineedit.h".}
proc selectionStart*(this: QLineEdit): cint {.noSideEffect,
    importcpp: "selectionStart", header: "qlineedit.h".}
proc selectionEnd*(this: QLineEdit): cint {.noSideEffect, importcpp: "selectionEnd",
                                        header: "qlineedit.h".}
proc selectionLength*(this: QLineEdit): cint {.noSideEffect,
    importcpp: "selectionLength", header: "qlineedit.h".}
proc isUndoAvailable*(this: QLineEdit): bool {.noSideEffect,
    importcpp: "isUndoAvailable", header: "qlineedit.h".}
proc isRedoAvailable*(this: QLineEdit): bool {.noSideEffect,
    importcpp: "isRedoAvailable", header: "qlineedit.h".}
proc setDragEnabled*(this: var QLineEdit; b: bool) {.importcpp: "setDragEnabled",
    header: "qlineedit.h".}
proc dragEnabled*(this: QLineEdit): bool {.noSideEffect, importcpp: "dragEnabled",
                                       header: "qlineedit.h".}
proc setCursorMoveStyle*(this: var QLineEdit; style: CursorMoveStyle) {.
    importcpp: "setCursorMoveStyle", header: "qlineedit.h".}
proc cursorMoveStyle*(this: QLineEdit): CursorMoveStyle {.noSideEffect,
    importcpp: "cursorMoveStyle", header: "qlineedit.h".}
proc inputMask*(this: QLineEdit): QString {.noSideEffect, importcpp: "inputMask",
                                        header: "qlineedit.h".}
proc setInputMask*(this: var QLineEdit; inputMask: QString) {.
    importcpp: "setInputMask", header: "qlineedit.h".}
proc hasAcceptableInput*(this: QLineEdit): bool {.noSideEffect,
    importcpp: "hasAcceptableInput", header: "qlineedit.h".}
proc setTextMargins*(this: var QLineEdit; left: cint; top: cint; right: cint; bottom: cint) {.
    importcpp: "setTextMargins", header: "qlineedit.h".}
proc setTextMargins*(this: var QLineEdit; margins: QMargins) {.
    importcpp: "setTextMargins", header: "qlineedit.h".}
proc textMargins*(this: QLineEdit): QMargins {.noSideEffect,
    importcpp: "textMargins", header: "qlineedit.h".}
## using statement

proc addAction*(this: var QLineEdit; action: ptr QAction;
               position: QLineEditActionPosition) {.importcpp: "addAction",
    header: "qlineedit.h".}
proc addAction*(this: var QLineEdit; icon: QIcon; position: QLineEditActionPosition): ptr QAction {.
    importcpp: "addAction", header: "qlineedit.h".}
proc setText*(this: var QLineEdit; a2: QString) {.importcpp: "setText",
    header: "qlineedit.h".}
proc clear*(this: var QLineEdit) {.importcpp: "clear", header: "qlineedit.h".}
proc selectAll*(this: var QLineEdit) {.importcpp: "selectAll", header: "qlineedit.h".}
proc undo*(this: var QLineEdit) {.importcpp: "undo", header: "qlineedit.h".}
proc redo*(this: var QLineEdit) {.importcpp: "redo", header: "qlineedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc cut*(this: var QLineEdit) {.importcpp: "cut", header: "qlineedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc copy*(this: QLineEdit) {.noSideEffect, importcpp: "copy", header: "qlineedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc paste*(this: var QLineEdit) {.importcpp: "paste", header: "qlineedit.h".}
proc deselect*(this: var QLineEdit) {.importcpp: "deselect", header: "qlineedit.h".}
proc insert*(this: var QLineEdit; a2: QString) {.importcpp: "insert",
    header: "qlineedit.h".}
proc createStandardContextMenu*(this: var QLineEdit): ptr QMenu {.
    importcpp: "createStandardContextMenu", header: "qlineedit.h".}
proc inputMethodQuery*(this: QLineEdit; a2: InputMethodQuery): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qlineedit.h".}
proc inputMethodQuery*(this: QLineEdit; property: InputMethodQuery;
                      argument: QVariant): QVariant {.noSideEffect,
    importcpp: "inputMethodQuery", header: "qlineedit.h".}
proc timerEvent*(this: var QLineEdit; a2: ptr QTimerEvent) {.importcpp: "timerEvent",
    header: "qlineedit.h".}
proc event*(this: var QLineEdit; a2: ptr QEvent): bool {.importcpp: "event",
    header: "qlineedit.h".}