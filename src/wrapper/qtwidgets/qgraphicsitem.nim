##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of tst_QGraphicsItem"
qt_Require_Config(graphicsview)
discard "forward decl of QBrush"
discard "forward decl of QCursor"
discard "forward decl of QFocusEvent"
discard "forward decl of QGraphicsEffect"
discard "forward decl of QGraphicsItemGroup"
discard "forward decl of QGraphicsObject"
discard "forward decl of QGraphicsSceneContextMenuEvent"
discard "forward decl of QGraphicsSceneDragDropEvent"
discard "forward decl of QGraphicsSceneEvent"
discard "forward decl of QGraphicsSceneHoverEvent"
discard "forward decl of QGraphicsSceneMouseEvent"
discard "forward decl of QGraphicsSceneWheelEvent"
discard "forward decl of QGraphicsScene"
discard "forward decl of QGraphicsTransform"
discard "forward decl of QGraphicsWidget"
discard "forward decl of QInputMethodEvent"
discard "forward decl of QKeyEvent"
discard "forward decl of QMenu"
discard "forward decl of QPainter"
discard "forward decl of QPen"
discard "forward decl of QPointF"
discard "forward decl of QRectF"
discard "forward decl of QStyleOptionGraphicsItem"
discard "forward decl of QGraphicsItemPrivate"
type
  QGraphicsItem* {.importcpp: "QGraphicsItem", header: "qgraphicsitem.h", bycopy.} = object

  QGraphicsItemGraphicsItemFlag* {.size: sizeof(cint),
                                  importcpp: "QGraphicsItem::GraphicsItemFlag",
                                  header: "qgraphicsitem.h".} = enum
    ItemIsMovable = 0x1, ItemIsSelectable = 0x2, ItemIsFocusable = 0x4,
    ItemClipsToShape = 0x8, ItemClipsChildrenToShape = 0x10,
    ItemIgnoresTransformations = 0x20, ItemIgnoresParentOpacity = 0x40,
    ItemDoesntPropagateOpacityToChildren = 0x80, ItemStacksBehindParent = 0x100,
    ItemUsesExtendedStyleOption = 0x200, ItemHasNoContents = 0x400,
    ItemSendsGeometryChanges = 0x800, ItemAcceptsInputMethod = 0x1000,
    ItemNegativeZStacksBehindParent = 0x2000, ItemIsPanel = 0x4000, ItemIsFocusScope = 0x8000, ##  internal
    ItemSendsScenePositionChanges = 0x10000,
    ItemStopsClickFocusPropagation = 0x20000, ItemStopsFocusHandling = 0x40000,
    ItemContainsChildrenInShape = 0x80000


type
  QGraphicsItemGraphicsItemChange* {.size: sizeof(cint), importcpp: "QGraphicsItem::GraphicsItemChange",
                                    header: "qgraphicsitem.h".} = enum
    ItemPositionChange, ItemVisibleChange = 2, ItemEnabledChange, ItemSelectedChange,
    ItemParentChange, ItemChildAddedChange, ItemChildRemovedChange,
    ItemTransformChange, ItemPositionHasChanged, ItemTransformHasChanged,
    ItemSceneChange, ItemVisibleHasChanged, ItemEnabledHasChanged,
    ItemSelectedHasChanged, ItemParentHasChanged, ItemSceneHasChanged,
    ItemCursorChange, ItemCursorHasChanged, ItemToolTipChange,
    ItemToolTipHasChanged, ItemFlagsChange, ItemFlagsHaveChanged, ItemZValueChange,
    ItemZValueHasChanged, ItemOpacityChange, ItemOpacityHasChanged,
    ItemScenePositionHasChanged, ItemRotationChange, ItemRotationHasChanged,
    ItemScaleChange, ItemScaleHasChanged, ItemTransformOriginPointChange,
    ItemTransformOriginPointHasChanged


type
  QGraphicsItemCacheMode* {.size: sizeof(cint),
                           importcpp: "QGraphicsItem::CacheMode",
                           header: "qgraphicsitem.h".} = enum
    NoCache, ItemCoordinateCache, DeviceCoordinateCache


type
  QGraphicsItemPanelModality* {.size: sizeof(cint),
                               importcpp: "QGraphicsItem::PanelModality",
                               header: "qgraphicsitem.h".} = enum
    NonModal, PanelModal, SceneModal


proc constructQGraphicsItem*(parent: ptr QGraphicsItem = nil): QGraphicsItem {.
    constructor, importcpp: "QGraphicsItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsItem*(this: var QGraphicsItem) {.
    importcpp: "#.~QGraphicsItem()", header: "qgraphicsitem.h".}
proc scene*(this: QGraphicsItem): ptr QGraphicsScene {.noSideEffect,
    importcpp: "scene", header: "qgraphicsitem.h".}
proc parentItem*(this: QGraphicsItem): ptr QGraphicsItem {.noSideEffect,
    importcpp: "parentItem", header: "qgraphicsitem.h".}
proc topLevelItem*(this: QGraphicsItem): ptr QGraphicsItem {.noSideEffect,
    importcpp: "topLevelItem", header: "qgraphicsitem.h".}
proc parentObject*(this: QGraphicsItem): ptr QGraphicsObject {.noSideEffect,
    importcpp: "parentObject", header: "qgraphicsitem.h".}
proc parentWidget*(this: QGraphicsItem): ptr QGraphicsWidget {.noSideEffect,
    importcpp: "parentWidget", header: "qgraphicsitem.h".}
proc topLevelWidget*(this: QGraphicsItem): ptr QGraphicsWidget {.noSideEffect,
    importcpp: "topLevelWidget", header: "qgraphicsitem.h".}
proc window*(this: QGraphicsItem): ptr QGraphicsWidget {.noSideEffect,
    importcpp: "window", header: "qgraphicsitem.h".}
proc panel*(this: QGraphicsItem): ptr QGraphicsItem {.noSideEffect,
    importcpp: "panel", header: "qgraphicsitem.h".}
proc setParentItem*(this: var QGraphicsItem; parent: ptr QGraphicsItem) {.
    importcpp: "setParentItem", header: "qgraphicsitem.h".}
proc childItems*(this: QGraphicsItem): QList[ptr QGraphicsItem] {.noSideEffect,
    importcpp: "childItems", header: "qgraphicsitem.h".}
proc isWidget*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "isWidget",
                                        header: "qgraphicsitem.h".}
proc isWindow*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "isWindow",
                                        header: "qgraphicsitem.h".}
proc isPanel*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "isPanel",
                                       header: "qgraphicsitem.h".}
proc toGraphicsObject*(this: var QGraphicsItem): ptr QGraphicsObject {.
    importcpp: "toGraphicsObject", header: "qgraphicsitem.h".}
proc toGraphicsObject*(this: QGraphicsItem): ptr QGraphicsObject {.noSideEffect,
    importcpp: "toGraphicsObject", header: "qgraphicsitem.h".}
proc group*(this: QGraphicsItem): ptr QGraphicsItemGroup {.noSideEffect,
    importcpp: "group", header: "qgraphicsitem.h".}
proc setGroup*(this: var QGraphicsItem; group: ptr QGraphicsItemGroup) {.
    importcpp: "setGroup", header: "qgraphicsitem.h".}
proc flags*(this: QGraphicsItem): GraphicsItemFlags {.noSideEffect,
    importcpp: "flags", header: "qgraphicsitem.h".}
proc setFlag*(this: var QGraphicsItem; flag: QGraphicsItemGraphicsItemFlag;
             enabled: bool = true) {.importcpp: "setFlag", header: "qgraphicsitem.h".}
