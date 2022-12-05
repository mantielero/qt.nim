import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(whatsthis)
discard "forward decl of QAction"


proc enterWhatsThisMode*() {.importcpp: "QWhatsThis::enterWhatsThisMode(@)",
                           header: "qwhatsthis.h".}
proc inWhatsThisMode*(): bool {.importcpp: "QWhatsThis::inWhatsThisMode(@)",
                             header: "qwhatsthis.h".}
proc leaveWhatsThisMode*() {.importcpp: "QWhatsThis::leaveWhatsThisMode(@)",
                           header: "qwhatsthis.h".}
proc showText*(pos: QPoint; text: QString; w: ptr QWidget = nil) {.
    importcpp: "QWhatsThis::showText(@)", header: "qwhatsthis.h".}
proc hideText*() {.importcpp: "QWhatsThis::hideText(@)", header: "qwhatsthis.h".}
proc createAction*(parent: ptr QObject = nil): ptr QAction {.
    importcpp: "QWhatsThis::createAction(@)", header: "qwhatsthis.h".}
