import qtwidgets_types

##  Copyright (C) 2019 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(textedit)
discard "forward decl of QStyleSheet"
discard "forward decl of QTextDocument"
discard "forward decl of QMenu"
discard "forward decl of QTextEditPrivate"
discard "forward decl of QMimeData"
discard "forward decl of QPagedPaintDevice"
discard "forward decl of QRegularExpression"





proc constructQTextEdit*(parent: ptr QWidget = nil): QTextEdit {.constructor,
    importcpp: "QTextEdit(@)", header: "qtextedit.h".}
proc constructQTextEdit*(text: QString; parent: ptr QWidget = nil): QTextEdit {.
    constructor, importcpp: "QTextEdit(@)", header: "qtextedit.h".}
proc destroyQTextEdit*(this: var QTextEdit) {.importcpp: "#.~QTextEdit()",
    header: "qtextedit.h".}
proc setDocument*(this: var QTextEdit; document: ptr QTextDocument) {.
    importcpp: "setDocument", header: "qtextedit.h".}
proc document*(this: QTextEdit): ptr QTextDocument {.noSideEffect,
    importcpp: "document", header: "qtextedit.h".}
proc setPlaceholderText*(this: var QTextEdit; placeholderText: QString) {.
    importcpp: "setPlaceholderText", header: "qtextedit.h".}
proc placeholderText*(this: QTextEdit): QString {.noSideEffect,
    importcpp: "placeholderText", header: "qtextedit.h".}
proc setTextCursor*(this: var QTextEdit; cursor: QTextCursor) {.
    importcpp: "setTextCursor", header: "qtextedit.h".}
proc textCursor*(this: QTextEdit): QTextCursor {.noSideEffect,
    importcpp: "textCursor", header: "qtextedit.h".}
proc isReadOnly*(this: QTextEdit): bool {.noSideEffect, importcpp: "isReadOnly",
                                      header: "qtextedit.h".}
proc setReadOnly*(this: var QTextEdit; ro: bool) {.importcpp: "setReadOnly",
    header: "qtextedit.h".}
proc setTextInteractionFlags*(this: var QTextEdit; flags: TextInteractionFlags) {.
    importcpp: "setTextInteractionFlags", header: "qtextedit.h".}
proc textInteractionFlags*(this: QTextEdit): TextInteractionFlags {.noSideEffect,
    importcpp: "textInteractionFlags", header: "qtextedit.h".}
proc fontPointSize*(this: QTextEdit): Qreal {.noSideEffect,
    importcpp: "fontPointSize", header: "qtextedit.h".}
proc fontFamily*(this: QTextEdit): QString {.noSideEffect, importcpp: "fontFamily",
    header: "qtextedit.h".}
proc fontWeight*(this: QTextEdit): cint {.noSideEffect, importcpp: "fontWeight",
                                      header: "qtextedit.h".}
proc fontUnderline*(this: QTextEdit): bool {.noSideEffect,
    importcpp: "fontUnderline", header: "qtextedit.h".}
proc fontItalic*(this: QTextEdit): bool {.noSideEffect, importcpp: "fontItalic",
                                      header: "qtextedit.h".}
proc textColor*(this: QTextEdit): QColor {.noSideEffect, importcpp: "textColor",
                                       header: "qtextedit.h".}
proc textBackgroundColor*(this: QTextEdit): QColor {.noSideEffect,
    importcpp: "textBackgroundColor", header: "qtextedit.h".}
proc currentFont*(this: QTextEdit): QFont {.noSideEffect, importcpp: "currentFont",
                                        header: "qtextedit.h".}
proc alignment*(this: QTextEdit): Alignment {.noSideEffect, importcpp: "alignment",
    header: "qtextedit.h".}
proc mergeCurrentCharFormat*(this: var QTextEdit; modifier: QTextCharFormat) {.
    importcpp: "mergeCurrentCharFormat", header: "qtextedit.h".}
proc setCurrentCharFormat*(this: var QTextEdit; format: QTextCharFormat) {.
    importcpp: "setCurrentCharFormat", header: "qtextedit.h".}
proc currentCharFormat*(this: QTextEdit): QTextCharFormat {.noSideEffect,
    importcpp: "currentCharFormat", header: "qtextedit.h".}
proc autoFormatting*(this: QTextEdit): AutoFormatting {.noSideEffect,
    importcpp: "autoFormatting", header: "qtextedit.h".}
proc setAutoFormatting*(this: var QTextEdit; features: AutoFormatting) {.
    importcpp: "setAutoFormatting", header: "qtextedit.h".}
proc tabChangesFocus*(this: QTextEdit): bool {.noSideEffect,
    importcpp: "tabChangesFocus", header: "qtextedit.h".}
proc setTabChangesFocus*(this: var QTextEdit; b: bool) {.
    importcpp: "setTabChangesFocus", header: "qtextedit.h".}