proc setFlags*(this: var QGraphicsItem; flags: GraphicsItemFlags) {.
    importcpp: "setFlags", header: "qgraphicsitem.h".}
proc cacheMode*(this: QGraphicsItem): QGraphicsItemCacheMode {.noSideEffect,
    importcpp: "cacheMode", header: "qgraphicsitem.h".}
proc setCacheMode*(this: var QGraphicsItem; mode: QGraphicsItemCacheMode;
                  cacheSize: QSize = qSize()) {.importcpp: "setCacheMode",
    header: "qgraphicsitem.h".}
proc panelModality*(this: QGraphicsItem): QGraphicsItemPanelModality {.noSideEffect,
    importcpp: "panelModality", header: "qgraphicsitem.h".}
proc setPanelModality*(this: var QGraphicsItem;
                      panelModality: QGraphicsItemPanelModality) {.
    importcpp: "setPanelModality", header: "qgraphicsitem.h".}
proc isBlockedByModalPanel*(this: QGraphicsItem;
                           blockingPanel: ptr ptr QGraphicsItem = nil): bool {.
    noSideEffect, importcpp: "isBlockedByModalPanel", header: "qgraphicsitem.h".}
proc toolTip*(this: QGraphicsItem): QString {.noSideEffect, importcpp: "toolTip",
    header: "qgraphicsitem.h".}
proc setToolTip*(this: var QGraphicsItem; toolTip: QString) {.importcpp: "setToolTip",
    header: "qgraphicsitem.h".}
when not defined(QT_NO_CURSOR):
  proc cursor*(this: QGraphicsItem): QCursor {.noSideEffect, importcpp: "cursor",
      header: "qgraphicsitem.h".}
when not defined(QT_NO_CURSOR):
  proc setCursor*(this: var QGraphicsItem; cursor: QCursor) {.importcpp: "setCursor",
      header: "qgraphicsitem.h".}
when not defined(QT_NO_CURSOR):
  proc hasCursor*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "hasCursor",
      header: "qgraphicsitem.h".}
when not defined(QT_NO_CURSOR):
  proc unsetCursor*(this: var QGraphicsItem) {.importcpp: "unsetCursor",
      header: "qgraphicsitem.h".}
proc isVisible*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "isVisible",
    header: "qgraphicsitem.h".}
proc isVisibleTo*(this: QGraphicsItem; parent: ptr QGraphicsItem): bool {.noSideEffect,
    importcpp: "isVisibleTo", header: "qgraphicsitem.h".}
proc setVisible*(this: var QGraphicsItem; visible: bool) {.importcpp: "setVisible",
    header: "qgraphicsitem.h".}
proc hide*(this: var QGraphicsItem) {.importcpp: "hide", header: "qgraphicsitem.h".}
proc show*(this: var QGraphicsItem) {.importcpp: "show", header: "qgraphicsitem.h".}
proc isEnabled*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "isEnabled",
    header: "qgraphicsitem.h".}
proc setEnabled*(this: var QGraphicsItem; enabled: bool) {.importcpp: "setEnabled",
    header: "qgraphicsitem.h".}
proc isSelected*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "isSelected",
    header: "qgraphicsitem.h".}
proc setSelected*(this: var QGraphicsItem; selected: bool) {.importcpp: "setSelected",
    header: "qgraphicsitem.h".}
proc acceptDrops*(this: QGraphicsItem): bool {.noSideEffect,
    importcpp: "acceptDrops", header: "qgraphicsitem.h".}
proc setAcceptDrops*(this: var QGraphicsItem; on: bool) {.importcpp: "setAcceptDrops",
    header: "qgraphicsitem.h".}
proc opacity*(this: QGraphicsItem): Qreal {.noSideEffect, importcpp: "opacity",
                                        header: "qgraphicsitem.h".}
proc effectiveOpacity*(this: QGraphicsItem): Qreal {.noSideEffect,
    importcpp: "effectiveOpacity", header: "qgraphicsitem.h".}
proc setOpacity*(this: var QGraphicsItem; opacity: Qreal) {.importcpp: "setOpacity",
    header: "qgraphicsitem.h".}
proc acceptedMouseButtons*(this: QGraphicsItem): MouseButtons {.noSideEffect,
    importcpp: "acceptedMouseButtons", header: "qgraphicsitem.h".}
proc setAcceptedMouseButtons*(this: var QGraphicsItem; buttons: MouseButtons) {.
    importcpp: "setAcceptedMouseButtons", header: "qgraphicsitem.h".}
proc acceptHoverEvents*(this: QGraphicsItem): bool {.noSideEffect,
    importcpp: "acceptHoverEvents", header: "qgraphicsitem.h".}
proc setAcceptHoverEvents*(this: var QGraphicsItem; enabled: bool) {.
    importcpp: "setAcceptHoverEvents", header: "qgraphicsitem.h".}
proc acceptTouchEvents*(this: QGraphicsItem): bool {.noSideEffect,
    importcpp: "acceptTouchEvents", header: "qgraphicsitem.h".}
proc setAcceptTouchEvents*(this: var QGraphicsItem; enabled: bool) {.
    importcpp: "setAcceptTouchEvents", header: "qgraphicsitem.h".}
proc filtersChildEvents*(this: QGraphicsItem): bool {.noSideEffect,
    importcpp: "filtersChildEvents", header: "qgraphicsitem.h".}
proc setFiltersChildEvents*(this: var QGraphicsItem; enabled: bool) {.
    importcpp: "setFiltersChildEvents", header: "qgraphicsitem.h".}
proc handlesChildEvents*(this: QGraphicsItem): bool {.noSideEffect,
    importcpp: "handlesChildEvents", header: "qgraphicsitem.h".}
proc setHandlesChildEvents*(this: var QGraphicsItem; enabled: bool) {.
    importcpp: "setHandlesChildEvents", header: "qgraphicsitem.h".}
proc isActive*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "isActive",
                                        header: "qgraphicsitem.h".}
proc setActive*(this: var QGraphicsItem; active: bool) {.importcpp: "setActive",
    header: "qgraphicsitem.h".}
proc hasFocus*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "hasFocus",
                                        header: "qgraphicsitem.h".}
proc setFocus*(this: var QGraphicsItem; focusReason: FocusReason = otherFocusReason) {.
    importcpp: "setFocus", header: "qgraphicsitem.h".}
proc clearFocus*(this: var QGraphicsItem) {.importcpp: "clearFocus",
                                        header: "qgraphicsitem.h".}
proc focusProxy*(this: QGraphicsItem): ptr QGraphicsItem {.noSideEffect,
    importcpp: "focusProxy", header: "qgraphicsitem.h".}
proc setFocusProxy*(this: var QGraphicsItem; item: ptr QGraphicsItem) {.
    importcpp: "setFocusProxy", header: "qgraphicsitem.h".}
proc focusItem*(this: QGraphicsItem): ptr QGraphicsItem {.noSideEffect,
    importcpp: "focusItem", header: "qgraphicsitem.h".}
proc focusScopeItem*(this: QGraphicsItem): ptr QGraphicsItem {.noSideEffect,
    importcpp: "focusScopeItem", header: "qgraphicsitem.h".}
proc grabMouse*(this: var QGraphicsItem) {.importcpp: "grabMouse",
                                       header: "qgraphicsitem.h".}
proc ungrabMouse*(this: var QGraphicsItem) {.importcpp: "ungrabMouse",
    header: "qgraphicsitem.h".}
proc grabKeyboard*(this: var QGraphicsItem) {.importcpp: "grabKeyboard",
    header: "qgraphicsitem.h".}
