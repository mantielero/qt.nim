##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsProxyWidgetPrivate"
type
  QGraphicsProxyWidget* {.importcpp: "QGraphicsProxyWidget",
                         header: "qgraphicsproxywidget.h", bycopy.} = object of QGraphicsWidget


proc constructQGraphicsProxyWidget*(parent: ptr QGraphicsItem = nil;
                                   wFlags: WindowFlags = windowFlags()): QGraphicsProxyWidget {.
    constructor, importcpp: "QGraphicsProxyWidget(@)",
    header: "qgraphicsproxywidget.h".}
proc destroyQGraphicsProxyWidget*(this: var QGraphicsProxyWidget) {.
    importcpp: "#.~QGraphicsProxyWidget()", header: "qgraphicsproxywidget.h".}
proc setWidget*(this: var QGraphicsProxyWidget; widget: ptr QWidget) {.
    importcpp: "setWidget", header: "qgraphicsproxywidget.h".}
proc widget*(this: QGraphicsProxyWidget): ptr QWidget {.noSideEffect,
    importcpp: "widget", header: "qgraphicsproxywidget.h".}
proc subWidgetRect*(this: QGraphicsProxyWidget; widget: ptr QWidget): QRectF {.
    noSideEffect, importcpp: "subWidgetRect", header: "qgraphicsproxywidget.h".}
proc setGeometry*(this: var QGraphicsProxyWidget; rect: QRectF) {.
    importcpp: "setGeometry", header: "qgraphicsproxywidget.h".}
proc paint*(this: var QGraphicsProxyWidget; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget) {.
    importcpp: "paint", header: "qgraphicsproxywidget.h".}
const
  QGraphicsProxyWidgetType* = 12

proc `type`*(this: QGraphicsProxyWidget): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsproxywidget.h".}
proc createProxyForChildWidget*(this: var QGraphicsProxyWidget; child: ptr QWidget): ptr QGraphicsProxyWidget {.
    importcpp: "createProxyForChildWidget", header: "qgraphicsproxywidget.h".}