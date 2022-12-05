##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(action)
discard "forward decl of QWidgetActionPrivate"
type
  QWidgetAction* {.importcpp: "QWidgetAction", header: "qwidgetaction.h", bycopy.} = object of QAction


proc constructQWidgetAction*(parent: ptr QObject): QWidgetAction {.constructor,
    importcpp: "QWidgetAction(@)", header: "qwidgetaction.h".}
proc destroyQWidgetAction*(this: var QWidgetAction) {.
    importcpp: "#.~QWidgetAction()", header: "qwidgetaction.h".}
proc setDefaultWidget*(this: var QWidgetAction; w: ptr QWidget) {.
    importcpp: "setDefaultWidget", header: "qwidgetaction.h".}
proc defaultWidget*(this: QWidgetAction): ptr QWidget {.noSideEffect,
    importcpp: "defaultWidget", header: "qwidgetaction.h".}
proc requestWidget*(this: var QWidgetAction; parent: ptr QWidget): ptr QWidget {.
    importcpp: "requestWidget", header: "qwidgetaction.h".}
proc releaseWidget*(this: var QWidgetAction; widget: ptr QWidget) {.
    importcpp: "releaseWidget", header: "qwidgetaction.h".}