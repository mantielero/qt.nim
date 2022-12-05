import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(scroller)
discard "forward decl of QScroller"
discard "forward decl of QScrollerPrivate"
discard "forward decl of QScrollerPropertiesPrivate"


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






proc scrollMetric*(this: QScrollerProperties;
                  metric: QScrollerPropertiesScrollMetric): QVariant {.
    noSideEffect, importcpp: "scrollMetric", header: "qscrollerproperties.h".}
proc setScrollMetric*(this: var QScrollerProperties;
                     metric: QScrollerPropertiesScrollMetric; value: QVariant) {.
    importcpp: "setScrollMetric", header: "qscrollerproperties.h".}
