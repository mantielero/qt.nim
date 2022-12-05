import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(inputdialog)
discard "forward decl of QInputDialogPrivate"





proc constructQInputDialog*(parent: ptr QWidget = nil;
                           flags: WindowFlags = windowFlags()): QInputDialog {.
    constructor, importcpp: "QInputDialog(@)", header: "qinputdialog.h".}
proc destroyQInputDialog*(this: var QInputDialog) {.importcpp: "#.~QInputDialog()",
    header: "qinputdialog.h".}
proc setInputMode*(this: var QInputDialog; mode: QInputDialogInputMode) {.
    importcpp: "setInputMode", header: "qinputdialog.h".}
proc inputMode*(this: QInputDialog): QInputDialogInputMode {.noSideEffect,
    importcpp: "inputMode", header: "qinputdialog.h".}
proc setLabelText*(this: var QInputDialog; text: QString) {.importcpp: "setLabelText",
    header: "qinputdialog.h".}
proc labelText*(this: QInputDialog): QString {.noSideEffect, importcpp: "labelText",
    header: "qinputdialog.h".}
proc setOption*(this: var QInputDialog; option: QInputDialogInputDialogOption;
               on: bool = true) {.importcpp: "setOption", header: "qinputdialog.h".}
proc testOption*(this: QInputDialog; option: QInputDialogInputDialogOption): bool {.
    noSideEffect, importcpp: "testOption", header: "qinputdialog.h".}
proc setOptions*(this: var QInputDialog; options: InputDialogOptions) {.
    importcpp: "setOptions", header: "qinputdialog.h".}
proc options*(this: QInputDialog): InputDialogOptions {.noSideEffect,
    importcpp: "options", header: "qinputdialog.h".}
proc setTextValue*(this: var QInputDialog; text: QString) {.importcpp: "setTextValue",
    header: "qinputdialog.h".}
proc textValue*(this: QInputDialog): QString {.noSideEffect, importcpp: "textValue",
    header: "qinputdialog.h".}
proc setTextEchoMode*(this: var QInputDialog; mode: EchoMode) {.
    importcpp: "setTextEchoMode", header: "qinputdialog.h".}
proc textEchoMode*(this: QInputDialog): EchoMode {.noSideEffect,
    importcpp: "textEchoMode", header: "qinputdialog.h".}
proc setComboBoxEditable*(this: var QInputDialog; editable: bool) {.
    importcpp: "setComboBoxEditable", header: "qinputdialog.h".}
proc isComboBoxEditable*(this: QInputDialog): bool {.noSideEffect,
    importcpp: "isComboBoxEditable", header: "qinputdialog.h".}
proc setComboBoxItems*(this: var QInputDialog; items: QStringList) {.
    importcpp: "setComboBoxItems", header: "qinputdialog.h".}
proc comboBoxItems*(this: QInputDialog): QStringList {.noSideEffect,
    importcpp: "comboBoxItems", header: "qinputdialog.h".}
proc setIntValue*(this: var QInputDialog; value: cint) {.importcpp: "setIntValue",
    header: "qinputdialog.h".}
proc intValue*(this: QInputDialog): cint {.noSideEffect, importcpp: "intValue",
                                       header: "qinputdialog.h".}
proc setIntMinimum*(this: var QInputDialog; min: cint) {.importcpp: "setIntMinimum",
    header: "qinputdialog.h".}
proc intMinimum*(this: QInputDialog): cint {.noSideEffect, importcpp: "intMinimum",
    header: "qinputdialog.h".}
proc setIntMaximum*(this: var QInputDialog; max: cint) {.importcpp: "setIntMaximum",
    header: "qinputdialog.h".}
proc intMaximum*(this: QInputDialog): cint {.noSideEffect, importcpp: "intMaximum",
    header: "qinputdialog.h".}
proc setIntRange*(this: var QInputDialog; min: cint; max: cint) {.
    importcpp: "setIntRange", header: "qinputdialog.h".}
proc setIntStep*(this: var QInputDialog; step: cint) {.importcpp: "setIntStep",
    header: "qinputdialog.h".}
proc intStep*(this: QInputDialog): cint {.noSideEffect, importcpp: "intStep",
                                      header: "qinputdialog.h".}
proc setDoubleValue*(this: var QInputDialog; value: cdouble) {.
    importcpp: "setDoubleValue", header: "qinputdialog.h".}
proc doubleValue*(this: QInputDialog): cdouble {.noSideEffect,
    importcpp: "doubleValue", header: "qinputdialog.h".}
