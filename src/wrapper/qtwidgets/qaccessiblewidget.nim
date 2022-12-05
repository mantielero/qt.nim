import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QAccessibleWidgetPrivate"


proc constructQAccessibleWidget*(o: ptr QWidget; r: Role = client;
                                name: QString = qString()): QAccessibleWidget {.
    constructor, importcpp: "QAccessibleWidget(@)", header: "qaccessiblewidget.h".}
proc isValid*(this: QAccessibleWidget): bool {.noSideEffect, importcpp: "isValid",
    header: "qaccessiblewidget.h".}
proc window*(this: QAccessibleWidget): ptr QWindow {.noSideEffect,
    importcpp: "window", header: "qaccessiblewidget.h".}
proc childCount*(this: QAccessibleWidget): cint {.noSideEffect,
    importcpp: "childCount", header: "qaccessiblewidget.h".}
proc indexOfChild*(this: QAccessibleWidget; child: ptr QAccessibleInterface): cint {.
    noSideEffect, importcpp: "indexOfChild", header: "qaccessiblewidget.h".}
proc relations*(this: QAccessibleWidget; match: Relation = allRelations): QList[
    QPair[ptr QAccessibleInterface, Relation]] {.noSideEffect,
    importcpp: "relations", header: "qaccessiblewidget.h".}
proc focusChild*(this: QAccessibleWidget): ptr QAccessibleInterface {.noSideEffect,
    importcpp: "focusChild", header: "qaccessiblewidget.h".}
proc rect*(this: QAccessibleWidget): QRect {.noSideEffect, importcpp: "rect",
    header: "qaccessiblewidget.h".}
proc parent*(this: QAccessibleWidget): ptr QAccessibleInterface {.noSideEffect,
    importcpp: "parent", header: "qaccessiblewidget.h".}
proc child*(this: QAccessibleWidget; index: cint): ptr QAccessibleInterface {.
    noSideEffect, importcpp: "child", header: "qaccessiblewidget.h".}
proc text*(this: QAccessibleWidget; t: Text): QString {.noSideEffect,
    importcpp: "text", header: "qaccessiblewidget.h".}
proc role*(this: QAccessibleWidget): Role {.noSideEffect, importcpp: "role",
                                        header: "qaccessiblewidget.h".}
proc state*(this: QAccessibleWidget): State {.noSideEffect, importcpp: "state",
    header: "qaccessiblewidget.h".}
proc foregroundColor*(this: QAccessibleWidget): QColor {.noSideEffect,
    importcpp: "foregroundColor", header: "qaccessiblewidget.h".}
proc backgroundColor*(this: QAccessibleWidget): QColor {.noSideEffect,
    importcpp: "backgroundColor", header: "qaccessiblewidget.h".}
proc interfaceCast*(this: var QAccessibleWidget; t: InterfaceType): pointer {.
    importcpp: "interface_cast", header: "qaccessiblewidget.h".}
proc actionNames*(this: QAccessibleWidget): QStringList {.noSideEffect,
    importcpp: "actionNames", header: "qaccessiblewidget.h".}
proc doAction*(this: var QAccessibleWidget; actionName: QString) {.
    importcpp: "doAction", header: "qaccessiblewidget.h".}
proc keyBindingsForAction*(this: QAccessibleWidget; actionName: QString): QStringList {.
    noSideEffect, importcpp: "keyBindingsForAction", header: "qaccessiblewidget.h".}
