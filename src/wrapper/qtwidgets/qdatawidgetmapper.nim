import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

import
  qtCore/qobject

qt_Require_Config(datawidgetmapper)
discard "forward decl of QAbstractItemDelegate"
discard "forward decl of QAbstractItemModel"
discard "forward decl of QModelIndex"
discard "forward decl of QDataWidgetMapperPrivate"


proc constructQDataWidgetMapper*(parent: ptr QObject = nil): QDataWidgetMapper {.
    constructor, importcpp: "QDataWidgetMapper(@)", header: "qdatawidgetmapper.h".}
proc destroyQDataWidgetMapper*(this: var QDataWidgetMapper) {.
    importcpp: "#.~QDataWidgetMapper()", header: "qdatawidgetmapper.h".}
proc setModel*(this: var QDataWidgetMapper; model: ptr QAbstractItemModel) {.
    importcpp: "setModel", header: "qdatawidgetmapper.h".}
proc model*(this: QDataWidgetMapper): ptr QAbstractItemModel {.noSideEffect,
    importcpp: "model", header: "qdatawidgetmapper.h".}
proc setItemDelegate*(this: var QDataWidgetMapper;
                     delegate: ptr QAbstractItemDelegate) {.
    importcpp: "setItemDelegate", header: "qdatawidgetmapper.h".}
proc itemDelegate*(this: QDataWidgetMapper): ptr QAbstractItemDelegate {.
    noSideEffect, importcpp: "itemDelegate", header: "qdatawidgetmapper.h".}
proc setRootIndex*(this: var QDataWidgetMapper; index: QModelIndex) {.
    importcpp: "setRootIndex", header: "qdatawidgetmapper.h".}
proc rootIndex*(this: QDataWidgetMapper): QModelIndex {.noSideEffect,
    importcpp: "rootIndex", header: "qdatawidgetmapper.h".}
proc setOrientation*(this: var QDataWidgetMapper; aOrientation: Orientation) {.
    importcpp: "setOrientation", header: "qdatawidgetmapper.h".}
proc orientation*(this: QDataWidgetMapper): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qdatawidgetmapper.h".}


proc setSubmitPolicy*(this: var QDataWidgetMapper;
                     policy: QDataWidgetMapperSubmitPolicy) {.
    importcpp: "setSubmitPolicy", header: "qdatawidgetmapper.h".}
proc submitPolicy*(this: QDataWidgetMapper): QDataWidgetMapperSubmitPolicy {.
    noSideEffect, importcpp: "submitPolicy", header: "qdatawidgetmapper.h".}
proc addMapping*(this: var QDataWidgetMapper; widget: ptr QWidget; section: cint) {.
    importcpp: "addMapping", header: "qdatawidgetmapper.h".}
proc addMapping*(this: var QDataWidgetMapper; widget: ptr QWidget; section: cint;
                propertyName: QByteArray) {.importcpp: "addMapping",
    header: "qdatawidgetmapper.h".}
proc removeMapping*(this: var QDataWidgetMapper; widget: ptr QWidget) {.
    importcpp: "removeMapping", header: "qdatawidgetmapper.h".}
proc mappedSection*(this: QDataWidgetMapper; widget: ptr QWidget): cint {.noSideEffect,
    importcpp: "mappedSection", header: "qdatawidgetmapper.h".}
proc mappedPropertyName*(this: QDataWidgetMapper; widget: ptr QWidget): QByteArray {.
    noSideEffect, importcpp: "mappedPropertyName", header: "qdatawidgetmapper.h".}
proc mappedWidgetAt*(this: QDataWidgetMapper; section: cint): ptr QWidget {.
    noSideEffect, importcpp: "mappedWidgetAt", header: "qdatawidgetmapper.h".}
proc clearMapping*(this: var QDataWidgetMapper) {.importcpp: "clearMapping",
    header: "qdatawidgetmapper.h".}
proc currentIndex*(this: QDataWidgetMapper): cint {.noSideEffect,
    importcpp: "currentIndex", header: "qdatawidgetmapper.h".}
proc revert*(this: var QDataWidgetMapper) {.importcpp: "revert",
                                        header: "qdatawidgetmapper.h".}
proc submit*(this: var QDataWidgetMapper): bool {.importcpp: "submit",
    header: "qdatawidgetmapper.h".}
proc toFirst*(this: var QDataWidgetMapper) {.importcpp: "toFirst",
    header: "qdatawidgetmapper.h".}
proc toLast*(this: var QDataWidgetMapper) {.importcpp: "toLast",
                                        header: "qdatawidgetmapper.h".}
proc toNext*(this: var QDataWidgetMapper) {.importcpp: "toNext",
                                        header: "qdatawidgetmapper.h".}
proc toPrevious*(this: var QDataWidgetMapper) {.importcpp: "toPrevious",
    header: "qdatawidgetmapper.h".}
proc setCurrentIndex*(this: var QDataWidgetMapper; index: cint) {.
    importcpp: "setCurrentIndex", header: "qdatawidgetmapper.h".}
proc setCurrentModelIndex*(this: var QDataWidgetMapper; index: QModelIndex) {.
    importcpp: "setCurrentModelIndex", header: "qdatawidgetmapper.h".}