proc setDoubleMinimum*(this: var QInputDialog; min: cdouble) {.
    importcpp: "setDoubleMinimum", header: "qinputdialog.h".}
proc doubleMinimum*(this: QInputDialog): cdouble {.noSideEffect,
    importcpp: "doubleMinimum", header: "qinputdialog.h".}
proc setDoubleMaximum*(this: var QInputDialog; max: cdouble) {.
    importcpp: "setDoubleMaximum", header: "qinputdialog.h".}
proc doubleMaximum*(this: QInputDialog): cdouble {.noSideEffect,
    importcpp: "doubleMaximum", header: "qinputdialog.h".}
proc setDoubleRange*(this: var QInputDialog; min: cdouble; max: cdouble) {.
    importcpp: "setDoubleRange", header: "qinputdialog.h".}
proc setDoubleDecimals*(this: var QInputDialog; decimals: cint) {.
    importcpp: "setDoubleDecimals", header: "qinputdialog.h".}
proc doubleDecimals*(this: QInputDialog): cint {.noSideEffect,
    importcpp: "doubleDecimals", header: "qinputdialog.h".}
proc setOkButtonText*(this: var QInputDialog; text: QString) {.
    importcpp: "setOkButtonText", header: "qinputdialog.h".}
proc okButtonText*(this: QInputDialog): QString {.noSideEffect,
    importcpp: "okButtonText", header: "qinputdialog.h".}
proc setCancelButtonText*(this: var QInputDialog; text: QString) {.
    importcpp: "setCancelButtonText", header: "qinputdialog.h".}
proc cancelButtonText*(this: QInputDialog): QString {.noSideEffect,
    importcpp: "cancelButtonText", header: "qinputdialog.h".}
## using statement

proc open*(this: var QInputDialog; receiver: ptr QObject; member: cstring) {.
    importcpp: "open", header: "qinputdialog.h".}
proc minimumSizeHint*(this: QInputDialog): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qinputdialog.h".}
proc sizeHint*(this: QInputDialog): QSize {.noSideEffect, importcpp: "sizeHint",
                                        header: "qinputdialog.h".}
proc setVisible*(this: var QInputDialog; visible: bool) {.importcpp: "setVisible",
    header: "qinputdialog.h".}
proc getText*(parent: ptr QWidget; title: QString; label: QString;
             echo: EchoMode = normal; text: QString = qString(); ok: ptr bool = nil;
             flags: WindowFlags = windowFlags();
             inputMethodHints: InputMethodHints = imhNone): QString {.
    importcpp: "QInputDialog::getText(@)", header: "qinputdialog.h".}
proc getMultiLineText*(parent: ptr QWidget; title: QString; label: QString;
                      text: QString = qString(); ok: ptr bool = nil;
                      flags: WindowFlags = windowFlags();
                      inputMethodHints: InputMethodHints = imhNone): QString {.
    importcpp: "QInputDialog::getMultiLineText(@)", header: "qinputdialog.h".}
proc getItem*(parent: ptr QWidget; title: QString; label: QString; items: QStringList;
             current: cint = 0; editable: bool = true; ok: ptr bool = nil;
             flags: WindowFlags = windowFlags();
             inputMethodHints: InputMethodHints = imhNone): QString {.
    importcpp: "QInputDialog::getItem(@)", header: "qinputdialog.h".}
proc getInt*(parent: ptr QWidget; title: QString; label: QString; value: cint = 0;
            minValue: cint = -2147483647; maxValue: cint = 2147483647; step: cint = 1;
            ok: ptr bool = nil; flags: WindowFlags = windowFlags()): cint {.
    importcpp: "QInputDialog::getInt(@)", header: "qinputdialog.h".}
proc getDouble*(parent: ptr QWidget; title: QString; label: QString; value: cdouble = 0;
               minValue: cdouble = -2147483647; maxValue: cdouble = 2147483647;
               decimals: cint = 1; ok: ptr bool = nil;
               flags: WindowFlags = windowFlags(); step: cdouble = 1): cdouble {.
    importcpp: "QInputDialog::getDouble(@)", header: "qinputdialog.h".}
proc setDoubleStep*(this: var QInputDialog; step: cdouble) {.
    importcpp: "setDoubleStep", header: "qinputdialog.h".}
proc doubleStep*(this: QInputDialog): cdouble {.noSideEffect,
    importcpp: "doubleStep", header: "qinputdialog.h".}
proc done*(this: var QInputDialog; result: cint) {.importcpp: "done",
    header: "qinputdialog.h".}
