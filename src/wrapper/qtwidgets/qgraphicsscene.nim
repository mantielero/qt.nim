import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QFocusEvent"
discard "forward decl of QFont"
discard "forward decl of QFontMetrics"
discard "forward decl of QGraphicsEllipseItem"
discard "forward decl of QGraphicsItem"
discard "forward decl of QGraphicsItemGroup"
discard "forward decl of QGraphicsLineItem"
discard "forward decl of QGraphicsPathItem"
discard "forward decl of QGraphicsPixmapItem"
discard "forward decl of QGraphicsPolygonItem"
discard "forward decl of QGraphicsProxyWidget"
discard "forward decl of QGraphicsRectItem"
discard "forward decl of QGraphicsSceneContextMenuEvent"
discard "forward decl of QGraphicsSceneDragDropEvent"
discard "forward decl of QGraphicsSceneEvent"
discard "forward decl of QGraphicsSceneHelpEvent"
discard "forward decl of QGraphicsSceneHoverEvent"
discard "forward decl of QGraphicsSceneMouseEvent"
discard "forward decl of QGraphicsSceneWheelEvent"
discard "forward decl of QGraphicsSimpleTextItem"
discard "forward decl of QGraphicsTextItem"
discard "forward decl of QGraphicsView"
discard "forward decl of QGraphicsWidget"
discard "forward decl of QGraphicsSceneIndex"
discard "forward decl of QHelpEvent"
discard "forward decl of QInputMethodEvent"
discard "forward decl of QKeyEvent"
discard "forward decl of QLineF"
discard "forward decl of QPainterPath"
discard "forward decl of QPixmap"
discard "forward decl of QPointF"
discard "forward decl of QPolygonF"
discard "forward decl of QRectF"
discard "forward decl of QSizeF"
discard "forward decl of QStyle"
discard "forward decl of QStyleOptionGraphicsItem"
discard "forward decl of QGraphicsScenePrivate"





proc constructQGraphicsScene*(parent: ptr QObject = nil): QGraphicsScene {.constructor,
    importcpp: "QGraphicsScene(@)", header: "qgraphicsscene.h".}
proc constructQGraphicsScene*(sceneRect: QRectF; parent: ptr QObject = nil): QGraphicsScene {.
    constructor, importcpp: "QGraphicsScene(@)", header: "qgraphicsscene.h".}
proc constructQGraphicsScene*(x: Qreal; y: Qreal; width: Qreal; height: Qreal;
                             parent: ptr QObject = nil): QGraphicsScene {.constructor,
    importcpp: "QGraphicsScene(@)", header: "qgraphicsscene.h".}
proc destroyQGraphicsScene*(this: var QGraphicsScene) {.
    importcpp: "#.~QGraphicsScene()", header: "qgraphicsscene.h".}
proc sceneRect*(this: QGraphicsScene): QRectF {.noSideEffect, importcpp: "sceneRect",
    header: "qgraphicsscene.h".}
proc width*(this: QGraphicsScene): Qreal {.noSideEffect, importcpp: "width",
                                       header: "qgraphicsscene.h".}
proc height*(this: QGraphicsScene): Qreal {.noSideEffect, importcpp: "height",
                                        header: "qgraphicsscene.h".}
proc setSceneRect*(this: var QGraphicsScene; rect: QRectF) {.
    importcpp: "setSceneRect", header: "qgraphicsscene.h".}
proc setSceneRect*(this: var QGraphicsScene; x: Qreal; y: Qreal; w: Qreal; h: Qreal) {.
    importcpp: "setSceneRect", header: "qgraphicsscene.h".}
proc render*(this: var QGraphicsScene; painter: ptr QPainter;
            target: QRectF = constructQRectF(); source: QRectF = constructQRectF();
            aspectRatioMode: AspectRatioMode = keepAspectRatio) {.
    importcpp: "render", header: "qgraphicsscene.h".}
proc itemIndexMethod*(this: QGraphicsScene): QGraphicsSceneItemIndexMethod {.
    noSideEffect, importcpp: "itemIndexMethod", header: "qgraphicsscene.h".}
proc setItemIndexMethod*(this: var QGraphicsScene;
                        `method`: QGraphicsSceneItemIndexMethod) {.
    importcpp: "setItemIndexMethod", header: "qgraphicsscene.h".}
proc bspTreeDepth*(this: QGraphicsScene): cint {.noSideEffect,
    importcpp: "bspTreeDepth", header: "qgraphicsscene.h".}
