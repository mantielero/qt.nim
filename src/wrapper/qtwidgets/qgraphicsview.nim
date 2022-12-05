##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QGraphicsItem"
discard "forward decl of QPainterPath"
discard "forward decl of QPolygonF"
discard "forward decl of QStyleOptionGraphicsItem"
discard "forward decl of QGraphicsViewPrivate"
type
  QGraphicsView* {.importcpp: "QGraphicsView", header: "qgraphicsview.h", bycopy.} = object of QAbstractScrollArea

  QGraphicsViewViewportAnchor* {.size: sizeof(cint),
                                importcpp: "QGraphicsView::ViewportAnchor",
                                header: "qgraphicsview.h".} = enum
    NoAnchor, AnchorViewCenter, AnchorUnderMouse


type
  QGraphicsViewCacheModeFlag* {.size: sizeof(cint),
                               importcpp: "QGraphicsView::CacheModeFlag",
                               header: "qgraphicsview.h".} = enum
    CacheNone = 0x0, CacheBackground = 0x1


type
  QGraphicsViewDragMode* {.size: sizeof(cint),
                          importcpp: "QGraphicsView::DragMode",
                          header: "qgraphicsview.h".} = enum
    NoDrag, ScrollHandDrag, RubberBandDrag


type
  QGraphicsViewViewportUpdateMode* {.size: sizeof(cint), importcpp: "QGraphicsView::ViewportUpdateMode",
                                    header: "qgraphicsview.h".} = enum
    FullViewportUpdate, MinimalViewportUpdate, SmartViewportUpdate,
    NoViewportUpdate, BoundingRectViewportUpdate


type
  QGraphicsViewOptimizationFlag* {.size: sizeof(cint),
                                  importcpp: "QGraphicsView::OptimizationFlag",
                                  header: "qgraphicsview.h".} = enum
    DontSavePainterState = 0x1, DontAdjustForAntialiasing = 0x2,
    IndirectPainting = 0x4


proc constructQGraphicsView*(parent: ptr QWidget = nil): QGraphicsView {.constructor,
    importcpp: "QGraphicsView(@)", header: "qgraphicsview.h".}
proc constructQGraphicsView*(scene: ptr QGraphicsScene; parent: ptr QWidget = nil): QGraphicsView {.
    constructor, importcpp: "QGraphicsView(@)", header: "qgraphicsview.h".}
proc destroyQGraphicsView*(this: var QGraphicsView) {.
    importcpp: "#.~QGraphicsView()", header: "qgraphicsview.h".}
proc sizeHint*(this: QGraphicsView): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qgraphicsview.h".}
proc renderHints*(this: QGraphicsView): RenderHints {.noSideEffect,
    importcpp: "renderHints", header: "qgraphicsview.h".}
proc setRenderHint*(this: var QGraphicsView; hint: RenderHint; enabled: bool = true) {.
    importcpp: "setRenderHint", header: "qgraphicsview.h".}
proc setRenderHints*(this: var QGraphicsView; hints: RenderHints) {.
    importcpp: "setRenderHints", header: "qgraphicsview.h".}
proc alignment*(this: QGraphicsView): Alignment {.noSideEffect,
    importcpp: "alignment", header: "qgraphicsview.h".}
proc setAlignment*(this: var QGraphicsView; alignment: Alignment) {.
    importcpp: "setAlignment", header: "qgraphicsview.h".}
proc transformationAnchor*(this: QGraphicsView): QGraphicsViewViewportAnchor {.
    noSideEffect, importcpp: "transformationAnchor", header: "qgraphicsview.h".}
proc setTransformationAnchor*(this: var QGraphicsView;
                             anchor: QGraphicsViewViewportAnchor) {.
    importcpp: "setTransformationAnchor", header: "qgraphicsview.h".}
proc resizeAnchor*(this: QGraphicsView): QGraphicsViewViewportAnchor {.noSideEffect,
    importcpp: "resizeAnchor", header: "qgraphicsview.h".}
proc setResizeAnchor*(this: var QGraphicsView; anchor: QGraphicsViewViewportAnchor) {.
    importcpp: "setResizeAnchor", header: "qgraphicsview.h".}
proc viewportUpdateMode*(this: QGraphicsView): QGraphicsViewViewportUpdateMode {.
    noSideEffect, importcpp: "viewportUpdateMode", header: "qgraphicsview.h".}
