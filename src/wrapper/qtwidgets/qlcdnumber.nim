##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(lcdnumber)
discard "forward decl of QLCDNumberPrivate"
type
  QLCDNumber* {.importcpp: "QLCDNumber", header: "qlcdnumber.h", bycopy.} = object of QFrame ##  LCD number widget


proc constructQLCDNumber*(parent: ptr QWidget = nil): QLCDNumber {.constructor,
    importcpp: "QLCDNumber(@)", header: "qlcdnumber.h".}
proc constructQLCDNumber*(numDigits: uint; parent: ptr QWidget = nil): QLCDNumber {.
    constructor, importcpp: "QLCDNumber(@)", header: "qlcdnumber.h".}
proc destroyQLCDNumber*(this: var QLCDNumber) {.importcpp: "#.~QLCDNumber()",
    header: "qlcdnumber.h".}
type
  QLCDNumberMode* {.size: sizeof(cint), importcpp: "QLCDNumber::Mode",
                   header: "qlcdnumber.h".} = enum
    Hex, Dec, Oct, Bin


type
  QLCDNumberSegmentStyle* {.size: sizeof(cint),
                           importcpp: "QLCDNumber::SegmentStyle",
                           header: "qlcdnumber.h".} = enum
    Outline, Filled, Flat


proc smallDecimalPoint*(this: QLCDNumber): bool {.noSideEffect,
    importcpp: "smallDecimalPoint", header: "qlcdnumber.h".}
proc digitCount*(this: QLCDNumber): cint {.noSideEffect, importcpp: "digitCount",
                                       header: "qlcdnumber.h".}
proc setDigitCount*(this: var QLCDNumber; nDigits: cint) {.importcpp: "setDigitCount",
    header: "qlcdnumber.h".}
proc checkOverflow*(this: QLCDNumber; num: cdouble): bool {.noSideEffect,
    importcpp: "checkOverflow", header: "qlcdnumber.h".}
proc checkOverflow*(this: QLCDNumber; num: cint): bool {.noSideEffect,
    importcpp: "checkOverflow", header: "qlcdnumber.h".}
proc mode*(this: QLCDNumber): QLCDNumberMode {.noSideEffect, importcpp: "mode",
    header: "qlcdnumber.h".}
proc setMode*(this: var QLCDNumber; a2: QLCDNumberMode) {.importcpp: "setMode",
    header: "qlcdnumber.h".}
proc segmentStyle*(this: QLCDNumber): QLCDNumberSegmentStyle {.noSideEffect,
    importcpp: "segmentStyle", header: "qlcdnumber.h".}
proc setSegmentStyle*(this: var QLCDNumber; a2: QLCDNumberSegmentStyle) {.
    importcpp: "setSegmentStyle", header: "qlcdnumber.h".}
proc value*(this: QLCDNumber): cdouble {.noSideEffect, importcpp: "value",
                                     header: "qlcdnumber.h".}
proc intValue*(this: QLCDNumber): cint {.noSideEffect, importcpp: "intValue",
                                     header: "qlcdnumber.h".}
proc sizeHint*(this: QLCDNumber): QSize {.noSideEffect, importcpp: "sizeHint",
                                      header: "qlcdnumber.h".}
proc display*(this: var QLCDNumber; str: QString) {.importcpp: "display",
    header: "qlcdnumber.h".}
proc display*(this: var QLCDNumber; num: cint) {.importcpp: "display",
    header: "qlcdnumber.h".}
proc display*(this: var QLCDNumber; num: cdouble) {.importcpp: "display",
    header: "qlcdnumber.h".}
proc setHexMode*(this: var QLCDNumber) {.importcpp: "setHexMode",
                                     header: "qlcdnumber.h".}
proc setDecMode*(this: var QLCDNumber) {.importcpp: "setDecMode",
                                     header: "qlcdnumber.h".}
proc setOctMode*(this: var QLCDNumber) {.importcpp: "setOctMode",
                                     header: "qlcdnumber.h".}
proc setBinMode*(this: var QLCDNumber) {.importcpp: "setBinMode",
                                     header: "qlcdnumber.h".}
proc setSmallDecimalPoint*(this: var QLCDNumber; a2: bool) {.
    importcpp: "setSmallDecimalPoint", header: "qlcdnumber.h".}