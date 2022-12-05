##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(label)
discard "forward decl of QLabelPrivate"
type
  QLabel* {.importcpp: "QLabel", header: "qlabel.h", bycopy.} = object of QFrame


proc constructQLabel*(parent: ptr QWidget = nil; f: WindowFlags = windowFlags()): QLabel {.
    constructor, importcpp: "QLabel(@)", header: "qlabel.h".}
proc constructQLabel*(text: QString; parent: ptr QWidget = nil;
                     f: WindowFlags = windowFlags()): QLabel {.constructor,
    importcpp: "QLabel(@)", header: "qlabel.h".}
proc destroyQLabel*(this: var QLabel) {.importcpp: "#.~QLabel()", header: "qlabel.h".}
proc text*(this: QLabel): QString {.noSideEffect, importcpp: "text", header: "qlabel.h".}
proc pixmap*(this: QLabel; a2: ReturnByValueConstant): QPixmap {.noSideEffect,
    importcpp: "pixmap", header: "qlabel.h".}
proc pixmap*(this: QLabel): QPixmap {.noSideEffect, importcpp: "pixmap",
                                  header: "qlabel.h".}
proc picture*(this: QLabel): QPicture {.noSideEffect, importcpp: "picture",
                                    header: "qlabel.h".}
proc movie*(this: QLabel): ptr QMovie {.noSideEffect, importcpp: "movie",
                                   header: "qlabel.h".}
proc textFormat*(this: QLabel): TextFormat {.noSideEffect, importcpp: "textFormat",
    header: "qlabel.h".}
proc setTextFormat*(this: var QLabel; a2: TextFormat) {.importcpp: "setTextFormat",
    header: "qlabel.h".}
proc resourceProvider*(this: QLabel): ResourceProvider {.noSideEffect,
    importcpp: "resourceProvider", header: "qlabel.h".}
proc setResourceProvider*(this: var QLabel; provider: ResourceProvider) {.
    importcpp: "setResourceProvider", header: "qlabel.h".}
proc alignment*(this: QLabel): Alignment {.noSideEffect, importcpp: "alignment",
                                       header: "qlabel.h".}
proc setAlignment*(this: var QLabel; a2: Alignment) {.importcpp: "setAlignment",
    header: "qlabel.h".}
proc setWordWrap*(this: var QLabel; on: bool) {.importcpp: "setWordWrap",
    header: "qlabel.h".}
proc wordWrap*(this: QLabel): bool {.noSideEffect, importcpp: "wordWrap",
                                 header: "qlabel.h".}
proc indent*(this: QLabel): cint {.noSideEffect, importcpp: "indent",
                               header: "qlabel.h".}
proc setIndent*(this: var QLabel; a2: cint) {.importcpp: "setIndent", header: "qlabel.h".}
proc margin*(this: QLabel): cint {.noSideEffect, importcpp: "margin",
                               header: "qlabel.h".}
proc setMargin*(this: var QLabel; a2: cint) {.importcpp: "setMargin", header: "qlabel.h".}
proc hasScaledContents*(this: QLabel): bool {.noSideEffect,
    importcpp: "hasScaledContents", header: "qlabel.h".}
proc setScaledContents*(this: var QLabel; a2: bool) {.importcpp: "setScaledContents",
    header: "qlabel.h".}
proc sizeHint*(this: QLabel): QSize {.noSideEffect, importcpp: "sizeHint",
                                  header: "qlabel.h".}
proc minimumSizeHint*(this: QLabel): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qlabel.h".}
when not defined(QT_NO_SHORTCUT):
  proc setBuddy*(this: var QLabel; a2: ptr QWidget) {.importcpp: "setBuddy",
      header: "qlabel.h".}
when not defined(QT_NO_SHORTCUT):
  proc buddy*(this: QLabel): ptr QWidget {.noSideEffect, importcpp: "buddy",
                                      header: "qlabel.h".}
proc heightForWidth*(this: QLabel; a2: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qlabel.h".}
proc openExternalLinks*(this: QLabel): bool {.noSideEffect,
    importcpp: "openExternalLinks", header: "qlabel.h".}
proc setOpenExternalLinks*(this: var QLabel; open: bool) {.
    importcpp: "setOpenExternalLinks", header: "qlabel.h".}
proc setTextInteractionFlags*(this: var QLabel; flags: TextInteractionFlags) {.
    importcpp: "setTextInteractionFlags", header: "qlabel.h".}
proc textInteractionFlags*(this: QLabel): TextInteractionFlags {.noSideEffect,
    importcpp: "textInteractionFlags", header: "qlabel.h".}
proc setSelection*(this: var QLabel; a2: cint; a3: cint) {.importcpp: "setSelection",
    header: "qlabel.h".}
proc hasSelectedText*(this: QLabel): bool {.noSideEffect,
                                        importcpp: "hasSelectedText",
                                        header: "qlabel.h".}
proc selectedText*(this: QLabel): QString {.noSideEffect, importcpp: "selectedText",
                                        header: "qlabel.h".}
proc selectionStart*(this: QLabel): cint {.noSideEffect, importcpp: "selectionStart",
                                       header: "qlabel.h".}
proc setText*(this: var QLabel; a2: QString) {.importcpp: "setText", header: "qlabel.h".}
proc setPixmap*(this: var QLabel; a2: QPixmap) {.importcpp: "setPixmap",
    header: "qlabel.h".}
when not defined(QT_NO_PICTURE):
  proc setPicture*(this: var QLabel; a2: QPicture) {.importcpp: "setPicture",
      header: "qlabel.h".}
proc setMovie*(this: var QLabel; movie: ptr QMovie) {.importcpp: "setMovie",
    header: "qlabel.h".}
proc setNum*(this: var QLabel; a2: cint) {.importcpp: "setNum", header: "qlabel.h".}
proc setNum*(this: var QLabel; a2: cdouble) {.importcpp: "setNum", header: "qlabel.h".}
proc clear*(this: var QLabel) {.importcpp: "clear", header: "qlabel.h".}