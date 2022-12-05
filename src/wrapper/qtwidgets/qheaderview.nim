##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(itemviews)
discard "forward decl of QHeaderViewPrivate"
discard "forward decl of QStyleOptionHeader"
type
  QHeaderView* {.importcpp: "QHeaderView", header: "qheaderview.h", bycopy.} = object of QAbstractItemView

  QHeaderViewResizeMode* {.size: sizeof(cint),
                          importcpp: "QHeaderView::ResizeMode",
                          header: "qheaderview.h".} = enum
    Interactive, Stretch, Fixed, ResizeToContents, Custom = fixed


proc constructQHeaderView*(orientation: Orientation; parent: ptr QWidget = nil): QHeaderView {.
    constructor, importcpp: "QHeaderView(@)", header: "qheaderview.h".}
proc destroyQHeaderView*(this: var QHeaderView) {.importcpp: "#.~QHeaderView()",
    header: "qheaderview.h".}
proc setModel*(this: var QHeaderView; model: ptr QAbstractItemModel) {.
    importcpp: "setModel", header: "qheaderview.h".}
proc orientation*(this: QHeaderView): Orientation {.noSideEffect,
    importcpp: "orientation", header: "qheaderview.h".}
proc offset*(this: QHeaderView): cint {.noSideEffect, importcpp: "offset",
                                    header: "qheaderview.h".}
proc length*(this: QHeaderView): cint {.noSideEffect, importcpp: "length",
                                    header: "qheaderview.h".}
proc sizeHint*(this: QHeaderView): QSize {.noSideEffect, importcpp: "sizeHint",
                                       header: "qheaderview.h".}
proc setVisible*(this: var QHeaderView; v: bool) {.importcpp: "setVisible",
    header: "qheaderview.h".}
proc sectionSizeHint*(this: QHeaderView; logicalIndex: cint): cint {.noSideEffect,
    importcpp: "sectionSizeHint", header: "qheaderview.h".}
proc visualIndexAt*(this: QHeaderView; position: cint): cint {.noSideEffect,
    importcpp: "visualIndexAt", header: "qheaderview.h".}
proc logicalIndexAt*(this: QHeaderView; position: cint): cint {.noSideEffect,
    importcpp: "logicalIndexAt", header: "qheaderview.h".}
proc logicalIndexAt*(this: QHeaderView; x: cint; y: cint): cint {.noSideEffect,
    importcpp: "logicalIndexAt", header: "qheaderview.h".}
proc logicalIndexAt*(this: QHeaderView; pos: QPoint): cint {.noSideEffect,
    importcpp: "logicalIndexAt", header: "qheaderview.h".}
proc sectionSize*(this: QHeaderView; logicalIndex: cint): cint {.noSideEffect,
    importcpp: "sectionSize", header: "qheaderview.h".}
proc sectionPosition*(this: QHeaderView; logicalIndex: cint): cint {.noSideEffect,
    importcpp: "sectionPosition", header: "qheaderview.h".}
proc sectionViewportPosition*(this: QHeaderView; logicalIndex: cint): cint {.
    noSideEffect, importcpp: "sectionViewportPosition", header: "qheaderview.h".}
proc moveSection*(this: var QHeaderView; `from`: cint; to: cint) {.
    importcpp: "moveSection", header: "qheaderview.h".}
proc swapSections*(this: var QHeaderView; first: cint; second: cint) {.
    importcpp: "swapSections", header: "qheaderview.h".}
proc resizeSection*(this: var QHeaderView; logicalIndex: cint; size: cint) {.
    importcpp: "resizeSection", header: "qheaderview.h".}
proc resizeSections*(this: var QHeaderView; mode: QHeaderViewResizeMode) {.
    importcpp: "resizeSections", header: "qheaderview.h".}
proc isSectionHidden*(this: QHeaderView; logicalIndex: cint): bool {.noSideEffect,
    importcpp: "isSectionHidden", header: "qheaderview.h".}
proc setSectionHidden*(this: var QHeaderView; logicalIndex: cint; hide: bool) {.
    importcpp: "setSectionHidden", header: "qheaderview.h".}