proc setBspTreeDepth*(this: var QGraphicsScene; depth: cint) {.
    importcpp: "setBspTreeDepth", header: "qgraphicsscene.h".}
proc itemsBoundingRect*(this: QGraphicsScene): QRectF {.noSideEffect,
    importcpp: "itemsBoundingRect", header: "qgraphicsscene.h".}
proc items*(this: QGraphicsScene; order: SortOrder = descendingOrder): QList[
    ptr QGraphicsItem] {.noSideEffect, importcpp: "items", header: "qgraphicsscene.h".}
proc items*(this: QGraphicsScene; pos: QPointF;
           mode: ItemSelectionMode = intersectsItemShape;
           order: SortOrder = descendingOrder;
           deviceTransform: QTransform = qTransform()): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsscene.h".}
proc items*(this: QGraphicsScene; rect: QRectF;
           mode: ItemSelectionMode = intersectsItemShape;
           order: SortOrder = descendingOrder;
           deviceTransform: QTransform = qTransform()): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsscene.h".}
proc items*(this: QGraphicsScene; polygon: QPolygonF;
           mode: ItemSelectionMode = intersectsItemShape;
           order: SortOrder = descendingOrder;
           deviceTransform: QTransform = qTransform()): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsscene.h".}
proc items*(this: QGraphicsScene; path: QPainterPath;
           mode: ItemSelectionMode = intersectsItemShape;
           order: SortOrder = descendingOrder;
           deviceTransform: QTransform = qTransform()): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsscene.h".}
proc items*(this: QGraphicsScene; x: Qreal; y: Qreal; w: Qreal; h: Qreal;
           mode: ItemSelectionMode; order: SortOrder;
           deviceTransform: QTransform = qTransform()): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsscene.h".}
proc collidingItems*(this: QGraphicsScene; item: ptr QGraphicsItem;
                    mode: ItemSelectionMode = intersectsItemShape): QList[
    ptr QGraphicsItem] {.noSideEffect, importcpp: "collidingItems",
                       header: "qgraphicsscene.h".}
proc itemAt*(this: QGraphicsScene; pos: QPointF; deviceTransform: QTransform): ptr QGraphicsItem {.
    noSideEffect, importcpp: "itemAt", header: "qgraphicsscene.h".}
proc itemAt*(this: QGraphicsScene; x: Qreal; y: Qreal; deviceTransform: QTransform): ptr QGraphicsItem {.
    noSideEffect, importcpp: "itemAt", header: "qgraphicsscene.h".}
proc selectedItems*(this: QGraphicsScene): QList[ptr QGraphicsItem] {.noSideEffect,
    importcpp: "selectedItems", header: "qgraphicsscene.h".}
proc selectionArea*(this: QGraphicsScene): QPainterPath {.noSideEffect,
    importcpp: "selectionArea", header: "qgraphicsscene.h".}
proc setSelectionArea*(this: var QGraphicsScene; path: QPainterPath;
                      deviceTransform: QTransform) {.
    importcpp: "setSelectionArea", header: "qgraphicsscene.h".}
proc setSelectionArea*(this: var QGraphicsScene; path: QPainterPath;
    selectionOperation: ItemSelectionOperation = replaceSelection;
                      mode: ItemSelectionMode = intersectsItemShape;
                      deviceTransform: QTransform = qTransform()) {.
    importcpp: "setSelectionArea", header: "qgraphicsscene.h".}
proc createItemGroup*(this: var QGraphicsScene; items: QList[ptr QGraphicsItem]): ptr QGraphicsItemGroup {.
    importcpp: "createItemGroup", header: "qgraphicsscene.h".}
proc destroyItemGroup*(this: var QGraphicsScene; group: ptr QGraphicsItemGroup) {.
    importcpp: "destroyItemGroup", header: "qgraphicsscene.h".}
proc addItem*(this: var QGraphicsScene; item: ptr QGraphicsItem) {.
    importcpp: "addItem", header: "qgraphicsscene.h".}
proc addEllipse*(this: var QGraphicsScene; rect: QRectF; pen: QPen = qPen();
                brush: QBrush = qBrush()): ptr QGraphicsEllipseItem {.
    importcpp: "addEllipse", header: "qgraphicsscene.h".}
proc addLine*(this: var QGraphicsScene; line: QLineF; pen: QPen = qPen()): ptr QGraphicsLineItem {.
    importcpp: "addLine", header: "qgraphicsscene.h".}
