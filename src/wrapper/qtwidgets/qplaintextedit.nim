##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(textedit)
discard "forward decl of QStyleSheet"
discard "forward decl of QTextDocument"
discard "forward decl of QMenu"
discard "forward decl of QPlainTextEditPrivate"
discard "forward decl of QMimeData"
discard "forward decl of QPagedPaintDevice"
discard "forward decl of QRegularExpression"
type
  QPlainTextEdit* {.importcpp: "QPlainTextEdit", header: "qplaintextedit.h", bycopy.} = object of QAbstractScrollArea

  QPlainTextEditLineWrapMode* {.size: sizeof(cint),
                               importcpp: "QPlainTextEdit::LineWrapMode",
                               header: "qplaintextedit.h".} = enum
    NoWrap, WidgetWidth


proc constructQPlainTextEdit*(parent: ptr QWidget = nil): QPlainTextEdit {.constructor,
    importcpp: "QPlainTextEdit(@)", header: "qplaintextedit.h".}
proc constructQPlainTextEdit*(text: QString; parent: ptr QWidget = nil): QPlainTextEdit {.
    constructor, importcpp: "QPlainTextEdit(@)", header: "qplaintextedit.h".}
proc destroyQPlainTextEdit*(this: var QPlainTextEdit) {.
    importcpp: "#.~QPlainTextEdit()", header: "qplaintextedit.h".}
proc setDocument*(this: var QPlainTextEdit; document: ptr QTextDocument) {.
    importcpp: "setDocument", header: "qplaintextedit.h".}
proc document*(this: QPlainTextEdit): ptr QTextDocument {.noSideEffect,
    importcpp: "document", header: "qplaintextedit.h".}
proc setPlaceholderText*(this: var QPlainTextEdit; placeholderText: QString) {.
    importcpp: "setPlaceholderText", header: "qplaintextedit.h".}
proc placeholderText*(this: QPlainTextEdit): QString {.noSideEffect,
    importcpp: "placeholderText", header: "qplaintextedit.h".}
proc setTextCursor*(this: var QPlainTextEdit; cursor: QTextCursor) {.
    importcpp: "setTextCursor", header: "qplaintextedit.h".}
proc textCursor*(this: QPlainTextEdit): QTextCursor {.noSideEffect,
    importcpp: "textCursor", header: "qplaintextedit.h".}
proc isReadOnly*(this: QPlainTextEdit): bool {.noSideEffect, importcpp: "isReadOnly",
    header: "qplaintextedit.h".}
proc setReadOnly*(this: var QPlainTextEdit; ro: bool) {.importcpp: "setReadOnly",
    header: "qplaintextedit.h".}
proc setTextInteractionFlags*(this: var QPlainTextEdit; flags: TextInteractionFlags) {.
    importcpp: "setTextInteractionFlags", header: "qplaintextedit.h".}
proc textInteractionFlags*(this: QPlainTextEdit): TextInteractionFlags {.
    noSideEffect, importcpp: "textInteractionFlags", header: "qplaintextedit.h".}
proc mergeCurrentCharFormat*(this: var QPlainTextEdit; modifier: QTextCharFormat) {.
    importcpp: "mergeCurrentCharFormat", header: "qplaintextedit.h".}
proc setCurrentCharFormat*(this: var QPlainTextEdit; format: QTextCharFormat) {.
    importcpp: "setCurrentCharFormat", header: "qplaintextedit.h".}
proc currentCharFormat*(this: QPlainTextEdit): QTextCharFormat {.noSideEffect,
    importcpp: "currentCharFormat", header: "qplaintextedit.h".}
proc tabChangesFocus*(this: QPlainTextEdit): bool {.noSideEffect,
    importcpp: "tabChangesFocus", header: "qplaintextedit.h".}
proc setTabChangesFocus*(this: var QPlainTextEdit; b: bool) {.
    importcpp: "setTabChangesFocus", header: "qplaintextedit.h".}
proc setDocumentTitle*(this: var QPlainTextEdit; title: QString) {.
    importcpp: "setDocumentTitle", header: "qplaintextedit.h".}
proc documentTitle*(this: QPlainTextEdit): QString {.noSideEffect,
    importcpp: "documentTitle", header: "qplaintextedit.h".}
proc isUndoRedoEnabled*(this: QPlainTextEdit): bool {.noSideEffect,
    importcpp: "isUndoRedoEnabled", header: "qplaintextedit.h".}
proc setUndoRedoEnabled*(this: var QPlainTextEdit; enable: bool) {.
    importcpp: "setUndoRedoEnabled", header: "qplaintextedit.h".}
proc setMaximumBlockCount*(this: var QPlainTextEdit; maximum: cint) {.
    importcpp: "setMaximumBlockCount", header: "qplaintextedit.h".}
proc maximumBlockCount*(this: QPlainTextEdit): cint {.noSideEffect,
    importcpp: "maximumBlockCount", header: "qplaintextedit.h".}