proc ungrabKeyboard*(this: var QGraphicsItem) {.importcpp: "ungrabKeyboard",
    header: "qgraphicsitem.h".}
proc pos*(this: QGraphicsItem): QPointF {.noSideEffect, importcpp: "pos",
                                      header: "qgraphicsitem.h".}
proc x*(this: QGraphicsItem): Qreal {.noSideEffect, importcpp: "x",
                                  header: "qgraphicsitem.h".}
proc setX*(this: var QGraphicsItem; x: Qreal) {.importcpp: "setX",
    header: "qgraphicsitem.h".}
proc y*(this: QGraphicsItem): Qreal {.noSideEffect, importcpp: "y",
                                  header: "qgraphicsitem.h".}
proc setY*(this: var QGraphicsItem; y: Qreal) {.importcpp: "setY",
    header: "qgraphicsitem.h".}
proc scenePos*(this: QGraphicsItem): QPointF {.noSideEffect, importcpp: "scenePos",
    header: "qgraphicsitem.h".}
proc setPos*(this: var QGraphicsItem; pos: QPointF) {.importcpp: "setPos",
    header: "qgraphicsitem.h".}
proc setPos*(this: var QGraphicsItem; x: Qreal; y: Qreal) {.importcpp: "setPos",
    header: "qgraphicsitem.h".}
proc moveBy*(this: var QGraphicsItem; dx: Qreal; dy: Qreal) {.importcpp: "moveBy",
    header: "qgraphicsitem.h".}
proc ensureVisible*(this: var QGraphicsItem; rect: QRectF = constructQRectF();
                   xmargin: cint = 50; ymargin: cint = 50) {.importcpp: "ensureVisible",
    header: "qgraphicsitem.h".}
proc ensureVisible*(this: var QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal;
                   xmargin: cint = 50; ymargin: cint = 50) {.importcpp: "ensureVisible",
    header: "qgraphicsitem.h".}
proc transform*(this: QGraphicsItem): QTransform {.noSideEffect,
    importcpp: "transform", header: "qgraphicsitem.h".}
proc sceneTransform*(this: QGraphicsItem): QTransform {.noSideEffect,
    importcpp: "sceneTransform", header: "qgraphicsitem.h".}
proc deviceTransform*(this: QGraphicsItem; viewportTransform: QTransform): QTransform {.
    noSideEffect, importcpp: "deviceTransform", header: "qgraphicsitem.h".}
proc itemTransform*(this: QGraphicsItem; other: ptr QGraphicsItem; ok: ptr bool = nil): QTransform {.
    noSideEffect, importcpp: "itemTransform", header: "qgraphicsitem.h".}
proc setTransform*(this: var QGraphicsItem; matrix: QTransform; combine: bool = false) {.
    importcpp: "setTransform", header: "qgraphicsitem.h".}
proc resetTransform*(this: var QGraphicsItem) {.importcpp: "resetTransform",
    header: "qgraphicsitem.h".}
proc setRotation*(this: var QGraphicsItem; angle: Qreal) {.importcpp: "setRotation",
    header: "qgraphicsitem.h".}
proc rotation*(this: QGraphicsItem): Qreal {.noSideEffect, importcpp: "rotation",
    header: "qgraphicsitem.h".}
proc setScale*(this: var QGraphicsItem; scale: Qreal) {.importcpp: "setScale",
    header: "qgraphicsitem.h".}
proc scale*(this: QGraphicsItem): Qreal {.noSideEffect, importcpp: "scale",
                                      header: "qgraphicsitem.h".}
proc transformations*(this: QGraphicsItem): QList[ptr QGraphicsTransform] {.
    noSideEffect, importcpp: "transformations", header: "qgraphicsitem.h".}
proc setTransformations*(this: var QGraphicsItem;
                        transformations: QList[ptr QGraphicsTransform]) {.
    importcpp: "setTransformations", header: "qgraphicsitem.h".}
proc transformOriginPoint*(this: QGraphicsItem): QPointF {.noSideEffect,
    importcpp: "transformOriginPoint", header: "qgraphicsitem.h".}
proc setTransformOriginPoint*(this: var QGraphicsItem; origin: QPointF) {.
    importcpp: "setTransformOriginPoint", header: "qgraphicsitem.h".}
proc setTransformOriginPoint*(this: var QGraphicsItem; ax: Qreal; ay: Qreal) {.
    importcpp: "setTransformOriginPoint", header: "qgraphicsitem.h".}
proc advance*(this: var QGraphicsItem; phase: cint) {.importcpp: "advance",
    header: "qgraphicsitem.h".}
proc zValue*(this: QGraphicsItem): Qreal {.noSideEffect, importcpp: "zValue",
                                       header: "qgraphicsitem.h".}
proc setZValue*(this: var QGraphicsItem; z: Qreal) {.importcpp: "setZValue",
    header: "qgraphicsitem.h".}
proc stackBefore*(this: var QGraphicsItem; sibling: ptr QGraphicsItem) {.
    importcpp: "stackBefore", header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc childrenBoundingRect*(this: QGraphicsItem): QRectF {.noSideEffect,
    importcpp: "childrenBoundingRect", header: "qgraphicsitem.h".}
proc sceneBoundingRect*(this: QGraphicsItem): QRectF {.noSideEffect,
    importcpp: "sceneBoundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsItem): QPainterPath {.noSideEffect, importcpp: "shape",
    header: "qgraphicsitem.h".}
proc isClipped*(this: QGraphicsItem): bool {.noSideEffect, importcpp: "isClipped",
    header: "qgraphicsitem.h".}
proc clipPath*(this: QGraphicsItem): QPainterPath {.noSideEffect,
    importcpp: "clipPath", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc collidesWithItem*(this: QGraphicsItem; other: ptr QGraphicsItem;
                      mode: ItemSelectionMode = intersectsItemShape): bool {.
    noSideEffect, importcpp: "collidesWithItem", header: "qgraphicsitem.h".}
proc collidesWithPath*(this: QGraphicsItem; path: QPainterPath;
                      mode: ItemSelectionMode = intersectsItemShape): bool {.
    noSideEffect, importcpp: "collidesWithPath", header: "qgraphicsitem.h".}
proc collidingItems*(this: QGraphicsItem;
                    mode: ItemSelectionMode = intersectsItemShape): QList[
    ptr QGraphicsItem] {.noSideEffect, importcpp: "collidingItems",
                       header: "qgraphicsitem.h".}
proc isObscured*(this: QGraphicsItem; rect: QRectF = constructQRectF()): bool {.
    noSideEffect, importcpp: "isObscured", header: "qgraphicsitem.h".}
proc isObscured*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): bool {.
    noSideEffect, importcpp: "isObscured", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsItem; item: ptr QGraphicsItem): bool {.noSideEffect,
    importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
proc boundingRegion*(this: QGraphicsItem; itemToDeviceTransform: QTransform): QRegion {.
    noSideEffect, importcpp: "boundingRegion", header: "qgraphicsitem.h".}
proc boundingRegionGranularity*(this: QGraphicsItem): Qreal {.noSideEffect,
    importcpp: "boundingRegionGranularity", header: "qgraphicsitem.h".}
proc setBoundingRegionGranularity*(this: var QGraphicsItem; granularity: Qreal) {.
    importcpp: "setBoundingRegionGranularity", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget = nil) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc update*(this: var QGraphicsItem; rect: QRectF = constructQRectF()) {.
    importcpp: "update", header: "qgraphicsitem.h".}
proc update*(this: var QGraphicsItem; x: Qreal; y: Qreal; width: Qreal; height: Qreal) {.
    importcpp: "update", header: "qgraphicsitem.h".}
proc scroll*(this: var QGraphicsItem; dx: Qreal; dy: Qreal;
            rect: QRectF = constructQRectF()) {.importcpp: "scroll",
    header: "qgraphicsitem.h".}
proc mapToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; point: QPointF): QPointF {.
    noSideEffect, importcpp: "mapToItem", header: "qgraphicsitem.h".}
proc mapToParent*(this: QGraphicsItem; point: QPointF): QPointF {.noSideEffect,
    importcpp: "mapToParent", header: "qgraphicsitem.h".}
proc mapToScene*(this: QGraphicsItem; point: QPointF): QPointF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsitem.h".}
proc mapToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; rect: QRectF): QPolygonF {.
    noSideEffect, importcpp: "mapToItem", header: "qgraphicsitem.h".}
