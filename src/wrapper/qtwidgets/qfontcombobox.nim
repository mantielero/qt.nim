import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(fontcombobox)
discard "forward decl of QFontComboBoxPrivate"


proc constructQFontComboBox*(parent: ptr QWidget = nil): QFontComboBox {.constructor,
    importcpp: "QFontComboBox(@)", header: "qfontcombobox.h".}
proc destroyQFontComboBox*(this: var QFontComboBox) {.
    importcpp: "#.~QFontComboBox()", header: "qfontcombobox.h".}
proc setWritingSystem*(this: var QFontComboBox; a2: WritingSystem) {.
    importcpp: "setWritingSystem", header: "qfontcombobox.h".}
proc writingSystem*(this: QFontComboBox): WritingSystem {.noSideEffect,
    importcpp: "writingSystem", header: "qfontcombobox.h".}


proc setFontFilters*(this: var QFontComboBox; filters: FontFilters) {.
    importcpp: "setFontFilters", header: "qfontcombobox.h".}
proc fontFilters*(this: QFontComboBox): FontFilters {.noSideEffect,
    importcpp: "fontFilters", header: "qfontcombobox.h".}
proc currentFont*(this: QFontComboBox): QFont {.noSideEffect,
    importcpp: "currentFont", header: "qfontcombobox.h".}
proc sizeHint*(this: QFontComboBox): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qfontcombobox.h".}
proc setSampleTextForSystem*(this: var QFontComboBox; writingSystem: WritingSystem;
                            sampleText: QString) {.
    importcpp: "setSampleTextForSystem", header: "qfontcombobox.h".}
proc sampleTextForSystem*(this: QFontComboBox; writingSystem: WritingSystem): QString {.
    noSideEffect, importcpp: "sampleTextForSystem", header: "qfontcombobox.h".}
proc setSampleTextForFont*(this: var QFontComboBox; fontFamily: QString;
                          sampleText: QString) {.
    importcpp: "setSampleTextForFont", header: "qfontcombobox.h".}
proc sampleTextForFont*(this: QFontComboBox; fontFamily: QString): QString {.
    noSideEffect, importcpp: "sampleTextForFont", header: "qfontcombobox.h".}
proc setDisplayFont*(this: var QFontComboBox; fontFamily: QString; font: QFont) {.
    importcpp: "setDisplayFont", header: "qfontcombobox.h".}
proc displayFont*(this: QFontComboBox; fontFamily: QString): Optional[QFont] {.
    noSideEffect, importcpp: "displayFont", header: "qfontcombobox.h".}
proc setCurrentFont*(this: var QFontComboBox; f: QFont) {.importcpp: "setCurrentFont",
    header: "qfontcombobox.h".}
