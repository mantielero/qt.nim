##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(spinbox)
discard "forward decl of QSpinBoxPrivate"
type
  QSpinBox* {.importcpp: "QSpinBox", header: "qspinbox.h", bycopy.} = object of QAbstractSpinBox


proc constructQSpinBox*(parent: ptr QWidget = nil): QSpinBox {.constructor,
    importcpp: "QSpinBox(@)", header: "qspinbox.h".}
proc destroyQSpinBox*(this: var QSpinBox) {.importcpp: "#.~QSpinBox()",
                                        header: "qspinbox.h".}
proc value*(this: QSpinBox): cint {.noSideEffect, importcpp: "value",
                                header: "qspinbox.h".}
proc prefix*(this: QSpinBox): QString {.noSideEffect, importcpp: "prefix",
                                    header: "qspinbox.h".}
proc setPrefix*(this: var QSpinBox; prefix: QString) {.importcpp: "setPrefix",
    header: "qspinbox.h".}
proc suffix*(this: QSpinBox): QString {.noSideEffect, importcpp: "suffix",
                                    header: "qspinbox.h".}
proc setSuffix*(this: var QSpinBox; suffix: QString) {.importcpp: "setSuffix",
    header: "qspinbox.h".}
proc cleanText*(this: QSpinBox): QString {.noSideEffect, importcpp: "cleanText",
                                       header: "qspinbox.h".}
proc singleStep*(this: QSpinBox): cint {.noSideEffect, importcpp: "singleStep",
                                     header: "qspinbox.h".}
proc setSingleStep*(this: var QSpinBox; val: cint) {.importcpp: "setSingleStep",
    header: "qspinbox.h".}
proc minimum*(this: QSpinBox): cint {.noSideEffect, importcpp: "minimum",
                                  header: "qspinbox.h".}
proc setMinimum*(this: var QSpinBox; min: cint) {.importcpp: "setMinimum",
    header: "qspinbox.h".}
proc maximum*(this: QSpinBox): cint {.noSideEffect, importcpp: "maximum",
                                  header: "qspinbox.h".}
proc setMaximum*(this: var QSpinBox; max: cint) {.importcpp: "setMaximum",
    header: "qspinbox.h".}
proc setRange*(this: var QSpinBox; min: cint; max: cint) {.importcpp: "setRange",
    header: "qspinbox.h".}
proc stepType*(this: QSpinBox): StepType {.noSideEffect, importcpp: "stepType",
                                       header: "qspinbox.h".}
proc setStepType*(this: var QSpinBox; stepType: StepType) {.importcpp: "setStepType",
    header: "qspinbox.h".}
proc displayIntegerBase*(this: QSpinBox): cint {.noSideEffect,
    importcpp: "displayIntegerBase", header: "qspinbox.h".}
proc setDisplayIntegerBase*(this: var QSpinBox; base: cint) {.
    importcpp: "setDisplayIntegerBase", header: "qspinbox.h".}
proc setValue*(this: var QSpinBox; val: cint) {.importcpp: "setValue",
    header: "qspinbox.h".}
discard "forward decl of QDoubleSpinBoxPrivate"
type
  QDoubleSpinBox* {.importcpp: "QDoubleSpinBox", header: "qspinbox.h", bycopy.} = object of QAbstractSpinBox


proc constructQDoubleSpinBox*(parent: ptr QWidget = nil): QDoubleSpinBox {.constructor,
    importcpp: "QDoubleSpinBox(@)", header: "qspinbox.h".}
proc destroyQDoubleSpinBox*(this: var QDoubleSpinBox) {.
    importcpp: "#.~QDoubleSpinBox()", header: "qspinbox.h".}
proc value*(this: QDoubleSpinBox): cdouble {.noSideEffect, importcpp: "value",
    header: "qspinbox.h".}
proc prefix*(this: QDoubleSpinBox): QString {.noSideEffect, importcpp: "prefix",
    header: "qspinbox.h".}
proc setPrefix*(this: var QDoubleSpinBox; prefix: QString) {.importcpp: "setPrefix",
    header: "qspinbox.h".}
proc suffix*(this: QDoubleSpinBox): QString {.noSideEffect, importcpp: "suffix",
    header: "qspinbox.h".}
proc setSuffix*(this: var QDoubleSpinBox; suffix: QString) {.importcpp: "setSuffix",
    header: "qspinbox.h".}
proc cleanText*(this: QDoubleSpinBox): QString {.noSideEffect,
    importcpp: "cleanText", header: "qspinbox.h".}
proc singleStep*(this: QDoubleSpinBox): cdouble {.noSideEffect,
    importcpp: "singleStep", header: "qspinbox.h".}
proc setSingleStep*(this: var QDoubleSpinBox; val: cdouble) {.
    importcpp: "setSingleStep", header: "qspinbox.h".}
proc minimum*(this: QDoubleSpinBox): cdouble {.noSideEffect, importcpp: "minimum",
    header: "qspinbox.h".}
proc setMinimum*(this: var QDoubleSpinBox; min: cdouble) {.importcpp: "setMinimum",
    header: "qspinbox.h".}
proc maximum*(this: QDoubleSpinBox): cdouble {.noSideEffect, importcpp: "maximum",
    header: "qspinbox.h".}
proc setMaximum*(this: var QDoubleSpinBox; max: cdouble) {.importcpp: "setMaximum",
    header: "qspinbox.h".}
proc setRange*(this: var QDoubleSpinBox; min: cdouble; max: cdouble) {.
    importcpp: "setRange", header: "qspinbox.h".}
proc stepType*(this: QDoubleSpinBox): StepType {.noSideEffect, importcpp: "stepType",
    header: "qspinbox.h".}
proc setStepType*(this: var QDoubleSpinBox; stepType: StepType) {.
    importcpp: "setStepType", header: "qspinbox.h".}
proc decimals*(this: QDoubleSpinBox): cint {.noSideEffect, importcpp: "decimals",
    header: "qspinbox.h".}
proc setDecimals*(this: var QDoubleSpinBox; prec: cint) {.importcpp: "setDecimals",
    header: "qspinbox.h".}
proc validate*(this: QDoubleSpinBox; input: var QString; pos: var cint): State {.
    noSideEffect, importcpp: "validate", header: "qspinbox.h".}
proc valueFromText*(this: QDoubleSpinBox; text: QString): cdouble {.noSideEffect,
    importcpp: "valueFromText", header: "qspinbox.h".}
proc textFromValue*(this: QDoubleSpinBox; val: cdouble): QString {.noSideEffect,
    importcpp: "textFromValue", header: "qspinbox.h".}
proc fixup*(this: QDoubleSpinBox; str: var QString) {.noSideEffect, importcpp: "fixup",
    header: "qspinbox.h".}
proc setValue*(this: var QDoubleSpinBox; val: cdouble) {.importcpp: "setValue",
    header: "qspinbox.h".}