proc addPath*(this: var QGraphicsScene; path: QPainterPath; pen: QPen = qPen();
             brush: QBrush = qBrush()): ptr QGraphicsPathItem {.importcpp: "addPath",
    header: "qgraphicsscene.h".}
proc addPixmap*(this: var QGraphicsScene; pixmap: QPixmap): ptr QGraphicsPixmapItem {.
    importcpp: "addPixmap", header: "qgraphicsscene.h".}
proc addPolygon*(this: var QGraphicsScene; polygon: QPolygonF; pen: QPen = qPen();
                brush: QBrush = qBrush()): ptr QGraphicsPolygonItem {.
    importcpp: "addPolygon", header: "qgraphicsscene.h".}
proc addRect*(this: var QGraphicsScene; rect: QRectF; pen: QPen = qPen();
             brush: QBrush = qBrush()): ptr QGraphicsRectItem {.importcpp: "addRect",
    header: "qgraphicsscene.h".}
proc addText*(this: var QGraphicsScene; text: QString; font: QFont = constructQFont()): ptr QGraphicsTextItem {.
    importcpp: "addText", header: "qgraphicsscene.h".}
proc addSimpleText*(this: var QGraphicsScene; text: QString;
                   font: QFont = constructQFont()): ptr QGraphicsSimpleTextItem {.
    importcpp: "addSimpleText", header: "qgraphicsscene.h".}
proc addWidget*(this: var QGraphicsScene; widget: ptr QWidget;
               wFlags: WindowFlags = windowFlags()): ptr QGraphicsProxyWidget {.
    importcpp: "addWidget", header: "qgraphicsscene.h".}
proc addEllipse*(this: var QGraphicsScene; x: Qreal; y: Qreal; w: Qreal; h: Qreal;
                pen: QPen = qPen(); brush: QBrush = qBrush()): ptr QGraphicsEllipseItem {.
    importcpp: "addEllipse", header: "qgraphicsscene.h".}
proc addLine*(this: var QGraphicsScene; x1: Qreal; y1: Qreal; x2: Qreal; y2: Qreal;
             pen: QPen = qPen()): ptr QGraphicsLineItem {.importcpp: "addLine",
    header: "qgraphicsscene.h".}
proc addRect*(this: var QGraphicsScene; x: Qreal; y: Qreal; w: Qreal; h: Qreal;
             pen: QPen = qPen(); brush: QBrush = qBrush()): ptr QGraphicsRectItem {.
    importcpp: "addRect", header: "qgraphicsscene.h".}
proc removeItem*(this: var QGraphicsScene; item: ptr QGraphicsItem) {.
    importcpp: "removeItem", header: "qgraphicsscene.h".}
proc focusItem*(this: QGraphicsScene): ptr QGraphicsItem {.noSideEffect,
    importcpp: "focusItem", header: "qgraphicsscene.h".}
proc setFocusItem*(this: var QGraphicsScene; item: ptr QGraphicsItem;
                  focusReason: FocusReason = otherFocusReason) {.
    importcpp: "setFocusItem", header: "qgraphicsscene.h".}
proc hasFocus*(this: QGraphicsScene): bool {.noSideEffect, importcpp: "hasFocus",
    header: "qgraphicsscene.h".}
proc setFocus*(this: var QGraphicsScene; focusReason: FocusReason = otherFocusReason) {.
    importcpp: "setFocus", header: "qgraphicsscene.h".}
proc clearFocus*(this: var QGraphicsScene) {.importcpp: "clearFocus",
    header: "qgraphicsscene.h".}
proc setStickyFocus*(this: var QGraphicsScene; enabled: bool) {.
    importcpp: "setStickyFocus", header: "qgraphicsscene.h".}
proc stickyFocus*(this: QGraphicsScene): bool {.noSideEffect,
    importcpp: "stickyFocus", header: "qgraphicsscene.h".}
proc mouseGrabberItem*(this: QGraphicsScene): ptr QGraphicsItem {.noSideEffect,
    importcpp: "mouseGrabberItem", header: "qgraphicsscene.h".}
proc backgroundBrush*(this: QGraphicsScene): QBrush {.noSideEffect,
    importcpp: "backgroundBrush", header: "qgraphicsscene.h".}
proc setBackgroundBrush*(this: var QGraphicsScene; brush: QBrush) {.
    importcpp: "setBackgroundBrush", header: "qgraphicsscene.h".}