proc mapToParent*(this: QGraphicsItem; rect: QRectF): QPolygonF {.noSideEffect,
    importcpp: "mapToParent", header: "qgraphicsitem.h".}
proc mapToScene*(this: QGraphicsItem; rect: QRectF): QPolygonF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsitem.h".}
proc mapRectToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; rect: QRectF): QRectF {.
    noSideEffect, importcpp: "mapRectToItem", header: "qgraphicsitem.h".}
proc mapRectToParent*(this: QGraphicsItem; rect: QRectF): QRectF {.noSideEffect,
    importcpp: "mapRectToParent", header: "qgraphicsitem.h".}
proc mapRectToScene*(this: QGraphicsItem; rect: QRectF): QRectF {.noSideEffect,
    importcpp: "mapRectToScene", header: "qgraphicsitem.h".}
proc mapToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; polygon: QPolygonF): QPolygonF {.
    noSideEffect, importcpp: "mapToItem", header: "qgraphicsitem.h".}
proc mapToParent*(this: QGraphicsItem; polygon: QPolygonF): QPolygonF {.noSideEffect,
    importcpp: "mapToParent", header: "qgraphicsitem.h".}
proc mapToScene*(this: QGraphicsItem; polygon: QPolygonF): QPolygonF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsitem.h".}
proc mapToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; path: QPainterPath): QPainterPath {.
    noSideEffect, importcpp: "mapToItem", header: "qgraphicsitem.h".}
proc mapToParent*(this: QGraphicsItem; path: QPainterPath): QPainterPath {.
    noSideEffect, importcpp: "mapToParent", header: "qgraphicsitem.h".}
proc mapToScene*(this: QGraphicsItem; path: QPainterPath): QPainterPath {.
    noSideEffect, importcpp: "mapToScene", header: "qgraphicsitem.h".}
proc mapFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; point: QPointF): QPointF {.
    noSideEffect, importcpp: "mapFromItem", header: "qgraphicsitem.h".}
proc mapFromParent*(this: QGraphicsItem; point: QPointF): QPointF {.noSideEffect,
    importcpp: "mapFromParent", header: "qgraphicsitem.h".}
proc mapFromScene*(this: QGraphicsItem; point: QPointF): QPointF {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsitem.h".}
proc mapFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; rect: QRectF): QPolygonF {.
    noSideEffect, importcpp: "mapFromItem", header: "qgraphicsitem.h".}
proc mapFromParent*(this: QGraphicsItem; rect: QRectF): QPolygonF {.noSideEffect,
    importcpp: "mapFromParent", header: "qgraphicsitem.h".}
proc mapFromScene*(this: QGraphicsItem; rect: QRectF): QPolygonF {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsitem.h".}
proc mapRectFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; rect: QRectF): QRectF {.
    noSideEffect, importcpp: "mapRectFromItem", header: "qgraphicsitem.h".}
proc mapRectFromParent*(this: QGraphicsItem; rect: QRectF): QRectF {.noSideEffect,
    importcpp: "mapRectFromParent", header: "qgraphicsitem.h".}
proc mapRectFromScene*(this: QGraphicsItem; rect: QRectF): QRectF {.noSideEffect,
    importcpp: "mapRectFromScene", header: "qgraphicsitem.h".}
proc mapFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; polygon: QPolygonF): QPolygonF {.
    noSideEffect, importcpp: "mapFromItem", header: "qgraphicsitem.h".}
proc mapFromParent*(this: QGraphicsItem; polygon: QPolygonF): QPolygonF {.
    noSideEffect, importcpp: "mapFromParent", header: "qgraphicsitem.h".}
proc mapFromScene*(this: QGraphicsItem; polygon: QPolygonF): QPolygonF {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsitem.h".}
proc mapFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; path: QPainterPath): QPainterPath {.
    noSideEffect, importcpp: "mapFromItem", header: "qgraphicsitem.h".}
proc mapFromParent*(this: QGraphicsItem; path: QPainterPath): QPainterPath {.
    noSideEffect, importcpp: "mapFromParent", header: "qgraphicsitem.h".}
proc mapFromScene*(this: QGraphicsItem; path: QPainterPath): QPainterPath {.
    noSideEffect, importcpp: "mapFromScene", header: "qgraphicsitem.h".}
proc mapToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; x: Qreal; y: Qreal): QPointF {.
    noSideEffect, importcpp: "mapToItem", header: "qgraphicsitem.h".}
proc mapToParent*(this: QGraphicsItem; x: Qreal; y: Qreal): QPointF {.noSideEffect,
    importcpp: "mapToParent", header: "qgraphicsitem.h".}
proc mapToScene*(this: QGraphicsItem; x: Qreal; y: Qreal): QPointF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsitem.h".}
proc mapToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; x: Qreal; y: Qreal;
               w: Qreal; h: Qreal): QPolygonF {.noSideEffect, importcpp: "mapToItem",
    header: "qgraphicsitem.h".}
proc mapToParent*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QPolygonF {.
    noSideEffect, importcpp: "mapToParent", header: "qgraphicsitem.h".}
proc mapToScene*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QPolygonF {.
    noSideEffect, importcpp: "mapToScene", header: "qgraphicsitem.h".}
proc mapRectToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; x: Qreal; y: Qreal;
                   w: Qreal; h: Qreal): QRectF {.noSideEffect,
    importcpp: "mapRectToItem", header: "qgraphicsitem.h".}
proc mapRectToParent*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QRectF {.
    noSideEffect, importcpp: "mapRectToParent", header: "qgraphicsitem.h".}
proc mapRectToScene*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QRectF {.
    noSideEffect, importcpp: "mapRectToScene", header: "qgraphicsitem.h".}
proc mapFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; x: Qreal; y: Qreal): QPointF {.
    noSideEffect, importcpp: "mapFromItem", header: "qgraphicsitem.h".}
proc mapFromParent*(this: QGraphicsItem; x: Qreal; y: Qreal): QPointF {.noSideEffect,
    importcpp: "mapFromParent", header: "qgraphicsitem.h".}
proc mapFromScene*(this: QGraphicsItem; x: Qreal; y: Qreal): QPointF {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsitem.h".}
proc mapFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; x: Qreal; y: Qreal;
                 w: Qreal; h: Qreal): QPolygonF {.noSideEffect,
    importcpp: "mapFromItem", header: "qgraphicsitem.h".}
proc mapFromParent*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QPolygonF {.
    noSideEffect, importcpp: "mapFromParent", header: "qgraphicsitem.h".}
proc mapFromScene*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QPolygonF {.
    noSideEffect, importcpp: "mapFromScene", header: "qgraphicsitem.h".}
proc mapRectFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; x: Qreal; y: Qreal;
                     w: Qreal; h: Qreal): QRectF {.noSideEffect,
    importcpp: "mapRectFromItem", header: "qgraphicsitem.h".}
