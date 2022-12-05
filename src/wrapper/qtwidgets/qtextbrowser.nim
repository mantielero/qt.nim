import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(textbrowser)
discard "forward decl of QTextBrowserPrivate"


proc constructQTextBrowser*(parent: ptr QWidget = nil): QTextBrowser {.constructor,
    importcpp: "QTextBrowser(@)", header: "qtextbrowser.h".}
proc destroyQTextBrowser*(this: var QTextBrowser) {.importcpp: "#.~QTextBrowser()",
    header: "qtextbrowser.h".}
proc source*(this: QTextBrowser): QUrl {.noSideEffect, importcpp: "source",
                                     header: "qtextbrowser.h".}
proc sourceType*(this: QTextBrowser): ResourceType {.noSideEffect,
    importcpp: "sourceType", header: "qtextbrowser.h".}
proc searchPaths*(this: QTextBrowser): QStringList {.noSideEffect,
    importcpp: "searchPaths", header: "qtextbrowser.h".}
proc setSearchPaths*(this: var QTextBrowser; paths: QStringList) {.
    importcpp: "setSearchPaths", header: "qtextbrowser.h".}
proc loadResource*(this: var QTextBrowser; `type`: cint; name: QUrl): QVariant {.
    importcpp: "loadResource", header: "qtextbrowser.h".}
proc isBackwardAvailable*(this: QTextBrowser): bool {.noSideEffect,
    importcpp: "isBackwardAvailable", header: "qtextbrowser.h".}
proc isForwardAvailable*(this: QTextBrowser): bool {.noSideEffect,
    importcpp: "isForwardAvailable", header: "qtextbrowser.h".}
proc clearHistory*(this: var QTextBrowser) {.importcpp: "clearHistory",
    header: "qtextbrowser.h".}
proc historyTitle*(this: QTextBrowser; a2: cint): QString {.noSideEffect,
    importcpp: "historyTitle", header: "qtextbrowser.h".}
proc historyUrl*(this: QTextBrowser; a2: cint): QUrl {.noSideEffect,
    importcpp: "historyUrl", header: "qtextbrowser.h".}
proc backwardHistoryCount*(this: QTextBrowser): cint {.noSideEffect,
    importcpp: "backwardHistoryCount", header: "qtextbrowser.h".}
proc forwardHistoryCount*(this: QTextBrowser): cint {.noSideEffect,
    importcpp: "forwardHistoryCount", header: "qtextbrowser.h".}
proc openExternalLinks*(this: QTextBrowser): bool {.noSideEffect,
    importcpp: "openExternalLinks", header: "qtextbrowser.h".}
proc setOpenExternalLinks*(this: var QTextBrowser; open: bool) {.
    importcpp: "setOpenExternalLinks", header: "qtextbrowser.h".}
proc openLinks*(this: QTextBrowser): bool {.noSideEffect, importcpp: "openLinks",
                                        header: "qtextbrowser.h".}
proc setOpenLinks*(this: var QTextBrowser; open: bool) {.importcpp: "setOpenLinks",
    header: "qtextbrowser.h".}
proc setSource*(this: var QTextBrowser; name: QUrl;
               `type`: ResourceType = unknownResource) {.importcpp: "setSource",
    header: "qtextbrowser.h".}
proc backward*(this: var QTextBrowser) {.importcpp: "backward",
                                     header: "qtextbrowser.h".}
proc forward*(this: var QTextBrowser) {.importcpp: "forward", header: "qtextbrowser.h".}
proc home*(this: var QTextBrowser) {.importcpp: "home", header: "qtextbrowser.h".}
proc reload*(this: var QTextBrowser) {.importcpp: "reload", header: "qtextbrowser.h".}
