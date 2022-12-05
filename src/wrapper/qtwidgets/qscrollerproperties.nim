##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(scroller)
discard "forward decl of QScroller"
discard "forward decl of QScrollerPrivate"
discard "forward decl of QScrollerPropertiesPrivate"
type
  QScrollerProperties* {.importcpp: "QScrollerProperties",
                        header: "qscrollerproperties.h", bycopy.} = object


proc constructQScrollerProperties*(): QScrollerProperties {.constructor,
    importcpp: "QScrollerProperties(@)", header: "qscrollerproperties.h".}
proc constructQScrollerProperties*(sp: QScrollerProperties): QScrollerProperties {.
    constructor, importcpp: "QScrollerProperties(@)",
    header: "qscrollerproperties.h".}
proc destroyQScrollerProperties*(this: var QScrollerProperties) {.
    importcpp: "#.~QScrollerProperties()", header: "qscrollerproperties.h".}
proc `==`*(this: QScrollerProperties; sp: QScrollerProperties): bool {.noSideEffect,
    importcpp: "(# == #)", header: "qscrollerproperties.h".}
proc setDefaultScrollerProperties*(sp: QScrollerProperties) {.
    importcpp: "QScrollerProperties::setDefaultScrollerProperties(@)",
    header: "qscrollerproperties.h".}
proc unsetDefaultScrollerProperties*() {.importcpp: "QScrollerProperties::unsetDefaultScrollerProperties(@)",
                                       header: "qscrollerproperties.h".}
type
  QScrollerPropertiesOvershootPolicy* {.size: sizeof(cint), importcpp: "QScrollerProperties::OvershootPolicy",
                                       header: "qscrollerproperties.h".} = enum
    OvershootWhenScrollable, OvershootAlwaysOff, OvershootAlwaysOn


type
  QScrollerPropertiesFrameRates* {.size: sizeof(cint),
                                  importcpp: "QScrollerProperties::FrameRates",
                                  header: "qscrollerproperties.h".} = enum
    Standard, Fps60, Fps30, Fps20


type
  QScrollerPropertiesScrollMetric* {.size: sizeof(cint), importcpp: "QScrollerProperties::ScrollMetric",
                                    header: "qscrollerproperties.h".} = enum
    MousePressEventDelay,     ##  qreal [s]
    DragStartDistance,        ##  qreal [m]
    DragVelocitySmoothingFactor, ##  qreal [0..1/s]  (complex calculation involving time) v = v_new* DASF + v_old * (1-DASF)
    AxisLockThreshold,        ##  qreal [0..1] atan(|min(dx,dy)|/|max(dx,dy)|)
    ScrollingCurve,           ##  QEasingCurve
    DecelerationFactor,       ##  slope of the curve
    MinimumVelocity,          ##  qreal [m/s]
    MaximumVelocity,          ##  qreal [m/s]
    MaximumClickThroughVelocity, ##  qreal [m/s]
    AcceleratingFlickMaximumTime, ##  qreal [s]
    AcceleratingFlickSpeedupFactor, ##  qreal [1..]
    SnapPositionRatio,        ##  qreal [0..1]
    SnapTime,                 ##  qreal [s]
    OvershootDragResistanceFactor, ##  qreal [0..1]
    OvershootDragDistanceFactor, ##  qreal [0..1]
    OvershootScrollDistanceFactor, ##  qreal [0..1]
    OvershootScrollTime,      ##  qreal [s]
    HorizontalOvershootPolicy, ##  enum OvershootPolicy
    VerticalOvershootPolicy,  ##  enum OvershootPolicy
    FrameRate,                ##  enum FrameRates
    ScrollMetricCount


proc scrollMetric*(this: QScrollerProperties;
                  metric: QScrollerPropertiesScrollMetric): QVariant {.
    noSideEffect, importcpp: "scrollMetric", header: "qscrollerproperties.h".}
proc setScrollMetric*(this: var QScrollerProperties;
                     metric: QScrollerPropertiesScrollMetric; value: QVariant) {.
    importcpp: "setScrollMetric", header: "qscrollerproperties.h".}