proc setViewportUpdateMode*(this: var QGraphicsView;
                           mode: QGraphicsViewViewportUpdateMode) {.
    importcpp: "setViewportUpdateMode", header: "qgraphicsview.h".}
proc optimizationFlags*(this: QGraphicsView): OptimizationFlags {.noSideEffect,
    importcpp: "optimizationFlags", header: "qgraphicsview.h".}
proc setOptimizationFlag*(this: var QGraphicsView;
                         flag: QGraphicsViewOptimizationFlag; enabled: bool = true) {.
    importcpp: "setOptimizationFlag", header: "qgraphicsview.h".}
proc setOptimizationFlags*(this: var QGraphicsView; flags: OptimizationFlags) {.
    importcpp: "setOptimizationFlags", header: "qgraphicsview.h".}
proc dragMode*(this: QGraphicsView): QGraphicsViewDragMode {.noSideEffect,
    importcpp: "dragMode", header: "qgraphicsview.h".}
proc setDragMode*(this: var QGraphicsView; mode: QGraphicsViewDragMode) {.
    importcpp: "setDragMode", header: "qgraphicsview.h".}
proc rubberBandSelectionMode*(this: QGraphicsView): ItemSelectionMode {.
    noSideEffect, importcpp: "rubberBandSelectionMode", header: "qgraphicsview.h".}
proc setRubberBandSelectionMode*(this: var QGraphicsView; mode: ItemSelectionMode) {.
    importcpp: "setRubberBandSelectionMode", header: "qgraphicsview.h".}
proc rubberBandRect*(this: QGraphicsView): QRect {.noSideEffect,
    importcpp: "rubberBandRect", header: "qgraphicsview.h".}
proc cacheMode*(this: QGraphicsView): CacheMode {.noSideEffect,
    importcpp: "cacheMode", header: "qgraphicsview.h".}
proc setCacheMode*(this: var QGraphicsView; mode: CacheMode) {.
    importcpp: "setCacheMode", header: "qgraphicsview.h".}
proc resetCachedContent*(this: var QGraphicsView) {.importcpp: "resetCachedContent",
    header: "qgraphicsview.h".}
proc isInteractive*(this: QGraphicsView): bool {.noSideEffect,
    importcpp: "isInteractive", header: "qgraphicsview.h".}
proc setInteractive*(this: var QGraphicsView; allowed: bool) {.
    importcpp: "setInteractive", header: "qgraphicsview.h".}
proc scene*(this: QGraphicsView): ptr QGraphicsScene {.noSideEffect,
    importcpp: "scene", header: "qgraphicsview.h".}
proc setScene*(this: var QGraphicsView; scene: ptr QGraphicsScene) {.
    importcpp: "setScene", header: "qgraphicsview.h".}
proc sceneRect*(this: QGraphicsView): QRectF {.noSideEffect, importcpp: "sceneRect",
    header: "qgraphicsview.h".}
proc setSceneRect*(this: var QGraphicsView; rect: QRectF) {.importcpp: "setSceneRect",
    header: "qgraphicsview.h".}
proc setSceneRect*(this: var QGraphicsView; x: Qreal; y: Qreal; w: Qreal; h: Qreal) {.
    importcpp: "setSceneRect", header: "qgraphicsview.h".}
proc transform*(this: QGraphicsView): QTransform {.noSideEffect,
    importcpp: "transform", header: "qgraphicsview.h".}
proc viewportTransform*(this: QGraphicsView): QTransform {.noSideEffect,
    importcpp: "viewportTransform", header: "qgraphicsview.h".}
proc isTransformed*(this: QGraphicsView): bool {.noSideEffect,
    importcpp: "isTransformed", header: "qgraphicsview.h".}
proc setTransform*(this: var QGraphicsView; matrix: QTransform; combine: bool = false) {.
    importcpp: "setTransform", header: "qgraphicsview.h".}
proc resetTransform*(this: var QGraphicsView) {.importcpp: "resetTransform",
    header: "qgraphicsview.h".}
proc rotate*(this: var QGraphicsView; angle: Qreal) {.importcpp: "rotate",
    header: "qgraphicsview.h".}
proc scale*(this: var QGraphicsView; sx: Qreal; sy: Qreal) {.importcpp: "scale",
    header: "qgraphicsview.h".}
proc shear*(this: var QGraphicsView; sh: Qreal; sv: Qreal) {.importcpp: "shear",
    header: "qgraphicsview.h".}
