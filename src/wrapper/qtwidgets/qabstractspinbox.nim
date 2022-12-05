##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(spinbox)
discard "forward decl of QLineEdit"
discard "forward decl of QAbstractSpinBoxPrivate"
discard "forward decl of QStyleOptionSpinBox"
type
  QAbstractSpinBox* {.importcpp: "QAbstractSpinBox", header: "qabstractspinbox.h",
                     bycopy.} = object of QWidget


proc constructQAbstractSpinBox*(parent: ptr QWidget = nil): QAbstractSpinBox {.
    constructor, importcpp: "QAbstractSpinBox(@)", header: "qabstractspinbox.h".}
proc destroyQAbstractSpinBox*(this: var QAbstractSpinBox) {.
    importcpp: "#.~QAbstractSpinBox()", header: "qabstractspinbox.h".}
type
  QAbstractSpinBoxStepEnabledFlag* {.size: sizeof(cint), importcpp: "QAbstractSpinBox::StepEnabledFlag",
                                    header: "qabstractspinbox.h".} = enum
    StepNone = 0x00, StepUpEnabled = 0x01, StepDownEnabled = 0x02


type
  QAbstractSpinBoxButtonSymbols* {.size: sizeof(cint),
                                  importcpp: "QAbstractSpinBox::ButtonSymbols",
                                  header: "qabstractspinbox.h".} = enum
    UpDownArrows, PlusMinus, NoButtons


proc buttonSymbols*(this: QAbstractSpinBox): QAbstractSpinBoxButtonSymbols {.
    noSideEffect, importcpp: "buttonSymbols", header: "qabstractspinbox.h".}
proc setButtonSymbols*(this: var QAbstractSpinBox; bs: QAbstractSpinBoxButtonSymbols) {.
    importcpp: "setButtonSymbols", header: "qabstractspinbox.h".}
type
  QAbstractSpinBoxCorrectionMode* {.size: sizeof(cint), importcpp: "QAbstractSpinBox::CorrectionMode",
                                   header: "qabstractspinbox.h".} = enum
    CorrectToPreviousValue, CorrectToNearestValue


proc setCorrectionMode*(this: var QAbstractSpinBox;
                       cm: QAbstractSpinBoxCorrectionMode) {.
    importcpp: "setCorrectionMode", header: "qabstractspinbox.h".}
proc correctionMode*(this: QAbstractSpinBox): QAbstractSpinBoxCorrectionMode {.
    noSideEffect, importcpp: "correctionMode", header: "qabstractspinbox.h".}
proc hasAcceptableInput*(this: QAbstractSpinBox): bool {.noSideEffect,
    importcpp: "hasAcceptableInput", header: "qabstractspinbox.h".}
proc text*(this: QAbstractSpinBox): QString {.noSideEffect, importcpp: "text",
    header: "qabstractspinbox.h".}
proc specialValueText*(this: QAbstractSpinBox): QString {.noSideEffect,
    importcpp: "specialValueText", header: "qabstractspinbox.h".}
proc setSpecialValueText*(this: var QAbstractSpinBox; txt: QString) {.
    importcpp: "setSpecialValueText", header: "qabstractspinbox.h".}
proc wrapping*(this: QAbstractSpinBox): bool {.noSideEffect, importcpp: "wrapping",
    header: "qabstractspinbox.h".}
proc setWrapping*(this: var QAbstractSpinBox; w: bool) {.importcpp: "setWrapping",
    header: "qabstractspinbox.h".}
proc setReadOnly*(this: var QAbstractSpinBox; r: bool) {.importcpp: "setReadOnly",
    header: "qabstractspinbox.h".}
proc isReadOnly*(this: QAbstractSpinBox): bool {.noSideEffect,
    importcpp: "isReadOnly", header: "qabstractspinbox.h".}
proc setKeyboardTracking*(this: var QAbstractSpinBox; kt: bool) {.
    importcpp: "setKeyboardTracking", header: "qabstractspinbox.h".}
proc keyboardTracking*(this: QAbstractSpinBox): bool {.noSideEffect,
    importcpp: "keyboardTracking", header: "qabstractspinbox.h".}
proc setAlignment*(this: var QAbstractSpinBox; flag: Alignment) {.
    importcpp: "setAlignment", header: "qabstractspinbox.h".}
proc alignment*(this: QAbstractSpinBox): Alignment {.noSideEffect,
    importcpp: "alignment", header: "qabstractspinbox.h".}
proc setFrame*(this: var QAbstractSpinBox; a2: bool) {.importcpp: "setFrame",
    header: "qabstractspinbox.h".}
proc hasFrame*(this: QAbstractSpinBox): bool {.noSideEffect, importcpp: "hasFrame",
    header: "qabstractspinbox.h".}
proc setAccelerated*(this: var QAbstractSpinBox; on: bool) {.
    importcpp: "setAccelerated", header: "qabstractspinbox.h".}
proc isAccelerated*(this: QAbstractSpinBox): bool {.noSideEffect,
    importcpp: "isAccelerated", header: "qabstractspinbox.h".}
proc setGroupSeparatorShown*(this: var QAbstractSpinBox; shown: bool) {.
    importcpp: "setGroupSeparatorShown", header: "qabstractspinbox.h".}
proc isGroupSeparatorShown*(this: QAbstractSpinBox): bool {.noSideEffect,
    importcpp: "isGroupSeparatorShown", header: "qabstractspinbox.h".}
proc sizeHint*(this: QAbstractSpinBox): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qabstractspinbox.h".}
proc minimumSizeHint*(this: QAbstractSpinBox): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qabstractspinbox.h".}
proc interpretText*(this: var QAbstractSpinBox) {.importcpp: "interpretText",
    header: "qabstractspinbox.h".}
proc event*(this: var QAbstractSpinBox; event: ptr QEvent): bool {.importcpp: "event",
    header: "qabstractspinbox.h".}
proc inputMethodQuery*(this: QAbstractSpinBox; a2: InputMethodQuery): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qabstractspinbox.h".}
proc validate*(this: QAbstractSpinBox; input: var QString; pos: var cint): State {.
    noSideEffect, importcpp: "validate", header: "qabstractspinbox.h".}
proc fixup*(this: QAbstractSpinBox; input: var QString) {.noSideEffect,
    importcpp: "fixup", header: "qabstractspinbox.h".}
proc stepBy*(this: var QAbstractSpinBox; steps: cint) {.importcpp: "stepBy",
    header: "qabstractspinbox.h".}
type
  QAbstractSpinBoxStepType* {.size: sizeof(cint),
                             importcpp: "QAbstractSpinBox::StepType",
                             header: "qabstractspinbox.h".} = enum
    DefaultStepType, AdaptiveDecimalStepType


proc stepUp*(this: var QAbstractSpinBox) {.importcpp: "stepUp",
                                       header: "qabstractspinbox.h".}
proc stepDown*(this: var QAbstractSpinBox) {.importcpp: "stepDown",
    header: "qabstractspinbox.h".}
proc selectAll*(this: var QAbstractSpinBox) {.importcpp: "selectAll",
    header: "qabstractspinbox.h".}
proc clear*(this: var QAbstractSpinBox) {.importcpp: "clear",
                                      header: "qabstractspinbox.h".}