proc setDocumentTitle*(this: var QTextEdit; title: QString) {.
    importcpp: "setDocumentTitle", header: "qtextedit.h".}
proc documentTitle*(this: QTextEdit): QString {.noSideEffect,
    importcpp: "documentTitle", header: "qtextedit.h".}
proc isUndoRedoEnabled*(this: QTextEdit): bool {.noSideEffect,
    importcpp: "isUndoRedoEnabled", header: "qtextedit.h".}
proc setUndoRedoEnabled*(this: var QTextEdit; enable: bool) {.
    importcpp: "setUndoRedoEnabled", header: "qtextedit.h".}
proc lineWrapMode*(this: QTextEdit): QTextEditLineWrapMode {.noSideEffect,
    importcpp: "lineWrapMode", header: "qtextedit.h".}
proc setLineWrapMode*(this: var QTextEdit; mode: QTextEditLineWrapMode) {.
    importcpp: "setLineWrapMode", header: "qtextedit.h".}
proc lineWrapColumnOrWidth*(this: QTextEdit): cint {.noSideEffect,
    importcpp: "lineWrapColumnOrWidth", header: "qtextedit.h".}
proc setLineWrapColumnOrWidth*(this: var QTextEdit; w: cint) {.
    importcpp: "setLineWrapColumnOrWidth", header: "qtextedit.h".}
proc wordWrapMode*(this: QTextEdit): WrapMode {.noSideEffect,
    importcpp: "wordWrapMode", header: "qtextedit.h".}
proc setWordWrapMode*(this: var QTextEdit; policy: WrapMode) {.
    importcpp: "setWordWrapMode", header: "qtextedit.h".}
proc find*(this: var QTextEdit; exp: QString;
          options: QTextDocumentFindFlags = findFlags()): bool {.importcpp: "find",
    header: "qtextedit.h".}
proc find*(this: var QTextEdit; exp: QRegularExpression;
          options: QTextDocumentFindFlags = findFlags()): bool {.importcpp: "find",
    header: "qtextedit.h".}
proc toPlainText*(this: QTextEdit): QString {.noSideEffect, importcpp: "toPlainText",
    header: "qtextedit.h".}
when not defined(QT_NO_TEXTHTMLPARSER):
  proc toHtml*(this: QTextEdit): QString {.noSideEffect, importcpp: "toHtml",
                                       header: "qtextedit.h".}
proc toMarkdown*(this: QTextEdit;
                features: QTextDocumentMarkdownFeatures = markdownDialectGitHub): QString {.
    noSideEffect, importcpp: "toMarkdown", header: "qtextedit.h".}
proc ensureCursorVisible*(this: var QTextEdit) {.importcpp: "ensureCursorVisible",
    header: "qtextedit.h".}
proc loadResource*(this: var QTextEdit; `type`: cint; name: QUrl): QVariant {.
    importcpp: "loadResource", header: "qtextedit.h".}
proc createStandardContextMenu*(this: var QTextEdit): ptr QMenu {.
    importcpp: "createStandardContextMenu", header: "qtextedit.h".}
proc createStandardContextMenu*(this: var QTextEdit; position: QPoint): ptr QMenu {.
    importcpp: "createStandardContextMenu", header: "qtextedit.h".}
proc cursorForPosition*(this: QTextEdit; pos: QPoint): QTextCursor {.noSideEffect,
    importcpp: "cursorForPosition", header: "qtextedit.h".}
proc cursorRect*(this: QTextEdit; cursor: QTextCursor): QRect {.noSideEffect,
    importcpp: "cursorRect", header: "qtextedit.h".}
proc cursorRect*(this: QTextEdit): QRect {.noSideEffect, importcpp: "cursorRect",
                                       header: "qtextedit.h".}
proc anchorAt*(this: QTextEdit; pos: QPoint): QString {.noSideEffect,
    importcpp: "anchorAt", header: "qtextedit.h".}
proc overwriteMode*(this: QTextEdit): bool {.noSideEffect,
    importcpp: "overwriteMode", header: "qtextedit.h".}
proc setOverwriteMode*(this: var QTextEdit; overwrite: bool) {.
    importcpp: "setOverwriteMode", header: "qtextedit.h".}
proc tabStopDistance*(this: QTextEdit): Qreal {.noSideEffect,
    importcpp: "tabStopDistance", header: "qtextedit.h".}
proc setTabStopDistance*(this: var QTextEdit; distance: Qreal) {.
    importcpp: "setTabStopDistance", header: "qtextedit.h".}
proc cursorWidth*(this: QTextEdit): cint {.noSideEffect, importcpp: "cursorWidth",
                                       header: "qtextedit.h".}
proc setCursorWidth*(this: var QTextEdit; width: cint) {.importcpp: "setCursorWidth",
    header: "qtextedit.h".}