proc hiddenSectionCount*(this: QHeaderView): cint {.noSideEffect,
    importcpp: "hiddenSectionCount", header: "qheaderview.h".}
proc hideSection*(this: var QHeaderView; logicalIndex: cint) {.
    importcpp: "hideSection", header: "qheaderview.h".}
proc showSection*(this: var QHeaderView; logicalIndex: cint) {.
    importcpp: "showSection", header: "qheaderview.h".}
proc count*(this: QHeaderView): cint {.noSideEffect, importcpp: "count",
                                   header: "qheaderview.h".}
proc visualIndex*(this: QHeaderView; logicalIndex: cint): cint {.noSideEffect,
    importcpp: "visualIndex", header: "qheaderview.h".}
proc logicalIndex*(this: QHeaderView; visualIndex: cint): cint {.noSideEffect,
    importcpp: "logicalIndex", header: "qheaderview.h".}
proc setSectionsMovable*(this: var QHeaderView; movable: bool) {.
    importcpp: "setSectionsMovable", header: "qheaderview.h".}
proc sectionsMovable*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "sectionsMovable", header: "qheaderview.h".}
proc setFirstSectionMovable*(this: var QHeaderView; movable: bool) {.
    importcpp: "setFirstSectionMovable", header: "qheaderview.h".}
proc isFirstSectionMovable*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "isFirstSectionMovable", header: "qheaderview.h".}
proc setSectionsClickable*(this: var QHeaderView; clickable: bool) {.
    importcpp: "setSectionsClickable", header: "qheaderview.h".}
proc sectionsClickable*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "sectionsClickable", header: "qheaderview.h".}
proc setHighlightSections*(this: var QHeaderView; highlight: bool) {.
    importcpp: "setHighlightSections", header: "qheaderview.h".}
proc highlightSections*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "highlightSections", header: "qheaderview.h".}
proc sectionResizeMode*(this: QHeaderView; logicalIndex: cint): QHeaderViewResizeMode {.
    noSideEffect, importcpp: "sectionResizeMode", header: "qheaderview.h".}
proc setSectionResizeMode*(this: var QHeaderView; mode: QHeaderViewResizeMode) {.
    importcpp: "setSectionResizeMode", header: "qheaderview.h".}
proc setSectionResizeMode*(this: var QHeaderView; logicalIndex: cint;
                          mode: QHeaderViewResizeMode) {.
    importcpp: "setSectionResizeMode", header: "qheaderview.h".}
proc setResizeContentsPrecision*(this: var QHeaderView; precision: cint) {.
    importcpp: "setResizeContentsPrecision", header: "qheaderview.h".}
proc resizeContentsPrecision*(this: QHeaderView): cint {.noSideEffect,
    importcpp: "resizeContentsPrecision", header: "qheaderview.h".}
proc stretchSectionCount*(this: QHeaderView): cint {.noSideEffect,
    importcpp: "stretchSectionCount", header: "qheaderview.h".}
proc setSortIndicatorShown*(this: var QHeaderView; show: bool) {.
    importcpp: "setSortIndicatorShown", header: "qheaderview.h".}
proc isSortIndicatorShown*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "isSortIndicatorShown", header: "qheaderview.h".}
proc setSortIndicator*(this: var QHeaderView; logicalIndex: cint; order: SortOrder) {.
    importcpp: "setSortIndicator", header: "qheaderview.h".}
proc sortIndicatorSection*(this: QHeaderView): cint {.noSideEffect,
    importcpp: "sortIndicatorSection", header: "qheaderview.h".}
proc sortIndicatorOrder*(this: QHeaderView): SortOrder {.noSideEffect,
    importcpp: "sortIndicatorOrder", header: "qheaderview.h".}
proc setSortIndicatorClearable*(this: var QHeaderView; clearable: bool) {.
    importcpp: "setSortIndicatorClearable", header: "qheaderview.h".}
