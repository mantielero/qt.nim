import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(wizard)
discard "forward decl of QAbstractButton"
discard "forward decl of QWizardPage"
discard "forward decl of QWizardPrivate"


const
  NStandardButtons = HelpButton
  NButtons = CustomButton3







proc constructQWizard*(parent: ptr QWidget = nil; flags: WindowFlags = windowFlags()): QWizard {.
    constructor, importcpp: "QWizard(@)", header: "qwizard.h".}
proc destroyQWizard*(this: var QWizard) {.importcpp: "#.~QWizard()",
                                      header: "qwizard.h".}
proc addPage*(this: var QWizard; page: ptr QWizardPage): cint {.importcpp: "addPage",
    header: "qwizard.h".}
proc setPage*(this: var QWizard; id: cint; page: ptr QWizardPage) {.importcpp: "setPage",
    header: "qwizard.h".}
proc removePage*(this: var QWizard; id: cint) {.importcpp: "removePage",
    header: "qwizard.h".}
proc page*(this: QWizard; id: cint): ptr QWizardPage {.noSideEffect, importcpp: "page",
    header: "qwizard.h".}
proc hasVisitedPage*(this: QWizard; id: cint): bool {.noSideEffect,
    importcpp: "hasVisitedPage", header: "qwizard.h".}
proc visitedIds*(this: QWizard): QList[cint] {.noSideEffect, importcpp: "visitedIds",
    header: "qwizard.h".}
proc pageIds*(this: QWizard): QList[cint] {.noSideEffect, importcpp: "pageIds",
                                        header: "qwizard.h".}
proc setStartId*(this: var QWizard; id: cint) {.importcpp: "setStartId",
    header: "qwizard.h".}
proc startId*(this: QWizard): cint {.noSideEffect, importcpp: "startId",
                                 header: "qwizard.h".}
proc currentPage*(this: QWizard): ptr QWizardPage {.noSideEffect,
    importcpp: "currentPage", header: "qwizard.h".}
proc currentId*(this: QWizard): cint {.noSideEffect, importcpp: "currentId",
                                   header: "qwizard.h".}
proc validateCurrentPage*(this: var QWizard): bool {.
    importcpp: "validateCurrentPage", header: "qwizard.h".}
proc nextId*(this: QWizard): cint {.noSideEffect, importcpp: "nextId",
                                header: "qwizard.h".}
proc setField*(this: var QWizard; name: QString; value: QVariant) {.
    importcpp: "setField", header: "qwizard.h".}
proc field*(this: QWizard; name: QString): QVariant {.noSideEffect, importcpp: "field",
    header: "qwizard.h".}
proc setWizardStyle*(this: var QWizard; style: QWizardWizardStyle) {.
    importcpp: "setWizardStyle", header: "qwizard.h".}
proc wizardStyle*(this: QWizard): QWizardWizardStyle {.noSideEffect,
    importcpp: "wizardStyle", header: "qwizard.h".}
proc setOption*(this: var QWizard; option: QWizardWizardOption; on: bool = true) {.
    importcpp: "setOption", header: "qwizard.h".}
proc testOption*(this: QWizard; option: QWizardWizardOption): bool {.noSideEffect,
    importcpp: "testOption", header: "qwizard.h".}
proc setOptions*(this: var QWizard; options: WizardOptions) {.importcpp: "setOptions",
    header: "qwizard.h".}
proc options*(this: QWizard): WizardOptions {.noSideEffect, importcpp: "options",
    header: "qwizard.h".}
proc setButtonText*(this: var QWizard; which: QWizardWizardButton; text: QString) {.
    importcpp: "setButtonText", header: "qwizard.h".}
proc buttonText*(this: QWizard; which: QWizardWizardButton): QString {.noSideEffect,
    importcpp: "buttonText", header: "qwizard.h".}
proc setButtonLayout*(this: var QWizard; layout: QList[QWizardWizardButton]) {.
    importcpp: "setButtonLayout", header: "qwizard.h".}
proc setButton*(this: var QWizard; which: QWizardWizardButton;
               button: ptr QAbstractButton) {.importcpp: "setButton",
    header: "qwizard.h".}
proc button*(this: QWizard; which: QWizardWizardButton): ptr QAbstractButton {.
    noSideEffect, importcpp: "button", header: "qwizard.h".}
proc setTitleFormat*(this: var QWizard; format: TextFormat) {.
    importcpp: "setTitleFormat", header: "qwizard.h".}
proc titleFormat*(this: QWizard): TextFormat {.noSideEffect,
    importcpp: "titleFormat", header: "qwizard.h".}
