##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QFont"
discard "forward decl of QFontMetrics"
discard "forward decl of QGraphicsLayout"
discard "forward decl of QGraphicsSceneMoveEvent"
discard "forward decl of QGraphicsWidgetPrivate"
discard "forward decl of QGraphicsSceneResizeEvent"
discard "forward decl of QStyle"
discard "forward decl of QStyleOption"
discard "forward decl of QGraphicsWidgetPrivate"
type
  QGraphicsWidget* {.importcpp: "QGraphicsWidget", header: "qgraphicswidget.h",
                    bycopy.} = object of QGraphicsObject


proc constructQGraphicsWidget*(parent: ptr QGraphicsItem = nil;
                              wFlags: WindowFlags = windowFlags()): QGraphicsWidget {.
    constructor, importcpp: "QGraphicsWidget(@)", header: "qgraphicswidget.h".}
proc destroyQGraphicsWidget*(this: var QGraphicsWidget) {.
    importcpp: "#.~QGraphicsWidget()", header: "qgraphicswidget.h".}
proc layout*(this: QGraphicsWidget): ptr QGraphicsLayout {.noSideEffect,
    importcpp: "layout", header: "qgraphicswidget.h".}
proc setLayout*(this: var QGraphicsWidget; layout: ptr QGraphicsLayout) {.
    importcpp: "setLayout", header: "qgraphicswidget.h".}
proc adjustSize*(this: var QGraphicsWidget) {.importcpp: "adjustSize",
    header: "qgraphicswidget.h".}
proc layoutDirection*(this: QGraphicsWidget): LayoutDirection {.noSideEffect,
    importcpp: "layoutDirection", header: "qgraphicswidget.h".}
proc setLayoutDirection*(this: var QGraphicsWidget; direction: LayoutDirection) {.
    importcpp: "setLayoutDirection", header: "qgraphicswidget.h".}
proc unsetLayoutDirection*(this: var QGraphicsWidget) {.
    importcpp: "unsetLayoutDirection", header: "qgraphicswidget.h".}
proc style*(this: QGraphicsWidget): ptr QStyle {.noSideEffect, importcpp: "style",
    header: "qgraphicswidget.h".}
proc setStyle*(this: var QGraphicsWidget; style: ptr QStyle) {.importcpp: "setStyle",
    header: "qgraphicswidget.h".}
proc font*(this: QGraphicsWidget): QFont {.noSideEffect, importcpp: "font",
                                       header: "qgraphicswidget.h".}
proc setFont*(this: var QGraphicsWidget; font: QFont) {.importcpp: "setFont",
    header: "qgraphicswidget.h".}
proc palette*(this: QGraphicsWidget): QPalette {.noSideEffect, importcpp: "palette",
    header: "qgraphicswidget.h".}
proc setPalette*(this: var QGraphicsWidget; palette: QPalette) {.
    importcpp: "setPalette", header: "qgraphicswidget.h".}
proc autoFillBackground*(this: QGraphicsWidget): bool {.noSideEffect,
    importcpp: "autoFillBackground", header: "qgraphicswidget.h".}
proc setAutoFillBackground*(this: var QGraphicsWidget; enabled: bool) {.
    importcpp: "setAutoFillBackground", header: "qgraphicswidget.h".}
proc resize*(this: var QGraphicsWidget; size: QSizeF) {.importcpp: "resize",
    header: "qgraphicswidget.h".}
proc resize*(this: var QGraphicsWidget; w: Qreal; h: Qreal) {.importcpp: "resize",
    header: "qgraphicswidget.h".}
proc size*(this: QGraphicsWidget): QSizeF {.noSideEffect, importcpp: "size",
                                        header: "qgraphicswidget.h".}
proc setGeometry*(this: var QGraphicsWidget; rect: QRectF) {.importcpp: "setGeometry",
    header: "qgraphicswidget.h".}
proc setGeometry*(this: var QGraphicsWidget; x: Qreal; y: Qreal; w: Qreal; h: Qreal) {.
    importcpp: "setGeometry", header: "qgraphicswidget.h".}
proc rect*(this: QGraphicsWidget): QRectF {.noSideEffect, importcpp: "rect",
                                        header: "qgraphicswidget.h".}
proc setContentsMargins*(this: var QGraphicsWidget; left: Qreal; top: Qreal;
                        right: Qreal; bottom: Qreal) {.
    importcpp: "setContentsMargins", header: "qgraphicswidget.h".}
proc setContentsMargins*(this: var QGraphicsWidget; margins: QMarginsF) {.
    importcpp: "setContentsMargins", header: "qgraphicswidget.h".}
proc getContentsMargins*(this: QGraphicsWidget; left: ptr Qreal; top: ptr Qreal;
                        right: ptr Qreal; bottom: ptr Qreal) {.noSideEffect,
    importcpp: "getContentsMargins", header: "qgraphicswidget.h".}
proc setWindowFrameMargins*(this: var QGraphicsWidget; left: Qreal; top: Qreal;
                           right: Qreal; bottom: Qreal) {.
    importcpp: "setWindowFrameMargins", header: "qgraphicswidget.h".}
proc setWindowFrameMargins*(this: var QGraphicsWidget; margins: QMarginsF) {.
    importcpp: "setWindowFrameMargins", header: "qgraphicswidget.h".}
proc getWindowFrameMargins*(this: QGraphicsWidget; left: ptr Qreal; top: ptr Qreal;
                           right: ptr Qreal; bottom: ptr Qreal) {.noSideEffect,
    importcpp: "getWindowFrameMargins", header: "qgraphicswidget.h".}
proc unsetWindowFrameMargins*(this: var QGraphicsWidget) {.
    importcpp: "unsetWindowFrameMargins", header: "qgraphicswidget.h".}
