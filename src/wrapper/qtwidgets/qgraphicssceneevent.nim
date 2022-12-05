import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicsview)
discard "forward decl of QMimeData"
discard "forward decl of QPointF"
discard "forward decl of QSizeF"
discard "forward decl of QWidget"
discard "forward decl of QGraphicsSceneEventPrivate"


proc constructQGraphicsSceneEvent*(`type`: Type): QGraphicsSceneEvent {.constructor,
    importcpp: "QGraphicsSceneEvent(@)", header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneEvent*(this: var QGraphicsSceneEvent) {.
    importcpp: "#.~QGraphicsSceneEvent()", header: "qgraphicssceneevent.h".}
proc widget*(this: QGraphicsSceneEvent): ptr QWidget {.noSideEffect,
    importcpp: "widget", header: "qgraphicssceneevent.h".}
proc setWidget*(this: var QGraphicsSceneEvent; widget: ptr QWidget) {.
    importcpp: "setWidget", header: "qgraphicssceneevent.h".}
proc timestamp*(this: QGraphicsSceneEvent): Quint64 {.noSideEffect,
    importcpp: "timestamp", header: "qgraphicssceneevent.h".}
proc setTimestamp*(this: var QGraphicsSceneEvent; ts: Quint64) {.
    importcpp: "setTimestamp", header: "qgraphicssceneevent.h".}
discard "forward decl of QGraphicsSceneMouseEventPrivate"


proc constructQGraphicsSceneMouseEvent*(`type`: Type = none): QGraphicsSceneMouseEvent {.
    constructor, importcpp: "QGraphicsSceneMouseEvent(@)",
    header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneMouseEvent*(this: var QGraphicsSceneMouseEvent) {.
    importcpp: "#.~QGraphicsSceneMouseEvent()", header: "qgraphicssceneevent.h".}
proc pos*(this: QGraphicsSceneMouseEvent): QPointF {.noSideEffect, importcpp: "pos",
    header: "qgraphicssceneevent.h".}
proc setPos*(this: var QGraphicsSceneMouseEvent; pos: QPointF) {.importcpp: "setPos",
    header: "qgraphicssceneevent.h".}
proc scenePos*(this: QGraphicsSceneMouseEvent): QPointF {.noSideEffect,
    importcpp: "scenePos", header: "qgraphicssceneevent.h".}
proc setScenePos*(this: var QGraphicsSceneMouseEvent; pos: QPointF) {.
    importcpp: "setScenePos", header: "qgraphicssceneevent.h".}
proc screenPos*(this: QGraphicsSceneMouseEvent): QPoint {.noSideEffect,
    importcpp: "screenPos", header: "qgraphicssceneevent.h".}
proc setScreenPos*(this: var QGraphicsSceneMouseEvent; pos: QPoint) {.
    importcpp: "setScreenPos", header: "qgraphicssceneevent.h".}
proc buttonDownPos*(this: QGraphicsSceneMouseEvent; button: MouseButton): QPointF {.
    noSideEffect, importcpp: "buttonDownPos", header: "qgraphicssceneevent.h".}
proc setButtonDownPos*(this: var QGraphicsSceneMouseEvent; button: MouseButton;
                      pos: QPointF) {.importcpp: "setButtonDownPos",
                                    header: "qgraphicssceneevent.h".}
proc buttonDownScenePos*(this: QGraphicsSceneMouseEvent; button: MouseButton): QPointF {.
    noSideEffect, importcpp: "buttonDownScenePos", header: "qgraphicssceneevent.h".}
proc setButtonDownScenePos*(this: var QGraphicsSceneMouseEvent; button: MouseButton;
                           pos: QPointF) {.importcpp: "setButtonDownScenePos",
    header: "qgraphicssceneevent.h".}
proc buttonDownScreenPos*(this: QGraphicsSceneMouseEvent; button: MouseButton): QPoint {.
    noSideEffect, importcpp: "buttonDownScreenPos", header: "qgraphicssceneevent.h".}
proc setButtonDownScreenPos*(this: var QGraphicsSceneMouseEvent;
                            button: MouseButton; pos: QPoint) {.
    importcpp: "setButtonDownScreenPos", header: "qgraphicssceneevent.h".}
proc lastPos*(this: QGraphicsSceneMouseEvent): QPointF {.noSideEffect,
    importcpp: "lastPos", header: "qgraphicssceneevent.h".}
proc setLastPos*(this: var QGraphicsSceneMouseEvent; pos: QPointF) {.
    importcpp: "setLastPos", header: "qgraphicssceneevent.h".}
proc lastScenePos*(this: QGraphicsSceneMouseEvent): QPointF {.noSideEffect,
    importcpp: "lastScenePos", header: "qgraphicssceneevent.h".}
proc setLastScenePos*(this: var QGraphicsSceneMouseEvent; pos: QPointF) {.
    importcpp: "setLastScenePos", header: "qgraphicssceneevent.h".}
proc lastScreenPos*(this: QGraphicsSceneMouseEvent): QPoint {.noSideEffect,
    importcpp: "lastScreenPos", header: "qgraphicssceneevent.h".}
proc setLastScreenPos*(this: var QGraphicsSceneMouseEvent; pos: QPoint) {.
    importcpp: "setLastScreenPos", header: "qgraphicssceneevent.h".}
proc buttons*(this: QGraphicsSceneMouseEvent): MouseButtons {.noSideEffect,
    importcpp: "buttons", header: "qgraphicssceneevent.h".}
proc setButtons*(this: var QGraphicsSceneMouseEvent; buttons: MouseButtons) {.
    importcpp: "setButtons", header: "qgraphicssceneevent.h".}
proc button*(this: QGraphicsSceneMouseEvent): MouseButton {.noSideEffect,
    importcpp: "button", header: "qgraphicssceneevent.h".}
proc setButton*(this: var QGraphicsSceneMouseEvent; button: MouseButton) {.
    importcpp: "setButton", header: "qgraphicssceneevent.h".}
proc modifiers*(this: QGraphicsSceneMouseEvent): KeyboardModifiers {.noSideEffect,
    importcpp: "modifiers", header: "qgraphicssceneevent.h".}
proc setModifiers*(this: var QGraphicsSceneMouseEvent; modifiers: KeyboardModifiers) {.
    importcpp: "setModifiers", header: "qgraphicssceneevent.h".}
proc source*(this: QGraphicsSceneMouseEvent): MouseEventSource {.noSideEffect,
    importcpp: "source", header: "qgraphicssceneevent.h".}
proc setSource*(this: var QGraphicsSceneMouseEvent; source: MouseEventSource) {.
    importcpp: "setSource", header: "qgraphicssceneevent.h".}
proc flags*(this: QGraphicsSceneMouseEvent): MouseEventFlags {.noSideEffect,
    importcpp: "flags", header: "qgraphicssceneevent.h".}
proc setFlags*(this: var QGraphicsSceneMouseEvent; a2: MouseEventFlags) {.
    importcpp: "setFlags", header: "qgraphicssceneevent.h".}
discard "forward decl of QGraphicsSceneWheelEventPrivate"


proc constructQGraphicsSceneWheelEvent*(`type`: Type = none): QGraphicsSceneWheelEvent {.
    constructor, importcpp: "QGraphicsSceneWheelEvent(@)",
    header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneWheelEvent*(this: var QGraphicsSceneWheelEvent) {.
    importcpp: "#.~QGraphicsSceneWheelEvent()", header: "qgraphicssceneevent.h".}
proc pos*(this: QGraphicsSceneWheelEvent): QPointF {.noSideEffect, importcpp: "pos",
    header: "qgraphicssceneevent.h".}
proc setPos*(this: var QGraphicsSceneWheelEvent; pos: QPointF) {.importcpp: "setPos",
    header: "qgraphicssceneevent.h".}
proc scenePos*(this: QGraphicsSceneWheelEvent): QPointF {.noSideEffect,
    importcpp: "scenePos", header: "qgraphicssceneevent.h".}
proc setScenePos*(this: var QGraphicsSceneWheelEvent; pos: QPointF) {.
    importcpp: "setScenePos", header: "qgraphicssceneevent.h".}
proc screenPos*(this: QGraphicsSceneWheelEvent): QPoint {.noSideEffect,
    importcpp: "screenPos", header: "qgraphicssceneevent.h".}
proc setScreenPos*(this: var QGraphicsSceneWheelEvent; pos: QPoint) {.
    importcpp: "setScreenPos", header: "qgraphicssceneevent.h".}
proc buttons*(this: QGraphicsSceneWheelEvent): MouseButtons {.noSideEffect,
    importcpp: "buttons", header: "qgraphicssceneevent.h".}
proc setButtons*(this: var QGraphicsSceneWheelEvent; buttons: MouseButtons) {.
    importcpp: "setButtons", header: "qgraphicssceneevent.h".}
proc modifiers*(this: QGraphicsSceneWheelEvent): KeyboardModifiers {.noSideEffect,
    importcpp: "modifiers", header: "qgraphicssceneevent.h".}
proc setModifiers*(this: var QGraphicsSceneWheelEvent; modifiers: KeyboardModifiers) {.
    importcpp: "setModifiers", header: "qgraphicssceneevent.h".}
proc delta*(this: QGraphicsSceneWheelEvent): cint {.noSideEffect, importcpp: "delta",
    header: "qgraphicssceneevent.h".}
proc setDelta*(this: var QGraphicsSceneWheelEvent; delta: cint) {.
    importcpp: "setDelta", header: "qgraphicssceneevent.h".}
proc orientation*(this: QGraphicsSceneWheelEvent): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qgraphicssceneevent.h".}
proc setOrientation*(this: var QGraphicsSceneWheelEvent; orientation: Orientation) {.
    importcpp: "setOrientation", header: "qgraphicssceneevent.h".}
proc phase*(this: QGraphicsSceneWheelEvent): ScrollPhase {.noSideEffect,
    importcpp: "phase", header: "qgraphicssceneevent.h".}
proc setPhase*(this: var QGraphicsSceneWheelEvent; scrollPhase: ScrollPhase) {.
    importcpp: "setPhase", header: "qgraphicssceneevent.h".}
proc pixelDelta*(this: QGraphicsSceneWheelEvent): QPoint {.noSideEffect,
    importcpp: "pixelDelta", header: "qgraphicssceneevent.h".}
proc setPixelDelta*(this: var QGraphicsSceneWheelEvent; delta: QPoint) {.
    importcpp: "setPixelDelta", header: "qgraphicssceneevent.h".}
proc isInverted*(this: QGraphicsSceneWheelEvent): bool {.noSideEffect,
    importcpp: "isInverted", header: "qgraphicssceneevent.h".}
proc setInverted*(this: var QGraphicsSceneWheelEvent; inverted: bool) {.
    importcpp: "setInverted", header: "qgraphicssceneevent.h".}
discard "forward decl of QGraphicsSceneContextMenuEventPrivate"



proc constructQGraphicsSceneContextMenuEvent*(`type`: Type = none): QGraphicsSceneContextMenuEvent {.
    constructor, importcpp: "QGraphicsSceneContextMenuEvent(@)",
    header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneContextMenuEvent*(
    this: var QGraphicsSceneContextMenuEvent) {.
    importcpp: "#.~QGraphicsSceneContextMenuEvent()",
    header: "qgraphicssceneevent.h".}
proc pos*(this: QGraphicsSceneContextMenuEvent): QPointF {.noSideEffect,
    importcpp: "pos", header: "qgraphicssceneevent.h".}
proc setPos*(this: var QGraphicsSceneContextMenuEvent; pos: QPointF) {.
    importcpp: "setPos", header: "qgraphicssceneevent.h".}
proc scenePos*(this: QGraphicsSceneContextMenuEvent): QPointF {.noSideEffect,
    importcpp: "scenePos", header: "qgraphicssceneevent.h".}
proc setScenePos*(this: var QGraphicsSceneContextMenuEvent; pos: QPointF) {.
    importcpp: "setScenePos", header: "qgraphicssceneevent.h".}
proc screenPos*(this: QGraphicsSceneContextMenuEvent): QPoint {.noSideEffect,
    importcpp: "screenPos", header: "qgraphicssceneevent.h".}
proc setScreenPos*(this: var QGraphicsSceneContextMenuEvent; pos: QPoint) {.
    importcpp: "setScreenPos", header: "qgraphicssceneevent.h".}
proc modifiers*(this: QGraphicsSceneContextMenuEvent): KeyboardModifiers {.
    noSideEffect, importcpp: "modifiers", header: "qgraphicssceneevent.h".}
proc setModifiers*(this: var QGraphicsSceneContextMenuEvent;
                  modifiers: KeyboardModifiers) {.importcpp: "setModifiers",
    header: "qgraphicssceneevent.h".}
proc reason*(this: QGraphicsSceneContextMenuEvent): QGraphicsSceneContextMenuEventReason {.
    noSideEffect, importcpp: "reason", header: "qgraphicssceneevent.h".}
proc setReason*(this: var QGraphicsSceneContextMenuEvent;
               reason: QGraphicsSceneContextMenuEventReason) {.
    importcpp: "setReason", header: "qgraphicssceneevent.h".}
discard "forward decl of QGraphicsSceneHoverEventPrivate"


proc constructQGraphicsSceneHoverEvent*(`type`: Type = none): QGraphicsSceneHoverEvent {.
    constructor, importcpp: "QGraphicsSceneHoverEvent(@)",
    header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneHoverEvent*(this: var QGraphicsSceneHoverEvent) {.
    importcpp: "#.~QGraphicsSceneHoverEvent()", header: "qgraphicssceneevent.h".}
proc pos*(this: QGraphicsSceneHoverEvent): QPointF {.noSideEffect, importcpp: "pos",
    header: "qgraphicssceneevent.h".}
proc setPos*(this: var QGraphicsSceneHoverEvent; pos: QPointF) {.importcpp: "setPos",
    header: "qgraphicssceneevent.h".}
proc scenePos*(this: QGraphicsSceneHoverEvent): QPointF {.noSideEffect,
    importcpp: "scenePos", header: "qgraphicssceneevent.h".}
proc setScenePos*(this: var QGraphicsSceneHoverEvent; pos: QPointF) {.
    importcpp: "setScenePos", header: "qgraphicssceneevent.h".}
proc screenPos*(this: QGraphicsSceneHoverEvent): QPoint {.noSideEffect,
    importcpp: "screenPos", header: "qgraphicssceneevent.h".}
proc setScreenPos*(this: var QGraphicsSceneHoverEvent; pos: QPoint) {.
    importcpp: "setScreenPos", header: "qgraphicssceneevent.h".}
proc lastPos*(this: QGraphicsSceneHoverEvent): QPointF {.noSideEffect,
    importcpp: "lastPos", header: "qgraphicssceneevent.h".}
proc setLastPos*(this: var QGraphicsSceneHoverEvent; pos: QPointF) {.
    importcpp: "setLastPos", header: "qgraphicssceneevent.h".}
proc lastScenePos*(this: QGraphicsSceneHoverEvent): QPointF {.noSideEffect,
    importcpp: "lastScenePos", header: "qgraphicssceneevent.h".}
proc setLastScenePos*(this: var QGraphicsSceneHoverEvent; pos: QPointF) {.
    importcpp: "setLastScenePos", header: "qgraphicssceneevent.h".}
proc lastScreenPos*(this: QGraphicsSceneHoverEvent): QPoint {.noSideEffect,
    importcpp: "lastScreenPos", header: "qgraphicssceneevent.h".}
proc setLastScreenPos*(this: var QGraphicsSceneHoverEvent; pos: QPoint) {.
    importcpp: "setLastScreenPos", header: "qgraphicssceneevent.h".}
proc modifiers*(this: QGraphicsSceneHoverEvent): KeyboardModifiers {.noSideEffect,
    importcpp: "modifiers", header: "qgraphicssceneevent.h".}
proc setModifiers*(this: var QGraphicsSceneHoverEvent; modifiers: KeyboardModifiers) {.
    importcpp: "setModifiers", header: "qgraphicssceneevent.h".}
discard "forward decl of QGraphicsSceneHelpEventPrivate"


proc constructQGraphicsSceneHelpEvent*(`type`: Type = none): QGraphicsSceneHelpEvent {.
    constructor, importcpp: "QGraphicsSceneHelpEvent(@)",
    header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneHelpEvent*(this: var QGraphicsSceneHelpEvent) {.
    importcpp: "#.~QGraphicsSceneHelpEvent()", header: "qgraphicssceneevent.h".}
proc scenePos*(this: QGraphicsSceneHelpEvent): QPointF {.noSideEffect,
    importcpp: "scenePos", header: "qgraphicssceneevent.h".}
proc setScenePos*(this: var QGraphicsSceneHelpEvent; pos: QPointF) {.
    importcpp: "setScenePos", header: "qgraphicssceneevent.h".}
proc screenPos*(this: QGraphicsSceneHelpEvent): QPoint {.noSideEffect,
    importcpp: "screenPos", header: "qgraphicssceneevent.h".}
proc setScreenPos*(this: var QGraphicsSceneHelpEvent; pos: QPoint) {.
    importcpp: "setScreenPos", header: "qgraphicssceneevent.h".}
discard "forward decl of QGraphicsSceneDragDropEventPrivate"


proc constructQGraphicsSceneDragDropEvent*(`type`: Type = none): QGraphicsSceneDragDropEvent {.
    constructor, importcpp: "QGraphicsSceneDragDropEvent(@)",
    header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneDragDropEvent*(this: var QGraphicsSceneDragDropEvent) {.
    importcpp: "#.~QGraphicsSceneDragDropEvent()", header: "qgraphicssceneevent.h".}
proc pos*(this: QGraphicsSceneDragDropEvent): QPointF {.noSideEffect,
    importcpp: "pos", header: "qgraphicssceneevent.h".}
proc setPos*(this: var QGraphicsSceneDragDropEvent; pos: QPointF) {.
    importcpp: "setPos", header: "qgraphicssceneevent.h".}
proc scenePos*(this: QGraphicsSceneDragDropEvent): QPointF {.noSideEffect,
    importcpp: "scenePos", header: "qgraphicssceneevent.h".}
proc setScenePos*(this: var QGraphicsSceneDragDropEvent; pos: QPointF) {.
    importcpp: "setScenePos", header: "qgraphicssceneevent.h".}
proc screenPos*(this: QGraphicsSceneDragDropEvent): QPoint {.noSideEffect,
    importcpp: "screenPos", header: "qgraphicssceneevent.h".}
proc setScreenPos*(this: var QGraphicsSceneDragDropEvent; pos: QPoint) {.
    importcpp: "setScreenPos", header: "qgraphicssceneevent.h".}
proc buttons*(this: QGraphicsSceneDragDropEvent): MouseButtons {.noSideEffect,
    importcpp: "buttons", header: "qgraphicssceneevent.h".}
proc setButtons*(this: var QGraphicsSceneDragDropEvent; buttons: MouseButtons) {.
    importcpp: "setButtons", header: "qgraphicssceneevent.h".}
proc modifiers*(this: QGraphicsSceneDragDropEvent): KeyboardModifiers {.
    noSideEffect, importcpp: "modifiers", header: "qgraphicssceneevent.h".}
proc setModifiers*(this: var QGraphicsSceneDragDropEvent;
                  modifiers: KeyboardModifiers) {.importcpp: "setModifiers",
    header: "qgraphicssceneevent.h".}
proc possibleActions*(this: QGraphicsSceneDragDropEvent): DropActions {.
    noSideEffect, importcpp: "possibleActions", header: "qgraphicssceneevent.h".}
proc setPossibleActions*(this: var QGraphicsSceneDragDropEvent; actions: DropActions) {.
    importcpp: "setPossibleActions", header: "qgraphicssceneevent.h".}
proc proposedAction*(this: QGraphicsSceneDragDropEvent): DropAction {.noSideEffect,
    importcpp: "proposedAction", header: "qgraphicssceneevent.h".}
proc setProposedAction*(this: var QGraphicsSceneDragDropEvent; action: DropAction) {.
    importcpp: "setProposedAction", header: "qgraphicssceneevent.h".}
proc acceptProposedAction*(this: var QGraphicsSceneDragDropEvent) {.
    importcpp: "acceptProposedAction", header: "qgraphicssceneevent.h".}
proc dropAction*(this: QGraphicsSceneDragDropEvent): DropAction {.noSideEffect,
    importcpp: "dropAction", header: "qgraphicssceneevent.h".}
proc setDropAction*(this: var QGraphicsSceneDragDropEvent; action: DropAction) {.
    importcpp: "setDropAction", header: "qgraphicssceneevent.h".}
proc source*(this: QGraphicsSceneDragDropEvent): ptr QWidget {.noSideEffect,
    importcpp: "source", header: "qgraphicssceneevent.h".}
proc setSource*(this: var QGraphicsSceneDragDropEvent; source: ptr QWidget) {.
    importcpp: "setSource", header: "qgraphicssceneevent.h".}
proc mimeData*(this: QGraphicsSceneDragDropEvent): ptr QMimeData {.noSideEffect,
    importcpp: "mimeData", header: "qgraphicssceneevent.h".}
proc setMimeData*(this: var QGraphicsSceneDragDropEvent; data: ptr QMimeData) {.
    importcpp: "setMimeData", header: "qgraphicssceneevent.h".}
discard "forward decl of QGraphicsSceneResizeEventPrivate"


proc constructQGraphicsSceneResizeEvent*(): QGraphicsSceneResizeEvent {.
    constructor, importcpp: "QGraphicsSceneResizeEvent(@)",
    header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneResizeEvent*(this: var QGraphicsSceneResizeEvent) {.
    importcpp: "#.~QGraphicsSceneResizeEvent()", header: "qgraphicssceneevent.h".}
proc oldSize*(this: QGraphicsSceneResizeEvent): QSizeF {.noSideEffect,
    importcpp: "oldSize", header: "qgraphicssceneevent.h".}
proc setOldSize*(this: var QGraphicsSceneResizeEvent; size: QSizeF) {.
    importcpp: "setOldSize", header: "qgraphicssceneevent.h".}
proc newSize*(this: QGraphicsSceneResizeEvent): QSizeF {.noSideEffect,
    importcpp: "newSize", header: "qgraphicssceneevent.h".}
proc setNewSize*(this: var QGraphicsSceneResizeEvent; size: QSizeF) {.
    importcpp: "setNewSize", header: "qgraphicssceneevent.h".}
discard "forward decl of QGraphicsSceneMoveEventPrivate"


proc constructQGraphicsSceneMoveEvent*(): QGraphicsSceneMoveEvent {.constructor,
    importcpp: "QGraphicsSceneMoveEvent(@)", header: "qgraphicssceneevent.h".}
proc destroyQGraphicsSceneMoveEvent*(this: var QGraphicsSceneMoveEvent) {.
    importcpp: "#.~QGraphicsSceneMoveEvent()", header: "qgraphicssceneevent.h".}
proc oldPos*(this: QGraphicsSceneMoveEvent): QPointF {.noSideEffect,
    importcpp: "oldPos", header: "qgraphicssceneevent.h".}
proc setOldPos*(this: var QGraphicsSceneMoveEvent; pos: QPointF) {.
    importcpp: "setOldPos", header: "qgraphicssceneevent.h".}
proc newPos*(this: QGraphicsSceneMoveEvent): QPointF {.noSideEffect,
    importcpp: "newPos", header: "qgraphicssceneevent.h".}
proc setNewPos*(this: var QGraphicsSceneMoveEvent; pos: QPointF) {.
    importcpp: "setNewPos", header: "qgraphicssceneevent.h".}
when not defined(QT_NO_DEBUG_STREAM):
  proc `<<`*(a1: QDebug; a2: ptr QGraphicsSceneEvent): QDebug {.importcpp: "(# << #)",
      header: "qgraphicssceneevent.h".}