proc lineWrapMode*(this: QPlainTextEdit): QPlainTextEditLineWrapMode {.noSideEffect,
    importcpp: "lineWrapMode", header: "qplaintextedit.h".}
proc setLineWrapMode*(this: var QPlainTextEdit; mode: QPlainTextEditLineWrapMode) {.
    importcpp: "setLineWrapMode", header: "qplaintextedit.h".}
proc wordWrapMode*(this: QPlainTextEdit): WrapMode {.noSideEffect,
    importcpp: "wordWrapMode", header: "qplaintextedit.h".}
proc setWordWrapMode*(this: var QPlainTextEdit; policy: WrapMode) {.
    importcpp: "setWordWrapMode", header: "qplaintextedit.h".}
proc setBackgroundVisible*(this: var QPlainTextEdit; visible: bool) {.
    importcpp: "setBackgroundVisible", header: "qplaintextedit.h".}
proc backgroundVisible*(this: QPlainTextEdit): bool {.noSideEffect,
    importcpp: "backgroundVisible", header: "qplaintextedit.h".}
proc setCenterOnScroll*(this: var QPlainTextEdit; enabled: bool) {.
    importcpp: "setCenterOnScroll", header: "qplaintextedit.h".}
proc centerOnScroll*(this: QPlainTextEdit): bool {.noSideEffect,
    importcpp: "centerOnScroll", header: "qplaintextedit.h".}
proc find*(this: var QPlainTextEdit; exp: QString;
          options: QTextDocumentFindFlags = findFlags()): bool {.importcpp: "find",
    header: "qplaintextedit.h".}
proc find*(this: var QPlainTextEdit; exp: QRegularExpression;
          options: QTextDocumentFindFlags = findFlags()): bool {.importcpp: "find",
    header: "qplaintextedit.h".}
proc toPlainText*(this: QPlainTextEdit): QString {.noSideEffect,
    importcpp: "toPlainText", header: "qplaintextedit.h".}
proc ensureCursorVisible*(this: var QPlainTextEdit) {.
    importcpp: "ensureCursorVisible", header: "qplaintextedit.h".}
proc loadResource*(this: var QPlainTextEdit; `type`: cint; name: QUrl): QVariant {.
    importcpp: "loadResource", header: "qplaintextedit.h".}
proc createStandardContextMenu*(this: var QPlainTextEdit): ptr QMenu {.
    importcpp: "createStandardContextMenu", header: "qplaintextedit.h".}
proc createStandardContextMenu*(this: var QPlainTextEdit; position: QPoint): ptr QMenu {.
    importcpp: "createStandardContextMenu", header: "qplaintextedit.h".}
proc cursorForPosition*(this: QPlainTextEdit; pos: QPoint): QTextCursor {.
    noSideEffect, importcpp: "cursorForPosition", header: "qplaintextedit.h".}
proc cursorRect*(this: QPlainTextEdit; cursor: QTextCursor): QRect {.noSideEffect,
    importcpp: "cursorRect", header: "qplaintextedit.h".}
proc cursorRect*(this: QPlainTextEdit): QRect {.noSideEffect,
    importcpp: "cursorRect", header: "qplaintextedit.h".}
proc anchorAt*(this: QPlainTextEdit; pos: QPoint): QString {.noSideEffect,
    importcpp: "anchorAt", header: "qplaintextedit.h".}
proc overwriteMode*(this: QPlainTextEdit): bool {.noSideEffect,
    importcpp: "overwriteMode", header: "qplaintextedit.h".}
proc setOverwriteMode*(this: var QPlainTextEdit; overwrite: bool) {.
    importcpp: "setOverwriteMode", header: "qplaintextedit.h".}
proc tabStopDistance*(this: QPlainTextEdit): Qreal {.noSideEffect,
    importcpp: "tabStopDistance", header: "qplaintextedit.h".}
proc setTabStopDistance*(this: var QPlainTextEdit; distance: Qreal) {.
    importcpp: "setTabStopDistance", header: "qplaintextedit.h".}
proc cursorWidth*(this: QPlainTextEdit): cint {.noSideEffect,
    importcpp: "cursorWidth", header: "qplaintextedit.h".}
proc setCursorWidth*(this: var QPlainTextEdit; width: cint) {.
    importcpp: "setCursorWidth", header: "qplaintextedit.h".}
proc setExtraSelections*(this: var QPlainTextEdit; selections: QList[ExtraSelection]) {.
    importcpp: "setExtraSelections", header: "qplaintextedit.h".}
proc extraSelections*(this: QPlainTextEdit): QList[ExtraSelection] {.noSideEffect,
    importcpp: "extraSelections", header: "qplaintextedit.h".}
proc moveCursor*(this: var QPlainTextEdit; operation: MoveOperation;
                mode: MoveMode = moveAnchor) {.importcpp: "moveCursor",
    header: "qplaintextedit.h".}
proc canPaste*(this: QPlainTextEdit): bool {.noSideEffect, importcpp: "canPaste",
    header: "qplaintextedit.h".}
