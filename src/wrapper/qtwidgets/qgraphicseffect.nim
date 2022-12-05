import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(graphicseffect)
discard "forward decl of QGraphicsItem"
discard "forward decl of QStyleOption"
discard "forward decl of QPainter"
discard "forward decl of QPixmap"
discard "forward decl of QGraphicsEffectSource"
discard "forward decl of QGraphicsEffectPrivate"





proc constructQGraphicsEffect*(parent: ptr QObject = nil): QGraphicsEffect {.
    constructor, importcpp: "QGraphicsEffect(@)", header: "qgraphicseffect.h".}
proc destroyQGraphicsEffect*(this: var QGraphicsEffect) {.
    importcpp: "#.~QGraphicsEffect()", header: "qgraphicseffect.h".}
proc boundingRectFor*(this: QGraphicsEffect; sourceRect: QRectF): QRectF {.
    noSideEffect, importcpp: "boundingRectFor", header: "qgraphicseffect.h".}
proc boundingRect*(this: QGraphicsEffect): QRectF {.noSideEffect,
    importcpp: "boundingRect", header: "qgraphicseffect.h".}
proc isEnabled*(this: QGraphicsEffect): bool {.noSideEffect, importcpp: "isEnabled",
    header: "qgraphicseffect.h".}
proc setEnabled*(this: var QGraphicsEffect; enable: bool) {.importcpp: "setEnabled",
    header: "qgraphicseffect.h".}
proc update*(this: var QGraphicsEffect) {.importcpp: "update",
                                      header: "qgraphicseffect.h".}
proc source*(this: QGraphicsEffect): ptr QGraphicsEffectSource {.noSideEffect,
    importcpp: "source", header: "qgraphicseffect.h".}
discard "forward decl of QGraphicsColorizeEffectPrivate"


proc constructQGraphicsColorizeEffect*(parent: ptr QObject = nil): QGraphicsColorizeEffect {.
    constructor, importcpp: "QGraphicsColorizeEffect(@)",
    header: "qgraphicseffect.h".}
proc destroyQGraphicsColorizeEffect*(this: var QGraphicsColorizeEffect) {.
    importcpp: "#.~QGraphicsColorizeEffect()", header: "qgraphicseffect.h".}
proc color*(this: QGraphicsColorizeEffect): QColor {.noSideEffect,
    importcpp: "color", header: "qgraphicseffect.h".}
proc strength*(this: QGraphicsColorizeEffect): Qreal {.noSideEffect,
    importcpp: "strength", header: "qgraphicseffect.h".}
proc setColor*(this: var QGraphicsColorizeEffect; c: QColor) {.importcpp: "setColor",
    header: "qgraphicseffect.h".}
proc setStrength*(this: var QGraphicsColorizeEffect; strength: Qreal) {.
    importcpp: "setStrength", header: "qgraphicseffect.h".}
discard "forward decl of QGraphicsBlurEffectPrivate"



proc constructQGraphicsBlurEffect*(parent: ptr QObject = nil): QGraphicsBlurEffect {.
    constructor, importcpp: "QGraphicsBlurEffect(@)", header: "qgraphicseffect.h".}
proc destroyQGraphicsBlurEffect*(this: var QGraphicsBlurEffect) {.
    importcpp: "#.~QGraphicsBlurEffect()", header: "qgraphicseffect.h".}
proc boundingRectFor*(this: QGraphicsBlurEffect; rect: QRectF): QRectF {.noSideEffect,
    importcpp: "boundingRectFor", header: "qgraphicseffect.h".}
proc blurRadius*(this: QGraphicsBlurEffect): Qreal {.noSideEffect,
    importcpp: "blurRadius", header: "qgraphicseffect.h".}
proc blurHints*(this: QGraphicsBlurEffect): BlurHints {.noSideEffect,
    importcpp: "blurHints", header: "qgraphicseffect.h".}
proc setBlurRadius*(this: var QGraphicsBlurEffect; blurRadius: Qreal) {.
    importcpp: "setBlurRadius", header: "qgraphicseffect.h".}