proc foregroundBrush*(this: QGraphicsScene): QBrush {.noSideEffect,
    importcpp: "foregroundBrush", header: "qgraphicsscene.h".}
proc setForegroundBrush*(this: var QGraphicsScene; brush: QBrush) {.
    importcpp: "setForegroundBrush", header: "qgraphicsscene.h".}
proc inputMethodQuery*(this: QGraphicsScene; query: InputMethodQuery): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qgraphicsscene.h".}
proc views*(this: QGraphicsScene): QList[ptr QGraphicsView] {.noSideEffect,
    importcpp: "views", header: "qgraphicsscene.h".}
proc update*(this: var QGraphicsScene; x: Qreal; y: Qreal; w: Qreal; h: Qreal) {.
    importcpp: "update", header: "qgraphicsscene.h".}
proc invalidate*(this: var QGraphicsScene; x: Qreal; y: Qreal; w: Qreal; h: Qreal;
                layers: SceneLayers = allLayers) {.importcpp: "invalidate",
    header: "qgraphicsscene.h".}
proc style*(this: QGraphicsScene): ptr QStyle {.noSideEffect, importcpp: "style",
    header: "qgraphicsscene.h".}
proc setStyle*(this: var QGraphicsScene; style: ptr QStyle) {.importcpp: "setStyle",
    header: "qgraphicsscene.h".}
proc font*(this: QGraphicsScene): QFont {.noSideEffect, importcpp: "font",
                                      header: "qgraphicsscene.h".}
proc setFont*(this: var QGraphicsScene; font: QFont) {.importcpp: "setFont",
    header: "qgraphicsscene.h".}
proc palette*(this: QGraphicsScene): QPalette {.noSideEffect, importcpp: "palette",
    header: "qgraphicsscene.h".}
proc setPalette*(this: var QGraphicsScene; palette: QPalette) {.
    importcpp: "setPalette", header: "qgraphicsscene.h".}
proc isActive*(this: QGraphicsScene): bool {.noSideEffect, importcpp: "isActive",
    header: "qgraphicsscene.h".}
proc activePanel*(this: QGraphicsScene): ptr QGraphicsItem {.noSideEffect,
    importcpp: "activePanel", header: "qgraphicsscene.h".}
proc setActivePanel*(this: var QGraphicsScene; item: ptr QGraphicsItem) {.
    importcpp: "setActivePanel", header: "qgraphicsscene.h".}
proc activeWindow*(this: QGraphicsScene): ptr QGraphicsWidget {.noSideEffect,
    importcpp: "activeWindow", header: "qgraphicsscene.h".}
proc setActiveWindow*(this: var QGraphicsScene; widget: ptr QGraphicsWidget) {.
    importcpp: "setActiveWindow", header: "qgraphicsscene.h".}
proc sendEvent*(this: var QGraphicsScene; item: ptr QGraphicsItem; event: ptr QEvent): bool {.
    importcpp: "sendEvent", header: "qgraphicsscene.h".}
proc minimumRenderSize*(this: QGraphicsScene): Qreal {.noSideEffect,
    importcpp: "minimumRenderSize", header: "qgraphicsscene.h".}
proc setMinimumRenderSize*(this: var QGraphicsScene; minSize: Qreal) {.
    importcpp: "setMinimumRenderSize", header: "qgraphicsscene.h".}
proc focusOnTouch*(this: QGraphicsScene): bool {.noSideEffect,
    importcpp: "focusOnTouch", header: "qgraphicsscene.h".}
proc setFocusOnTouch*(this: var QGraphicsScene; enabled: bool) {.
    importcpp: "setFocusOnTouch", header: "qgraphicsscene.h".}
proc update*(this: var QGraphicsScene; rect: QRectF = constructQRectF()) {.
    importcpp: "update", header: "qgraphicsscene.h".}
proc invalidate*(this: var QGraphicsScene; rect: QRectF = constructQRectF();
                layers: SceneLayers = allLayers) {.importcpp: "invalidate",
    header: "qgraphicsscene.h".}
proc advance*(this: var QGraphicsScene) {.importcpp: "advance",
                                      header: "qgraphicsscene.h".}
proc clearSelection*(this: var QGraphicsScene) {.importcpp: "clearSelection",
    header: "qgraphicsscene.h".}
proc clear*(this: var QGraphicsScene) {.importcpp: "clear", header: "qgraphicsscene.h".}