proc mapRectFromParent*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QRectF {.
    noSideEffect, importcpp: "mapRectFromParent", header: "qgraphicsitem.h".}
proc mapRectFromScene*(this: QGraphicsItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal): QRectF {.
    noSideEffect, importcpp: "mapRectFromScene", header: "qgraphicsitem.h".}
proc isAncestorOf*(this: QGraphicsItem; child: ptr QGraphicsItem): bool {.noSideEffect,
    importcpp: "isAncestorOf", header: "qgraphicsitem.h".}
proc commonAncestorItem*(this: QGraphicsItem; other: ptr QGraphicsItem): ptr QGraphicsItem {.
    noSideEffect, importcpp: "commonAncestorItem", header: "qgraphicsitem.h".}
proc isUnderMouse*(this: QGraphicsItem): bool {.noSideEffect,
    importcpp: "isUnderMouse", header: "qgraphicsitem.h".}
proc data*(this: QGraphicsItem; key: cint): QVariant {.noSideEffect, importcpp: "data",
    header: "qgraphicsitem.h".}
proc setData*(this: var QGraphicsItem; key: cint; value: QVariant) {.
    importcpp: "setData", header: "qgraphicsitem.h".}
proc inputMethodHints*(this: QGraphicsItem): InputMethodHints {.noSideEffect,
    importcpp: "inputMethodHints", header: "qgraphicsitem.h".}
proc setInputMethodHints*(this: var QGraphicsItem; hints: InputMethodHints) {.
    importcpp: "setInputMethodHints", header: "qgraphicsitem.h".}
const
  QGraphicsItemType* = 1
  QGraphicsItemUserType* = 65536

proc `type`*(this: QGraphicsItem): cint {.noSideEffect, importcpp: "type",
                                      header: "qgraphicsitem.h".}
proc installSceneEventFilter*(this: var QGraphicsItem; filterItem: ptr QGraphicsItem) {.
    importcpp: "installSceneEventFilter", header: "qgraphicsitem.h".}
proc removeSceneEventFilter*(this: var QGraphicsItem; filterItem: ptr QGraphicsItem) {.
    importcpp: "removeSceneEventFilter", header: "qgraphicsitem.h".}
##  #ifndef Q_CLANG_QDOC
##  Q_DECLARE_INTERFACE(QGraphicsItem, "org.qt-project.Qt.QGraphicsItem")
##  #endif

proc setPos*(this: var QGraphicsItem; ax: Qreal; ay: Qreal) {.importcpp: "setPos",
    header: "qgraphicsitem.h".}
proc ensureVisible*(this: var QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal;
                   xmargin: cint; ymargin: cint) {.importcpp: "ensureVisible",
    header: "qgraphicsitem.h".}
proc update*(this: var QGraphicsItem; ax: Qreal; ay: Qreal; width: Qreal; height: Qreal) {.
    importcpp: "update", header: "qgraphicsitem.h".}
proc isObscured*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): bool {.
    noSideEffect, importcpp: "isObscured", header: "qgraphicsitem.h".}
proc mapToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; ax: Qreal; ay: Qreal): QPointF {.
    noSideEffect, importcpp: "mapToItem", header: "qgraphicsitem.h".}
proc mapToParent*(this: QGraphicsItem; ax: Qreal; ay: Qreal): QPointF {.noSideEffect,
    importcpp: "mapToParent", header: "qgraphicsitem.h".}
proc mapToScene*(this: QGraphicsItem; ax: Qreal; ay: Qreal): QPointF {.noSideEffect,
    importcpp: "mapToScene", header: "qgraphicsitem.h".}
proc mapFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; ax: Qreal; ay: Qreal): QPointF {.
    noSideEffect, importcpp: "mapFromItem", header: "qgraphicsitem.h".}
proc mapFromParent*(this: QGraphicsItem; ax: Qreal; ay: Qreal): QPointF {.noSideEffect,
    importcpp: "mapFromParent", header: "qgraphicsitem.h".}
proc mapFromScene*(this: QGraphicsItem; ax: Qreal; ay: Qreal): QPointF {.noSideEffect,
    importcpp: "mapFromScene", header: "qgraphicsitem.h".}
proc mapToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; ax: Qreal; ay: Qreal;
               w: Qreal; h: Qreal): QPolygonF {.noSideEffect, importcpp: "mapToItem",
    header: "qgraphicsitem.h".}
proc mapToParent*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QPolygonF {.
    noSideEffect, importcpp: "mapToParent", header: "qgraphicsitem.h".}
proc mapToScene*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QPolygonF {.
    noSideEffect, importcpp: "mapToScene", header: "qgraphicsitem.h".}
proc mapRectToItem*(this: QGraphicsItem; item: ptr QGraphicsItem; ax: Qreal; ay: Qreal;
                   w: Qreal; h: Qreal): QRectF {.noSideEffect,
    importcpp: "mapRectToItem", header: "qgraphicsitem.h".}
proc mapRectToParent*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QRectF {.
    noSideEffect, importcpp: "mapRectToParent", header: "qgraphicsitem.h".}
proc mapRectToScene*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QRectF {.
    noSideEffect, importcpp: "mapRectToScene", header: "qgraphicsitem.h".}
proc mapFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; ax: Qreal; ay: Qreal;
                 w: Qreal; h: Qreal): QPolygonF {.noSideEffect,
    importcpp: "mapFromItem", header: "qgraphicsitem.h".}
proc mapFromParent*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QPolygonF {.
    noSideEffect, importcpp: "mapFromParent", header: "qgraphicsitem.h".}
proc mapFromScene*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QPolygonF {.
    noSideEffect, importcpp: "mapFromScene", header: "qgraphicsitem.h".}
proc mapRectFromItem*(this: QGraphicsItem; item: ptr QGraphicsItem; ax: Qreal;
                     ay: Qreal; w: Qreal; h: Qreal): QRectF {.noSideEffect,
    importcpp: "mapRectFromItem", header: "qgraphicsitem.h".}
proc mapRectFromParent*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QRectF {.
    noSideEffect, importcpp: "mapRectFromParent", header: "qgraphicsitem.h".}
proc mapRectFromScene*(this: QGraphicsItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal): QRectF {.
    noSideEffect, importcpp: "mapRectFromScene", header: "qgraphicsitem.h".}
type
  QGraphicsObject* {.importcpp: "QGraphicsObject", header: "qgraphicsitem.h", bycopy.} = object of QObject


proc constructQGraphicsObject*(parent: ptr QGraphicsItem = nil): QGraphicsObject {.
    constructor, importcpp: "QGraphicsObject(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsObject*(this: var QGraphicsObject) {.
    importcpp: "#.~QGraphicsObject()", header: "qgraphicsitem.h".}
## using statement

proc grabGesture*(this: var QGraphicsObject; `type`: GestureType;
                 flags: GestureFlags = gestureFlags()) {.importcpp: "grabGesture",
    header: "qgraphicsitem.h".}
proc ungrabGesture*(this: var QGraphicsObject; `type`: GestureType) {.
    importcpp: "ungrabGesture", header: "qgraphicsitem.h".}
discard "forward decl of QAbstractGraphicsShapeItemPrivate"
type
  QAbstractGraphicsShapeItem* {.importcpp: "QAbstractGraphicsShapeItem",
                               header: "qgraphicsitem.h", bycopy.} = object of QGraphicsItem


proc constructQAbstractGraphicsShapeItem*(parent: ptr QGraphicsItem = nil): QAbstractGraphicsShapeItem {.
    constructor, importcpp: "QAbstractGraphicsShapeItem(@)",
    header: "qgraphicsitem.h".}