proc setSubTitleFormat*(this: var QWizard; format: TextFormat) {.
    importcpp: "setSubTitleFormat", header: "qwizard.h".}
proc subTitleFormat*(this: QWizard): TextFormat {.noSideEffect,
    importcpp: "subTitleFormat", header: "qwizard.h".}
proc setPixmap*(this: var QWizard; which: QWizardWizardPixmap; pixmap: QPixmap) {.
    importcpp: "setPixmap", header: "qwizard.h".}
proc pixmap*(this: QWizard; which: QWizardWizardPixmap): QPixmap {.noSideEffect,
    importcpp: "pixmap", header: "qwizard.h".}
proc setSideWidget*(this: var QWizard; widget: ptr QWidget) {.
    importcpp: "setSideWidget", header: "qwizard.h".}
proc sideWidget*(this: QWizard): ptr QWidget {.noSideEffect, importcpp: "sideWidget",
    header: "qwizard.h".}
proc setDefaultProperty*(this: var QWizard; className: cstring; property: cstring;
                        changedSignal: cstring) {.importcpp: "setDefaultProperty",
    header: "qwizard.h".}
proc setVisible*(this: var QWizard; visible: bool) {.importcpp: "setVisible",
    header: "qwizard.h".}
proc sizeHint*(this: QWizard): QSize {.noSideEffect, importcpp: "sizeHint",
                                   header: "qwizard.h".}
proc back*(this: var QWizard) {.importcpp: "back", header: "qwizard.h".}
proc next*(this: var QWizard) {.importcpp: "next", header: "qwizard.h".}
proc setCurrentId*(this: var QWizard; id: cint) {.importcpp: "setCurrentId",
    header: "qwizard.h".}
proc restart*(this: var QWizard) {.importcpp: "restart", header: "qwizard.h".}
discard "forward decl of QWizardPagePrivate"


proc constructQWizardPage*(parent: ptr QWidget = nil): QWizardPage {.constructor,
    importcpp: "QWizardPage(@)", header: "qwizard.h".}
proc destroyQWizardPage*(this: var QWizardPage) {.importcpp: "#.~QWizardPage()",
    header: "qwizard.h".}
proc setTitle*(this: var QWizardPage; title: QString) {.importcpp: "setTitle",
    header: "qwizard.h".}
proc title*(this: QWizardPage): QString {.noSideEffect, importcpp: "title",
                                      header: "qwizard.h".}
proc setSubTitle*(this: var QWizardPage; subTitle: QString) {.
    importcpp: "setSubTitle", header: "qwizard.h".}
proc subTitle*(this: QWizardPage): QString {.noSideEffect, importcpp: "subTitle",
    header: "qwizard.h".}
proc setPixmap*(this: var QWizardPage; which: QWizardWizardPixmap; pixmap: QPixmap) {.
    importcpp: "setPixmap", header: "qwizard.h".}
proc pixmap*(this: QWizardPage; which: QWizardWizardPixmap): QPixmap {.noSideEffect,
    importcpp: "pixmap", header: "qwizard.h".}
proc setFinalPage*(this: var QWizardPage; finalPage: bool) {.
    importcpp: "setFinalPage", header: "qwizard.h".}
proc isFinalPage*(this: QWizardPage): bool {.noSideEffect, importcpp: "isFinalPage",
    header: "qwizard.h".}
proc setCommitPage*(this: var QWizardPage; commitPage: bool) {.
    importcpp: "setCommitPage", header: "qwizard.h".}
proc isCommitPage*(this: QWizardPage): bool {.noSideEffect,
    importcpp: "isCommitPage", header: "qwizard.h".}
proc setButtonText*(this: var QWizardPage; which: QWizardWizardButton; text: QString) {.
    importcpp: "setButtonText", header: "qwizard.h".}
proc buttonText*(this: QWizardPage; which: QWizardWizardButton): QString {.
    noSideEffect, importcpp: "buttonText", header: "qwizard.h".}
proc initializePage*(this: var QWizardPage) {.importcpp: "initializePage",
    header: "qwizard.h".}
proc cleanupPage*(this: var QWizardPage) {.importcpp: "cleanupPage",
                                       header: "qwizard.h".}
proc validatePage*(this: var QWizardPage): bool {.importcpp: "validatePage",
    header: "qwizard.h".}
proc isComplete*(this: QWizardPage): bool {.noSideEffect, importcpp: "isComplete",
                                        header: "qwizard.h".}
proc nextId*(this: QWizardPage): cint {.noSideEffect, importcpp: "nextId",
                                    header: "qwizard.h".}