proc print*(this: QPlainTextEdit; printer: ptr QPagedPaintDevice) {.noSideEffect,
    importcpp: "print", header: "qplaintextedit.h".}
proc blockCount*(this: QPlainTextEdit): cint {.noSideEffect, importcpp: "blockCount",
    header: "qplaintextedit.h".}
proc inputMethodQuery*(this: QPlainTextEdit; property: InputMethodQuery): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qplaintextedit.h".}
proc inputMethodQuery*(this: QPlainTextEdit; query: InputMethodQuery;
                      argument: QVariant): QVariant {.noSideEffect,
    importcpp: "inputMethodQuery", header: "qplaintextedit.h".}
proc setPlainText*(this: var QPlainTextEdit; text: QString) {.
    importcpp: "setPlainText", header: "qplaintextedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc cut*(this: var QPlainTextEdit) {.importcpp: "cut", header: "qplaintextedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc copy*(this: var QPlainTextEdit) {.importcpp: "copy", header: "qplaintextedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc paste*(this: var QPlainTextEdit) {.importcpp: "paste",
                                      header: "qplaintextedit.h".}
proc undo*(this: var QPlainTextEdit) {.importcpp: "undo", header: "qplaintextedit.h".}
proc redo*(this: var QPlainTextEdit) {.importcpp: "redo", header: "qplaintextedit.h".}
proc clear*(this: var QPlainTextEdit) {.importcpp: "clear", header: "qplaintextedit.h".}
proc selectAll*(this: var QPlainTextEdit) {.importcpp: "selectAll",
                                        header: "qplaintextedit.h".}
proc insertPlainText*(this: var QPlainTextEdit; text: QString) {.
    importcpp: "insertPlainText", header: "qplaintextedit.h".}
proc appendPlainText*(this: var QPlainTextEdit; text: QString) {.
    importcpp: "appendPlainText", header: "qplaintextedit.h".}
proc appendHtml*(this: var QPlainTextEdit; html: QString) {.importcpp: "appendHtml",
    header: "qplaintextedit.h".}
proc centerCursor*(this: var QPlainTextEdit) {.importcpp: "centerCursor",
    header: "qplaintextedit.h".}
proc zoomIn*(this: var QPlainTextEdit; range: cint = 1) {.importcpp: "zoomIn",
    header: "qplaintextedit.h".}
proc zoomOut*(this: var QPlainTextEdit; range: cint = 1) {.importcpp: "zoomOut",
    header: "qplaintextedit.h".}
discard "forward decl of QPlainTextDocumentLayoutPrivate"
type
  QPlainTextDocumentLayout* {.importcpp: "QPlainTextDocumentLayout",
                             header: "qplaintextedit.h", bycopy.} = object of QAbstractTextDocumentLayout


proc constructQPlainTextDocumentLayout*(document: ptr QTextDocument): QPlainTextDocumentLayout {.
    constructor, importcpp: "QPlainTextDocumentLayout(@)",
    header: "qplaintextedit.h".}
proc destroyQPlainTextDocumentLayout*(this: var QPlainTextDocumentLayout) {.
    importcpp: "#.~QPlainTextDocumentLayout()", header: "qplaintextedit.h".}
proc draw*(this: var QPlainTextDocumentLayout; a2: ptr QPainter; a3: PaintContext) {.
    importcpp: "draw", header: "qplaintextedit.h".}
proc hitTest*(this: QPlainTextDocumentLayout; a2: QPointF; a3: HitTestAccuracy): cint {.
    noSideEffect, importcpp: "hitTest", header: "qplaintextedit.h".}
proc pageCount*(this: QPlainTextDocumentLayout): cint {.noSideEffect,
    importcpp: "pageCount", header: "qplaintextedit.h".}
proc documentSize*(this: QPlainTextDocumentLayout): QSizeF {.noSideEffect,
    importcpp: "documentSize", header: "qplaintextedit.h".}
proc frameBoundingRect*(this: QPlainTextDocumentLayout; a2: ptr QTextFrame): QRectF {.
    noSideEffect, importcpp: "frameBoundingRect", header: "qplaintextedit.h".}
proc blockBoundingRect*(this: QPlainTextDocumentLayout; `block`: QTextBlock): QRectF {.
    noSideEffect, importcpp: "blockBoundingRect", header: "qplaintextedit.h".}
proc ensureBlockLayout*(this: QPlainTextDocumentLayout; `block`: QTextBlock) {.
    noSideEffect, importcpp: "ensureBlockLayout", header: "qplaintextedit.h".}
proc setCursorWidth*(this: var QPlainTextDocumentLayout; width: cint) {.
    importcpp: "setCursorWidth", header: "qplaintextedit.h".}
proc cursorWidth*(this: QPlainTextDocumentLayout): cint {.noSideEffect,
    importcpp: "cursorWidth", header: "qplaintextedit.h".}
proc requestUpdate*(this: var QPlainTextDocumentLayout) {.
    importcpp: "requestUpdate", header: "qplaintextedit.h".}