proc setBlurHints*(this: var QGraphicsBlurEffect; hints: BlurHints) {.
    importcpp: "setBlurHints", header: "qgraphicseffect.h".}
discard "forward decl of QGraphicsDropShadowEffectPrivate"


proc constructQGraphicsDropShadowEffect*(parent: ptr QObject = nil): QGraphicsDropShadowEffect {.
    constructor, importcpp: "QGraphicsDropShadowEffect(@)",
    header: "qgraphicseffect.h".}
proc destroyQGraphicsDropShadowEffect*(this: var QGraphicsDropShadowEffect) {.
    importcpp: "#.~QGraphicsDropShadowEffect()", header: "qgraphicseffect.h".}
proc boundingRectFor*(this: QGraphicsDropShadowEffect; rect: QRectF): QRectF {.
    noSideEffect, importcpp: "boundingRectFor", header: "qgraphicseffect.h".}
proc offset*(this: QGraphicsDropShadowEffect): QPointF {.noSideEffect,
    importcpp: "offset", header: "qgraphicseffect.h".}
proc xOffset*(this: QGraphicsDropShadowEffect): Qreal {.noSideEffect,
    importcpp: "xOffset", header: "qgraphicseffect.h".}
proc yOffset*(this: QGraphicsDropShadowEffect): Qreal {.noSideEffect,
    importcpp: "yOffset", header: "qgraphicseffect.h".}
proc blurRadius*(this: QGraphicsDropShadowEffect): Qreal {.noSideEffect,
    importcpp: "blurRadius", header: "qgraphicseffect.h".}
proc color*(this: QGraphicsDropShadowEffect): QColor {.noSideEffect,
    importcpp: "color", header: "qgraphicseffect.h".}
proc setOffset*(this: var QGraphicsDropShadowEffect; ofs: QPointF) {.
    importcpp: "setOffset", header: "qgraphicseffect.h".}
proc setOffset*(this: var QGraphicsDropShadowEffect; dx: Qreal; dy: Qreal) {.
    importcpp: "setOffset", header: "qgraphicseffect.h".}
proc setOffset*(this: var QGraphicsDropShadowEffect; d: Qreal) {.
    importcpp: "setOffset", header: "qgraphicseffect.h".}
proc setXOffset*(this: var QGraphicsDropShadowEffect; dx: Qreal) {.
    importcpp: "setXOffset", header: "qgraphicseffect.h".}
proc setYOffset*(this: var QGraphicsDropShadowEffect; dy: Qreal) {.
    importcpp: "setYOffset", header: "qgraphicseffect.h".}
proc setBlurRadius*(this: var QGraphicsDropShadowEffect; blurRadius: Qreal) {.
    importcpp: "setBlurRadius", header: "qgraphicseffect.h".}
proc setColor*(this: var QGraphicsDropShadowEffect; color: QColor) {.
    importcpp: "setColor", header: "qgraphicseffect.h".}
discard "forward decl of QGraphicsOpacityEffectPrivate"


proc constructQGraphicsOpacityEffect*(parent: ptr QObject = nil): QGraphicsOpacityEffect {.
    constructor, importcpp: "QGraphicsOpacityEffect(@)",
    header: "qgraphicseffect.h".}
proc destroyQGraphicsOpacityEffect*(this: var QGraphicsOpacityEffect) {.
    importcpp: "#.~QGraphicsOpacityEffect()", header: "qgraphicseffect.h".}
proc opacity*(this: QGraphicsOpacityEffect): Qreal {.noSideEffect,
    importcpp: "opacity", header: "qgraphicseffect.h".}
proc opacityMask*(this: QGraphicsOpacityEffect): QBrush {.noSideEffect,
    importcpp: "opacityMask", header: "qgraphicseffect.h".}
proc setOpacity*(this: var QGraphicsOpacityEffect; opacity: Qreal) {.
    importcpp: "setOpacity", header: "qgraphicseffect.h".}
proc setOpacityMask*(this: var QGraphicsOpacityEffect; mask: QBrush) {.
    importcpp: "setOpacityMask", header: "qgraphicseffect.h".}