proc translate*(this: var QGraphicsView; dx: Qreal; dy: Qreal) {.importcpp: "translate",
    header: "qgraphicsview.h".}
proc centerOn*(this: var QGraphicsView; pos: QPointF) {.importcpp: "centerOn",
    header: "qgraphicsview.h".}
proc centerOn*(this: var QGraphicsView; x: Qreal; y: Qreal) {.importcpp: "centerOn",
    header: "qgraphicsview.h".}
proc centerOn*(this: var QGraphicsView; item: ptr QGraphicsItem) {.
    importcpp: "centerOn", header: "qgraphicsview.h".}
proc ensureVisible*(this: var QGraphicsView; rect: QRectF; xmargin: cint = 50;
                   ymargin: cint = 50) {.importcpp: "ensureVisible",
                                     header: "qgraphicsview.h".}
proc ensureVisible*(this: var QGraphicsView; x: Qreal; y: Qreal; w: Qreal; h: Qreal;
                   xmargin: cint = 50; ymargin: cint = 50) {.importcpp: "ensureVisible",
    header: "qgraphicsview.h".}
proc ensureVisible*(this: var QGraphicsView; item: ptr QGraphicsItem;
                   xmargin: cint = 50; ymargin: cint = 50) {.importcpp: "ensureVisible",
    header: "qgraphicsview.h".}
proc fitInView*(this: var QGraphicsView; rect: QRectF;
               aspectRadioMode: AspectRatioMode = ignoreAspectRatio) {.
    importcpp: "fitInView", header: "qgraphicsview.h".}
proc fitInView*(this: var QGraphicsView; x: Qreal; y: Qreal; w: Qreal; h: Qreal;
               aspectRadioMode: AspectRatioMode = ignoreAspectRatio) {.
    importcpp: "fitInView", header: "qgraphicsview.h".}
proc fitInView*(this: var QGraphicsView; item: ptr QGraphicsItem;
               aspectRadioMode: AspectRatioMode = ignoreAspectRatio) {.
    importcpp: "fitInView", header: "qgraphicsview.h".}
proc render*(this: var QGraphicsView; painter: ptr QPainter; target: QRectF = qRectF();
            source: QRect = qRect();
            aspectRatioMode: AspectRatioMode = keepAspectRatio) {.
    importcpp: "render", header: "qgraphicsview.h".}
proc items*(this: QGraphicsView): QList[ptr QGraphicsItem] {.noSideEffect,
    importcpp: "items", header: "qgraphicsview.h".}
proc items*(this: QGraphicsView; pos: QPoint): QList[ptr QGraphicsItem] {.noSideEffect,
    importcpp: "items", header: "qgraphicsview.h".}
proc items*(this: QGraphicsView; x: cint; y: cint): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsview.h".}
proc items*(this: QGraphicsView; rect: QRect;
           mode: ItemSelectionMode = intersectsItemShape): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsview.h".}
proc items*(this: QGraphicsView; x: cint; y: cint; w: cint; h: cint;
           mode: ItemSelectionMode = intersectsItemShape): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsview.h".}
proc items*(this: QGraphicsView; polygon: QPolygon;
           mode: ItemSelectionMode = intersectsItemShape): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsview.h".}
proc items*(this: QGraphicsView; path: QPainterPath;
           mode: ItemSelectionMode = intersectsItemShape): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsview.h".}
proc itemAt*(this: QGraphicsView; pos: QPoint): ptr QGraphicsItem {.noSideEffect,
    importcpp: "itemAt", header: "qgraphicsview.h".}
proc itemAt*(this: QGraphicsView; x: cint; y: cint): ptr QGraphicsItem {.noSideEffect,
    importcpp: "itemAt", header: "qgraphicsview.h".}
proc mapToScene*(this: QGraphicsView; point: QPoint): QPointF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsview.h".}
proc mapToScene*(this: QGraphicsView; rect: QRect): QPolygonF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsview.h".}
proc mapToScene*(this: QGraphicsView; polygon: QPolygon): QPolygonF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsview.h".}
proc mapToScene*(this: QGraphicsView; path: QPainterPath): QPainterPath {.
    noSideEffect, importcpp: "mapToScene", header: "qgraphicsview.h".}