proc destroyQAbstractGraphicsShapeItem*(this: var QAbstractGraphicsShapeItem) {.
    importcpp: "#.~QAbstractGraphicsShapeItem()", header: "qgraphicsitem.h".}
proc pen*(this: QAbstractGraphicsShapeItem): QPen {.noSideEffect, importcpp: "pen",
    header: "qgraphicsitem.h".}
proc setPen*(this: var QAbstractGraphicsShapeItem; pen: QPen) {.importcpp: "setPen",
    header: "qgraphicsitem.h".}
proc brush*(this: QAbstractGraphicsShapeItem): QBrush {.noSideEffect,
    importcpp: "brush", header: "qgraphicsitem.h".}
proc setBrush*(this: var QAbstractGraphicsShapeItem; brush: QBrush) {.
    importcpp: "setBrush", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QAbstractGraphicsShapeItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QAbstractGraphicsShapeItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsPathItemPrivate"
type
  QGraphicsPathItem* {.importcpp: "QGraphicsPathItem", header: "qgraphicsitem.h",
                      bycopy.} = object of QAbstractGraphicsShapeItem


proc constructQGraphicsPathItem*(parent: ptr QGraphicsItem = nil): QGraphicsPathItem {.
    constructor, importcpp: "QGraphicsPathItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsPathItem*(path: QPainterPath;
                                parent: ptr QGraphicsItem = nil): QGraphicsPathItem {.
    constructor, importcpp: "QGraphicsPathItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsPathItem*(this: var QGraphicsPathItem) {.
    importcpp: "#.~QGraphicsPathItem()", header: "qgraphicsitem.h".}
proc path*(this: QGraphicsPathItem): QPainterPath {.noSideEffect, importcpp: "path",
    header: "qgraphicsitem.h".}
proc setPath*(this: var QGraphicsPathItem; path: QPainterPath) {.importcpp: "setPath",
    header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsPathItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsPathItem): QPainterPath {.noSideEffect,
    importcpp: "shape", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsPathItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsPathItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget = nil) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsPathItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsPathItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsPathItemType* = 2

proc `type`*(this: QGraphicsPathItem): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsRectItemPrivate"
type
  QGraphicsRectItem* {.importcpp: "QGraphicsRectItem", header: "qgraphicsitem.h",
                      bycopy.} = object of QAbstractGraphicsShapeItem


proc constructQGraphicsRectItem*(parent: ptr QGraphicsItem = nil): QGraphicsRectItem {.
    constructor, importcpp: "QGraphicsRectItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsRectItem*(rect: QRectF; parent: ptr QGraphicsItem = nil): QGraphicsRectItem {.
    constructor, importcpp: "QGraphicsRectItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsRectItem*(x: Qreal; y: Qreal; w: Qreal; h: Qreal;
                                parent: ptr QGraphicsItem = nil): QGraphicsRectItem {.
    constructor, importcpp: "QGraphicsRectItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsRectItem*(this: var QGraphicsRectItem) {.
    importcpp: "#.~QGraphicsRectItem()", header: "qgraphicsitem.h".}
proc rect*(this: QGraphicsRectItem): QRectF {.noSideEffect, importcpp: "rect",
    header: "qgraphicsitem.h".}
proc setRect*(this: var QGraphicsRectItem; rect: QRectF) {.importcpp: "setRect",
    header: "qgraphicsitem.h".}
proc setRect*(this: var QGraphicsRectItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal) {.
    importcpp: "setRect", header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsRectItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsRectItem): QPainterPath {.noSideEffect,
    importcpp: "shape", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsRectItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsRectItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget = nil) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsRectItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsRectItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsRectItemType* = 3

proc `type`*(this: QGraphicsRectItem): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
proc setRect*(this: var QGraphicsRectItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal) {.
    importcpp: "setRect", header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsEllipseItemPrivate"
type
  QGraphicsEllipseItem* {.importcpp: "QGraphicsEllipseItem",
                         header: "qgraphicsitem.h", bycopy.} = object of QAbstractGraphicsShapeItem


proc constructQGraphicsEllipseItem*(parent: ptr QGraphicsItem = nil): QGraphicsEllipseItem {.
    constructor, importcpp: "QGraphicsEllipseItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsEllipseItem*(rect: QRectF; parent: ptr QGraphicsItem = nil): QGraphicsEllipseItem {.
    constructor, importcpp: "QGraphicsEllipseItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsEllipseItem*(x: Qreal; y: Qreal; w: Qreal; h: Qreal;
                                   parent: ptr QGraphicsItem = nil): QGraphicsEllipseItem {.
    constructor, importcpp: "QGraphicsEllipseItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsEllipseItem*(this: var QGraphicsEllipseItem) {.
    importcpp: "#.~QGraphicsEllipseItem()", header: "qgraphicsitem.h".}
proc rect*(this: QGraphicsEllipseItem): QRectF {.noSideEffect, importcpp: "rect",
    header: "qgraphicsitem.h".}
proc setRect*(this: var QGraphicsEllipseItem; rect: QRectF) {.importcpp: "setRect",
    header: "qgraphicsitem.h".}
proc setRect*(this: var QGraphicsEllipseItem; x: Qreal; y: Qreal; w: Qreal; h: Qreal) {.
    importcpp: "setRect", header: "qgraphicsitem.h".}
proc startAngle*(this: QGraphicsEllipseItem): cint {.noSideEffect,
    importcpp: "startAngle", header: "qgraphicsitem.h".}
proc setStartAngle*(this: var QGraphicsEllipseItem; angle: cint) {.
    importcpp: "setStartAngle", header: "qgraphicsitem.h".}
proc spanAngle*(this: QGraphicsEllipseItem): cint {.noSideEffect,
    importcpp: "spanAngle", header: "qgraphicsitem.h".}
proc setSpanAngle*(this: var QGraphicsEllipseItem; angle: cint) {.
    importcpp: "setSpanAngle", header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsEllipseItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsEllipseItem): QPainterPath {.noSideEffect,
    importcpp: "shape", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsEllipseItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsEllipseItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget = nil) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsEllipseItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsEllipseItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsEllipseItemType* = 4

proc `type`*(this: QGraphicsEllipseItem): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
proc setRect*(this: var QGraphicsEllipseItem; ax: Qreal; ay: Qreal; w: Qreal; h: Qreal) {.
    importcpp: "setRect", header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsPolygonItemPrivate"
type
  QGraphicsPolygonItem* {.importcpp: "QGraphicsPolygonItem",
                         header: "qgraphicsitem.h", bycopy.} = object of QAbstractGraphicsShapeItem


proc constructQGraphicsPolygonItem*(parent: ptr QGraphicsItem = nil): QGraphicsPolygonItem {.
    constructor, importcpp: "QGraphicsPolygonItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsPolygonItem*(polygon: QPolygonF;
                                   parent: ptr QGraphicsItem = nil): QGraphicsPolygonItem {.
    constructor, importcpp: "QGraphicsPolygonItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsPolygonItem*(this: var QGraphicsPolygonItem) {.
    importcpp: "#.~QGraphicsPolygonItem()", header: "qgraphicsitem.h".}
proc polygon*(this: QGraphicsPolygonItem): QPolygonF {.noSideEffect,
    importcpp: "polygon", header: "qgraphicsitem.h".}
proc setPolygon*(this: var QGraphicsPolygonItem; polygon: QPolygonF) {.
    importcpp: "setPolygon", header: "qgraphicsitem.h".}
proc fillRule*(this: QGraphicsPolygonItem): FillRule {.noSideEffect,
    importcpp: "fillRule", header: "qgraphicsitem.h".}
proc setFillRule*(this: var QGraphicsPolygonItem; rule: FillRule) {.
    importcpp: "setFillRule", header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsPolygonItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsPolygonItem): QPainterPath {.noSideEffect,
    importcpp: "shape", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsPolygonItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsPolygonItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget = nil) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsPolygonItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsPolygonItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsPolygonItemType* = 5

proc `type`*(this: QGraphicsPolygonItem): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsLineItemPrivate"
type
  QGraphicsLineItem* {.importcpp: "QGraphicsLineItem", header: "qgraphicsitem.h",
                      bycopy.} = object of QGraphicsItem


proc constructQGraphicsLineItem*(parent: ptr QGraphicsItem = nil): QGraphicsLineItem {.
    constructor, importcpp: "QGraphicsLineItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsLineItem*(line: QLineF; parent: ptr QGraphicsItem = nil): QGraphicsLineItem {.
    constructor, importcpp: "QGraphicsLineItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsLineItem*(x1: Qreal; y1: Qreal; x2: Qreal; y2: Qreal;
                                parent: ptr QGraphicsItem = nil): QGraphicsLineItem {.
    constructor, importcpp: "QGraphicsLineItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsLineItem*(this: var QGraphicsLineItem) {.
    importcpp: "#.~QGraphicsLineItem()", header: "qgraphicsitem.h".}
proc pen*(this: QGraphicsLineItem): QPen {.noSideEffect, importcpp: "pen",
                                       header: "qgraphicsitem.h".}
proc setPen*(this: var QGraphicsLineItem; pen: QPen) {.importcpp: "setPen",
    header: "qgraphicsitem.h".}
proc line*(this: QGraphicsLineItem): QLineF {.noSideEffect, importcpp: "line",
    header: "qgraphicsitem.h".}
proc setLine*(this: var QGraphicsLineItem; line: QLineF) {.importcpp: "setLine",
    header: "qgraphicsitem.h".}
proc setLine*(this: var QGraphicsLineItem; x1: Qreal; y1: Qreal; x2: Qreal; y2: Qreal) {.
    importcpp: "setLine", header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsLineItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsLineItem): QPainterPath {.noSideEffect,
    importcpp: "shape", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsLineItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsLineItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget = nil) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsLineItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsLineItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsLineItemType* = 6

proc `type`*(this: QGraphicsLineItem): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsPixmapItemPrivate"
type
  QGraphicsPixmapItem* {.importcpp: "QGraphicsPixmapItem",
                        header: "qgraphicsitem.h", bycopy.} = object of QGraphicsItem

  QGraphicsPixmapItemShapeMode* {.size: sizeof(cint),
                                 importcpp: "QGraphicsPixmapItem::ShapeMode",
                                 header: "qgraphicsitem.h".} = enum
    MaskShape, BoundingRectShape, HeuristicMaskShape


proc constructQGraphicsPixmapItem*(parent: ptr QGraphicsItem = nil): QGraphicsPixmapItem {.
    constructor, importcpp: "QGraphicsPixmapItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsPixmapItem*(pixmap: QPixmap; parent: ptr QGraphicsItem = nil): QGraphicsPixmapItem {.
    constructor, importcpp: "QGraphicsPixmapItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsPixmapItem*(this: var QGraphicsPixmapItem) {.
    importcpp: "#.~QGraphicsPixmapItem()", header: "qgraphicsitem.h".}
proc pixmap*(this: QGraphicsPixmapItem): QPixmap {.noSideEffect, importcpp: "pixmap",
    header: "qgraphicsitem.h".}
proc setPixmap*(this: var QGraphicsPixmapItem; pixmap: QPixmap) {.
    importcpp: "setPixmap", header: "qgraphicsitem.h".}
proc transformationMode*(this: QGraphicsPixmapItem): TransformationMode {.
    noSideEffect, importcpp: "transformationMode", header: "qgraphicsitem.h".}
proc setTransformationMode*(this: var QGraphicsPixmapItem; mode: TransformationMode) {.
    importcpp: "setTransformationMode", header: "qgraphicsitem.h".}
proc offset*(this: QGraphicsPixmapItem): QPointF {.noSideEffect, importcpp: "offset",
    header: "qgraphicsitem.h".}
proc setOffset*(this: var QGraphicsPixmapItem; offset: QPointF) {.
    importcpp: "setOffset", header: "qgraphicsitem.h".}
proc setOffset*(this: var QGraphicsPixmapItem; x: Qreal; y: Qreal) {.
    importcpp: "setOffset", header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsPixmapItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsPixmapItem): QPainterPath {.noSideEffect,
    importcpp: "shape", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsPixmapItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsPixmapItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsPixmapItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsPixmapItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsPixmapItemType* = 7

proc `type`*(this: QGraphicsPixmapItem): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
proc shapeMode*(this: QGraphicsPixmapItem): QGraphicsPixmapItemShapeMode {.
    noSideEffect, importcpp: "shapeMode", header: "qgraphicsitem.h".}
proc setShapeMode*(this: var QGraphicsPixmapItem; mode: QGraphicsPixmapItemShapeMode) {.
    importcpp: "setShapeMode", header: "qgraphicsitem.h".}
proc setOffset*(this: var QGraphicsPixmapItem; ax: Qreal; ay: Qreal) {.
    importcpp: "setOffset", header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsTextItemPrivate"
discard "forward decl of QTextDocument"
discard "forward decl of QTextCursor"
type
  QGraphicsTextItem* {.importcpp: "QGraphicsTextItem", header: "qgraphicsitem.h",
                      bycopy.} = object of QGraphicsObject


proc constructQGraphicsTextItem*(parent: ptr QGraphicsItem = nil): QGraphicsTextItem {.
    constructor, importcpp: "QGraphicsTextItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsTextItem*(text: QString; parent: ptr QGraphicsItem = nil): QGraphicsTextItem {.
    constructor, importcpp: "QGraphicsTextItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsTextItem*(this: var QGraphicsTextItem) {.
    importcpp: "#.~QGraphicsTextItem()", header: "qgraphicsitem.h".}
proc toHtml*(this: QGraphicsTextItem): QString {.noSideEffect, importcpp: "toHtml",
    header: "qgraphicsitem.h".}
proc setHtml*(this: var QGraphicsTextItem; html: QString) {.importcpp: "setHtml",
    header: "qgraphicsitem.h".}
proc toPlainText*(this: QGraphicsTextItem): QString {.noSideEffect,
    importcpp: "toPlainText", header: "qgraphicsitem.h".}
proc setPlainText*(this: var QGraphicsTextItem; text: QString) {.
    importcpp: "setPlainText", header: "qgraphicsitem.h".}
proc font*(this: QGraphicsTextItem): QFont {.noSideEffect, importcpp: "font",
    header: "qgraphicsitem.h".}
proc setFont*(this: var QGraphicsTextItem; font: QFont) {.importcpp: "setFont",
    header: "qgraphicsitem.h".}
proc setDefaultTextColor*(this: var QGraphicsTextItem; c: QColor) {.
    importcpp: "setDefaultTextColor", header: "qgraphicsitem.h".}
proc defaultTextColor*(this: QGraphicsTextItem): QColor {.noSideEffect,
    importcpp: "defaultTextColor", header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsTextItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsTextItem): QPainterPath {.noSideEffect,
    importcpp: "shape", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsTextItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsTextItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsTextItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsTextItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsTextItemType* = 8

proc `type`*(this: QGraphicsTextItem): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
proc setTextWidth*(this: var QGraphicsTextItem; width: Qreal) {.
    importcpp: "setTextWidth", header: "qgraphicsitem.h".}
proc textWidth*(this: QGraphicsTextItem): Qreal {.noSideEffect,
    importcpp: "textWidth", header: "qgraphicsitem.h".}
proc adjustSize*(this: var QGraphicsTextItem) {.importcpp: "adjustSize",
    header: "qgraphicsitem.h".}
proc setDocument*(this: var QGraphicsTextItem; document: ptr QTextDocument) {.
    importcpp: "setDocument", header: "qgraphicsitem.h".}
proc document*(this: QGraphicsTextItem): ptr QTextDocument {.noSideEffect,
    importcpp: "document", header: "qgraphicsitem.h".}
proc setTextInteractionFlags*(this: var QGraphicsTextItem;
                             flags: TextInteractionFlags) {.
    importcpp: "setTextInteractionFlags", header: "qgraphicsitem.h".}
proc textInteractionFlags*(this: QGraphicsTextItem): TextInteractionFlags {.
    noSideEffect, importcpp: "textInteractionFlags", header: "qgraphicsitem.h".}
proc setTabChangesFocus*(this: var QGraphicsTextItem; b: bool) {.
    importcpp: "setTabChangesFocus", header: "qgraphicsitem.h".}
proc tabChangesFocus*(this: QGraphicsTextItem): bool {.noSideEffect,
    importcpp: "tabChangesFocus", header: "qgraphicsitem.h".}
proc setOpenExternalLinks*(this: var QGraphicsTextItem; open: bool) {.
    importcpp: "setOpenExternalLinks", header: "qgraphicsitem.h".}
proc openExternalLinks*(this: QGraphicsTextItem): bool {.noSideEffect,
    importcpp: "openExternalLinks", header: "qgraphicsitem.h".}
proc setTextCursor*(this: var QGraphicsTextItem; cursor: QTextCursor) {.
    importcpp: "setTextCursor", header: "qgraphicsitem.h".}
proc textCursor*(this: QGraphicsTextItem): QTextCursor {.noSideEffect,
    importcpp: "textCursor", header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsSimpleTextItemPrivate"
type
  QGraphicsSimpleTextItem* {.importcpp: "QGraphicsSimpleTextItem",
                            header: "qgraphicsitem.h", bycopy.} = object of QAbstractGraphicsShapeItem


proc constructQGraphicsSimpleTextItem*(parent: ptr QGraphicsItem = nil): QGraphicsSimpleTextItem {.
    constructor, importcpp: "QGraphicsSimpleTextItem(@)", header: "qgraphicsitem.h".}
proc constructQGraphicsSimpleTextItem*(text: QString;
                                      parent: ptr QGraphicsItem = nil): QGraphicsSimpleTextItem {.
    constructor, importcpp: "QGraphicsSimpleTextItem(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsSimpleTextItem*(this: var QGraphicsSimpleTextItem) {.
    importcpp: "#.~QGraphicsSimpleTextItem()", header: "qgraphicsitem.h".}
proc setText*(this: var QGraphicsSimpleTextItem; text: QString) {.
    importcpp: "setText", header: "qgraphicsitem.h".}
proc text*(this: QGraphicsSimpleTextItem): QString {.noSideEffect, importcpp: "text",
    header: "qgraphicsitem.h".}
proc setFont*(this: var QGraphicsSimpleTextItem; font: QFont) {.importcpp: "setFont",
    header: "qgraphicsitem.h".}
proc font*(this: QGraphicsSimpleTextItem): QFont {.noSideEffect, importcpp: "font",
    header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsSimpleTextItem): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc shape*(this: QGraphicsSimpleTextItem): QPainterPath {.noSideEffect,
    importcpp: "shape", header: "qgraphicsitem.h".}
proc contains*(this: QGraphicsSimpleTextItem; point: QPointF): bool {.noSideEffect,
    importcpp: "contains", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsSimpleTextItem; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsSimpleTextItem; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsSimpleTextItem): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsSimpleTextItemType* = 9

proc `type`*(this: QGraphicsSimpleTextItem): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
discard "forward decl of QGraphicsItemGroupPrivate"
type
  QGraphicsItemGroup* {.importcpp: "QGraphicsItemGroup", header: "qgraphicsitem.h",
                       bycopy.} = object of QGraphicsItem


proc constructQGraphicsItemGroup*(parent: ptr QGraphicsItem = nil): QGraphicsItemGroup {.
    constructor, importcpp: "QGraphicsItemGroup(@)", header: "qgraphicsitem.h".}
proc destroyQGraphicsItemGroup*(this: var QGraphicsItemGroup) {.
    importcpp: "#.~QGraphicsItemGroup()", header: "qgraphicsitem.h".}
proc addToGroup*(this: var QGraphicsItemGroup; item: ptr QGraphicsItem) {.
    importcpp: "addToGroup", header: "qgraphicsitem.h".}
proc removeFromGroup*(this: var QGraphicsItemGroup; item: ptr QGraphicsItem) {.
    importcpp: "removeFromGroup", header: "qgraphicsitem.h".}
proc boundingRect*(this: QGraphicsItemGroup): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicsitem.h".}
proc paint*(this: var QGraphicsItemGroup; painter: ptr QPainter;
           option: ptr QStyleOptionGraphicsItem; widget: ptr QWidget = nil) {.
    importcpp: "paint", header: "qgraphicsitem.h".}
proc isObscuredBy*(this: QGraphicsItemGroup; item: ptr QGraphicsItem): bool {.
    noSideEffect, importcpp: "isObscuredBy", header: "qgraphicsitem.h".}
proc opaqueArea*(this: QGraphicsItemGroup): QPainterPath {.noSideEffect,
    importcpp: "opaqueArea", header: "qgraphicsitem.h".}
const
  QGraphicsItemGroupType* = 10

proc `type`*(this: QGraphicsItemGroup): cint {.noSideEffect, importcpp: "type",
    header: "qgraphicsitem.h".}
##  template <class T> inline T qgraphicsitem_cast(QGraphicsItem *item)
##  {
##      typedef typename std::remove_cv<typename std::remove_pointer<T>::type>::type Item;
##      return int(Item::Type) == int(QGraphicsItem::Type)
##          || (item && int(Item::Type) == item->type()) ? static_cast<T>(item) : nullptr;
##  }
##
##  template <class T> inline T qgraphicsitem_cast(const QGraphicsItem *item)
##  {
##      typedef typename std::remove_cv<typename std::remove_pointer<T>::type>::type Item;
##      return int(Item::Type) == int(QGraphicsItem::Type)
##          || (item && int(Item::Type) == item->type()) ? static_cast<T>(item) : nullptr;
##  }

when not defined(QT_NO_DEBUG_STREAM):
  proc `<<`*(debug: QDebug; item: ptr QGraphicsItem): QDebug {.importcpp: "(# << #)",
      header: "qgraphicsitem.h".}
  proc `<<`*(debug: QDebug; item: ptr QGraphicsObject): QDebug {.importcpp: "(# << #)",
      header: "qgraphicsitem.h".}
  proc `<<`*(debug: QDebug; change: QGraphicsItemGraphicsItemChange): QDebug {.
      importcpp: "(# << #)", header: "qgraphicsitem.h".}
  proc `<<`*(debug: QDebug; flag: QGraphicsItemGraphicsItemFlag): QDebug {.
      importcpp: "(# << #)", header: "qgraphicsitem.h".}
  proc `<<`*(debug: QDebug; flags: QGraphicsItemGraphicsItemFlags): QDebug {.
      importcpp: "(# << #)", header: "qgraphicsitem.h".}