proc windowFrameGeometry*(this: QGraphicsWidget): QRectF {.noSideEffect,
    importcpp: "windowFrameGeometry", header: "qgraphicswidget.h".}
proc windowFrameRect*(this: QGraphicsWidget): QRectF {.noSideEffect,
    importcpp: "windowFrameRect", header: "qgraphicswidget.h".}
proc windowFlags*(this: QGraphicsWidget): WindowFlags {.noSideEffect,
    importcpp: "windowFlags", header: "qgraphicswidget.h".}
proc windowType*(this: QGraphicsWidget): WindowType {.noSideEffect,
    importcpp: "windowType", header: "qgraphicswidget.h".}
proc setWindowFlags*(this: var QGraphicsWidget; wFlags: WindowFlags) {.
    importcpp: "setWindowFlags", header: "qgraphicswidget.h".}
proc isActiveWindow*(this: QGraphicsWidget): bool {.noSideEffect,
    importcpp: "isActiveWindow", header: "qgraphicswidget.h".}
proc setWindowTitle*(this: var QGraphicsWidget; title: QString) {.
    importcpp: "setWindowTitle", header: "qgraphicswidget.h".}
proc windowTitle*(this: QGraphicsWidget): QString {.noSideEffect,
    importcpp: "windowTitle", header: "qgraphicswidget.h".}
proc focusPolicy*(this: QGraphicsWidget): FocusPolicy {.noSideEffect,
    importcpp: "focusPolicy", header: "qgraphicswidget.h".}
proc setFocusPolicy*(this: var QGraphicsWidget; policy: FocusPolicy) {.
    importcpp: "setFocusPolicy", header: "qgraphicswidget.h".}
proc setTabOrder*(first: ptr QGraphicsWidget; second: ptr QGraphicsWidget) {.
    importcpp: "QGraphicsWidget::setTabOrder(@)", header: "qgraphicswidget.h".}
proc focusWidget*(this: QGraphicsWidget): ptr QGraphicsWidget {.noSideEffect,
    importcpp: "focusWidget", header: "qgraphicswidget.h".}
when not defined(QT_NO_SHORTCUT):
  proc grabShortcut*(this: var QGraphicsWidget; sequence: QKeySequence;
                    context: ShortcutContext = windowShortcut): cint {.
      importcpp: "grabShortcut", header: "qgraphicswidget.h".}
when not defined(QT_NO_SHORTCUT):
  proc releaseShortcut*(this: var QGraphicsWidget; id: cint) {.
      importcpp: "releaseShortcut", header: "qgraphicswidget.h".}
when not defined(QT_NO_SHORTCUT):
  proc setShortcutEnabled*(this: var QGraphicsWidget; id: cint; enabled: bool = true) {.
      importcpp: "setShortcutEnabled", header: "qgraphicswidget.h".}
when not defined(QT_NO_SHORTCUT):
  proc setShortcutAutoRepeat*(this: var QGraphicsWidget; id: cint;
                             enabled: bool = true) {.
      importcpp: "setShortcutAutoRepeat", header: "qgraphicswidget.h".}
proc addAction*(this: var QGraphicsWidget; action: ptr QAction) {.
    importcpp: "addAction", header: "qgraphicswidget.h".}
proc addActions*(this: var QGraphicsWidget; actions: QList[ptr QAction]) {.
    importcpp: "addActions", header: "qgraphicswidget.h".}
proc insertActions*(this: var QGraphicsWidget; before: ptr QAction;
                   actions: QList[ptr QAction]) {.importcpp: "insertActions",
    header: "qgraphicswidget.h".}
proc insertAction*(this: var QGraphicsWidget; before: ptr QAction; action: ptr QAction) {.
    importcpp: "insertAction", header: "qgraphicswidget.h".}
proc removeAction*(this: var QGraphicsWidget; action: ptr QAction) {.
    importcpp: "removeAction", header: "qgraphicswidget.h".}
proc actions*(this: QGraphicsWidget): QList[ptr QAction] {.noSideEffect,
    importcpp: "actions", header: "qgraphicswidget.h".}
proc setAttribute*(this: var QGraphicsWidget; attribute: WidgetAttribute;
                  on: bool = true) {.importcpp: "setAttribute",
                                 header: "qgraphicswidget.h".}
proc testAttribute*(this: QGraphicsWidget; attribute: WidgetAttribute): bool {.
    noSideEffect, importcpp: "testAttribute", header: "qgraphicswidget.h".}
const
  QGraphicsWidgetType* = 11

proc `type`*(this: QGraphicsWidget): cint {.noSideEffect, importcpp: "type",
                                        header: "qgraphicswidget.h".}
proc paint*(this: var QGraphicsWidget; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget = nil) {.
    importcpp: "paint", header: "qgraphicswidget.h".}
proc paintWindowFrame*(this: var QGraphicsWidget; painter: ptr QPainter;
                      option: ptr QStyleOptionGraphicsItem;
                      widget: ptr QWidget = nil) {.importcpp: "paintWindowFrame",
    header: "qgraphicswidget.h".}
proc boundingRect*(this: QGraphicsWidget): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicswidget.h".}
proc shape*(this: QGraphicsWidget): QPainterPath {.noSideEffect, importcpp: "shape",
    header: "qgraphicswidget.h".}
when 0:
  proc dumpFocusChain*(this: var QGraphicsWidget) {.importcpp: "dumpFocusChain",
      header: "qgraphicswidget.h".}
## using statement

proc close*(this: var QGraphicsWidget): bool {.importcpp: "close",
    header: "qgraphicswidget.h".}
proc setGeometry*(this: var QGraphicsWidget; ax: Qreal; ay: Qreal; aw: Qreal; ah: Qreal) {.
    importcpp: "setGeometry", header: "qgraphicswidget.h".}