proc isSortIndicatorClearable*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "isSortIndicatorClearable", header: "qheaderview.h".}
proc stretchLastSection*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "stretchLastSection", header: "qheaderview.h".}
proc setStretchLastSection*(this: var QHeaderView; stretch: bool) {.
    importcpp: "setStretchLastSection", header: "qheaderview.h".}
proc cascadingSectionResizes*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "cascadingSectionResizes", header: "qheaderview.h".}
proc setCascadingSectionResizes*(this: var QHeaderView; enable: bool) {.
    importcpp: "setCascadingSectionResizes", header: "qheaderview.h".}
proc defaultSectionSize*(this: QHeaderView): cint {.noSideEffect,
    importcpp: "defaultSectionSize", header: "qheaderview.h".}
proc setDefaultSectionSize*(this: var QHeaderView; size: cint) {.
    importcpp: "setDefaultSectionSize", header: "qheaderview.h".}
proc resetDefaultSectionSize*(this: var QHeaderView) {.
    importcpp: "resetDefaultSectionSize", header: "qheaderview.h".}
proc minimumSectionSize*(this: QHeaderView): cint {.noSideEffect,
    importcpp: "minimumSectionSize", header: "qheaderview.h".}
proc setMinimumSectionSize*(this: var QHeaderView; size: cint) {.
    importcpp: "setMinimumSectionSize", header: "qheaderview.h".}
proc maximumSectionSize*(this: QHeaderView): cint {.noSideEffect,
    importcpp: "maximumSectionSize", header: "qheaderview.h".}
proc setMaximumSectionSize*(this: var QHeaderView; size: cint) {.
    importcpp: "setMaximumSectionSize", header: "qheaderview.h".}
proc defaultAlignment*(this: QHeaderView): Alignment {.noSideEffect,
    importcpp: "defaultAlignment", header: "qheaderview.h".}
proc setDefaultAlignment*(this: var QHeaderView; alignment: Alignment) {.
    importcpp: "setDefaultAlignment", header: "qheaderview.h".}
proc doItemsLayout*(this: var QHeaderView) {.importcpp: "doItemsLayout",
    header: "qheaderview.h".}
proc sectionsMoved*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "sectionsMoved", header: "qheaderview.h".}
proc sectionsHidden*(this: QHeaderView): bool {.noSideEffect,
    importcpp: "sectionsHidden", header: "qheaderview.h".}
when not defined(QT_NO_DATASTREAM):
  proc saveState*(this: QHeaderView): QByteArray {.noSideEffect,
      importcpp: "saveState", header: "qheaderview.h".}
when not defined(QT_NO_DATASTREAM):
  proc restoreState*(this: var QHeaderView; state: QByteArray): bool {.
      importcpp: "restoreState", header: "qheaderview.h".}
proc reset*(this: var QHeaderView) {.importcpp: "reset", header: "qheaderview.h".}
proc setOffset*(this: var QHeaderView; offset: cint) {.importcpp: "setOffset",
    header: "qheaderview.h".}
proc setOffsetToSectionPosition*(this: var QHeaderView; visualIndex: cint) {.
    importcpp: "setOffsetToSectionPosition", header: "qheaderview.h".}
proc setOffsetToLastSection*(this: var QHeaderView) {.
    importcpp: "setOffsetToLastSection", header: "qheaderview.h".}
proc headerDataChanged*(this: var QHeaderView; orientation: Orientation;
                       logicalFirst: cint; logicalLast: cint) {.
    importcpp: "headerDataChanged", header: "qheaderview.h".}
proc logicalIndexAt*(this: QHeaderView; ax: cint; ay: cint): cint {.noSideEffect,
    importcpp: "logicalIndexAt", header: "qheaderview.h".}
proc logicalIndexAt*(this: QHeaderView; apos: QPoint): cint {.noSideEffect,
    importcpp: "logicalIndexAt", header: "qheaderview.h".}
proc hideSection*(this: var QHeaderView; alogicalIndex: cint) {.
    importcpp: "hideSection", header: "qheaderview.h".}
proc showSection*(this: var QHeaderView; alogicalIndex: cint) {.
    importcpp: "showSection", header: "qheaderview.h".}