proc acceptRichText*(this: QTextEdit): bool {.noSideEffect,
    importcpp: "acceptRichText", header: "qtextedit.h".}
proc setAcceptRichText*(this: var QTextEdit; accept: bool) {.
    importcpp: "setAcceptRichText", header: "qtextedit.h".}


proc setExtraSelections*(this: var QTextEdit;
                        selections: QList[QTextEditExtraSelection]) {.
    importcpp: "setExtraSelections", header: "qtextedit.h".}
proc extraSelections*(this: QTextEdit): QList[QTextEditExtraSelection] {.
    noSideEffect, importcpp: "extraSelections", header: "qtextedit.h".}
proc moveCursor*(this: var QTextEdit; operation: MoveOperation;
                mode: MoveMode = moveAnchor) {.importcpp: "moveCursor",
    header: "qtextedit.h".}
proc canPaste*(this: QTextEdit): bool {.noSideEffect, importcpp: "canPaste",
                                    header: "qtextedit.h".}
proc print*(this: QTextEdit; printer: ptr QPagedPaintDevice) {.noSideEffect,
    importcpp: "print", header: "qtextedit.h".}
proc inputMethodQuery*(this: QTextEdit; property: InputMethodQuery): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qtextedit.h".}
proc inputMethodQuery*(this: QTextEdit; query: InputMethodQuery; argument: QVariant): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qtextedit.h".}
proc setFontPointSize*(this: var QTextEdit; s: Qreal) {.importcpp: "setFontPointSize",
    header: "qtextedit.h".}
proc setFontFamily*(this: var QTextEdit; fontFamily: QString) {.
    importcpp: "setFontFamily", header: "qtextedit.h".}
proc setFontWeight*(this: var QTextEdit; w: cint) {.importcpp: "setFontWeight",
    header: "qtextedit.h".}
proc setFontUnderline*(this: var QTextEdit; b: bool) {.importcpp: "setFontUnderline",
    header: "qtextedit.h".}
proc setFontItalic*(this: var QTextEdit; b: bool) {.importcpp: "setFontItalic",
    header: "qtextedit.h".}
proc setTextColor*(this: var QTextEdit; c: QColor) {.importcpp: "setTextColor",
    header: "qtextedit.h".}
proc setTextBackgroundColor*(this: var QTextEdit; c: QColor) {.
    importcpp: "setTextBackgroundColor", header: "qtextedit.h".}
proc setCurrentFont*(this: var QTextEdit; f: QFont) {.importcpp: "setCurrentFont",
    header: "qtextedit.h".}
proc setAlignment*(this: var QTextEdit; a: Alignment) {.importcpp: "setAlignment",
    header: "qtextedit.h".}
proc setPlainText*(this: var QTextEdit; text: QString) {.importcpp: "setPlainText",
    header: "qtextedit.h".}
when not defined(QT_NO_TEXTHTMLPARSER):
  proc setHtml*(this: var QTextEdit; text: QString) {.importcpp: "setHtml",
      header: "qtextedit.h".}
proc setMarkdown*(this: var QTextEdit; markdown: QString) {.importcpp: "setMarkdown",
    header: "qtextedit.h".}
proc setText*(this: var QTextEdit; text: QString) {.importcpp: "setText",
    header: "qtextedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc cut*(this: var QTextEdit) {.importcpp: "cut", header: "qtextedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc copy*(this: var QTextEdit) {.importcpp: "copy", header: "qtextedit.h".}
when not defined(QT_NO_CLIPBOARD):
  proc paste*(this: var QTextEdit) {.importcpp: "paste", header: "qtextedit.h".}
proc undo*(this: var QTextEdit) {.importcpp: "undo", header: "qtextedit.h".}
proc redo*(this: var QTextEdit) {.importcpp: "redo", header: "qtextedit.h".}
proc clear*(this: var QTextEdit) {.importcpp: "clear", header: "qtextedit.h".}
proc selectAll*(this: var QTextEdit) {.importcpp: "selectAll", header: "qtextedit.h".}
proc insertPlainText*(this: var QTextEdit; text: QString) {.
    importcpp: "insertPlainText", header: "qtextedit.h".}
when not defined(QT_NO_TEXTHTMLPARSER):
  proc insertHtml*(this: var QTextEdit; text: QString) {.importcpp: "insertHtml",
      header: "qtextedit.h".}
proc append*(this: var QTextEdit; text: QString) {.importcpp: "append",
    header: "qtextedit.h".}
proc scrollToAnchor*(this: var QTextEdit; name: QString) {.
    importcpp: "scrollToAnchor", header: "qtextedit.h".}
proc zoomIn*(this: var QTextEdit; range: cint = 1) {.importcpp: "zoomIn",
    header: "qtextedit.h".}
proc zoomOut*(this: var QTextEdit; range: cint = 1) {.importcpp: "zoomOut",
    header: "qtextedit.h".}