proc mapFromScene*(this: QGraphicsView; point: QPointF): QPoint {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsview.h".}
proc mapFromScene*(this: QGraphicsView; rect: QRectF): QPolygon {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsview.h".}
proc mapFromScene*(this: QGraphicsView; polygon: QPolygonF): QPolygon {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsview.h".}
proc mapFromScene*(this: QGraphicsView; path: QPainterPath): QPainterPath {.
    noSideEffect, importcpp: "mapFromScene", header: "qgraphicsview.h".}
proc mapToScene*(this: QGraphicsView; x: cint; y: cint): QPointF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsview.h".}
proc mapToScene*(this: QGraphicsView; x: cint; y: cint; w: cint; h: cint): QPolygonF {.
    noSideEffect, importcpp: "mapToScene", header: "qgraphicsview.h".}
proc mapFromScene*(this: QGraphicsView; x: Qreal; y: Qreal): QPoint {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsview.h".}
proc mapFromScene*(this: QGraphicsView; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QPolygon {.
    noSideEffect, importcpp: "mapFromScene", header: "qgraphicsview.h".}
proc inputMethodQuery*(this: QGraphicsView; query: InputMethodQuery): QVariant {.
    noSideEffect, importcpp: "inputMethodQuery", header: "qgraphicsview.h".}
proc backgroundBrush*(this: QGraphicsView): QBrush {.noSideEffect,
    importcpp: "backgroundBrush", header: "qgraphicsview.h".}
proc setBackgroundBrush*(this: var QGraphicsView; brush: QBrush) {.
    importcpp: "setBackgroundBrush", header: "qgraphicsview.h".}
proc foregroundBrush*(this: QGraphicsView): QBrush {.noSideEffect,
    importcpp: "foregroundBrush", header: "qgraphicsview.h".}
proc setForegroundBrush*(this: var QGraphicsView; brush: QBrush) {.
    importcpp: "setForegroundBrush", header: "qgraphicsview.h".}
proc updateScene*(this: var QGraphicsView; rects: QList[QRectF]) {.
    importcpp: "updateScene", header: "qgraphicsview.h".}
proc invalidateScene*(this: var QGraphicsView; rect: QRectF = qRectF();
                     layers: SceneLayers = allLayers) {.
    importcpp: "invalidateScene", header: "qgraphicsview.h".}
proc updateSceneRect*(this: var QGraphicsView; rect: QRectF) {.
    importcpp: "updateSceneRect", header: "qgraphicsview.h".}
proc setSceneRect*(this: var QGraphicsView; ax: Qreal; ay: Qreal; aw: Qreal; ah: Qreal) {.
    importcpp: "setSceneRect", header: "qgraphicsview.h".}
proc centerOn*(this: var QGraphicsView; ax: Qreal; ay: Qreal) {.importcpp: "centerOn",
    header: "qgraphicsview.h".}
proc ensureVisible*(this: var QGraphicsView; ax: Qreal; ay: Qreal; aw: Qreal; ah: Qreal;
                   xmargin: cint; ymargin: cint) {.importcpp: "ensureVisible",
    header: "qgraphicsview.h".}
proc fitInView*(this: var QGraphicsView; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal;
               mode: AspectRatioMode) {.importcpp: "fitInView",
                                      header: "qgraphicsview.h".}
proc items*(this: QGraphicsView; ax: cint; ay: cint): QList[ptr QGraphicsItem] {.
    noSideEffect, importcpp: "items", header: "qgraphicsview.h".}
proc items*(this: QGraphicsView; ax: cint; ay: cint; w: cint; h: cint;
           mode: ItemSelectionMode): QList[ptr QGraphicsItem] {.noSideEffect,
    importcpp: "items", header: "qgraphicsview.h".}
proc itemAt*(this: QGraphicsView; ax: cint; ay: cint): ptr QGraphicsItem {.noSideEffect,
    importcpp: "itemAt", header: "qgraphicsview.h".}
proc mapToScene*(this: QGraphicsView; ax: cint; ay: cint): QPointF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsview.h".}
proc mapToScene*(this: QGraphicsView; ax: cint; ay: cint; w: cint; h: cint): QPolygonF {.
    noSideEffect, importcpp: "mapToScene", header: "qgraphicsview.h".}
proc mapFromScene*(this: QGraphicsView; ax: Qreal; ay: Qreal): QPoint {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsview.h".}
proc mapFromScene*(this: QGraphicsView; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QPolygon {.
    noSideEffect, importcpp: "mapFromScene", header: "qgraphicsview.h".}