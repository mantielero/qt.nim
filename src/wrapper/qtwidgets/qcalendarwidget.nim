##  Copyright (C) 2020 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(calendarwidget)
discard "forward decl of QDate"
discard "forward decl of QTextCharFormat"
discard "forward decl of QCalendarWidgetPrivate"
type
  QCalendarWidget* {.importcpp: "QCalendarWidget", header: "qcalendarwidget.h",
                    bycopy.} = object of QWidget

  QCalendarWidgetHorizontalHeaderFormat* {.size: sizeof(cint),
      importcpp: "QCalendarWidget::HorizontalHeaderFormat",
      header: "qcalendarwidget.h".} = enum
    NoHorizontalHeader, SingleLetterDayNames, ShortDayNames, LongDayNames


type
  QCalendarWidgetVerticalHeaderFormat* {.size: sizeof(cint), importcpp: "QCalendarWidget::VerticalHeaderFormat",
                                        header: "qcalendarwidget.h".} = enum
    NoVerticalHeader, ISOWeekNumbers


type
  QCalendarWidgetSelectionMode* {.size: sizeof(cint),
                                 importcpp: "QCalendarWidget::SelectionMode",
                                 header: "qcalendarwidget.h".} = enum
    NoSelection, SingleSelection


proc constructQCalendarWidget*(parent: ptr QWidget = nil): QCalendarWidget {.
    constructor, importcpp: "QCalendarWidget(@)", header: "qcalendarwidget.h".}
proc destroyQCalendarWidget*(this: var QCalendarWidget) {.
    importcpp: "#.~QCalendarWidget()", header: "qcalendarwidget.h".}
proc sizeHint*(this: QCalendarWidget): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qcalendarwidget.h".}
proc minimumSizeHint*(this: QCalendarWidget): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qcalendarwidget.h".}
proc selectedDate*(this: QCalendarWidget): QDate {.noSideEffect,
    importcpp: "selectedDate", header: "qcalendarwidget.h".}
proc yearShown*(this: QCalendarWidget): cint {.noSideEffect, importcpp: "yearShown",
    header: "qcalendarwidget.h".}
proc monthShown*(this: QCalendarWidget): cint {.noSideEffect,
    importcpp: "monthShown", header: "qcalendarwidget.h".}
proc minimumDate*(this: QCalendarWidget): QDate {.noSideEffect,
    importcpp: "minimumDate", header: "qcalendarwidget.h".}
proc setMinimumDate*(this: var QCalendarWidget; date: QDate) {.
    importcpp: "setMinimumDate", header: "qcalendarwidget.h".}
proc maximumDate*(this: QCalendarWidget): QDate {.noSideEffect,
    importcpp: "maximumDate", header: "qcalendarwidget.h".}
proc setMaximumDate*(this: var QCalendarWidget; date: QDate) {.
    importcpp: "setMaximumDate", header: "qcalendarwidget.h".}
proc firstDayOfWeek*(this: QCalendarWidget): DayOfWeek {.noSideEffect,
    importcpp: "firstDayOfWeek", header: "qcalendarwidget.h".}
proc setFirstDayOfWeek*(this: var QCalendarWidget; dayOfWeek: DayOfWeek) {.
    importcpp: "setFirstDayOfWeek", header: "qcalendarwidget.h".}
proc isNavigationBarVisible*(this: QCalendarWidget): bool {.noSideEffect,
    importcpp: "isNavigationBarVisible", header: "qcalendarwidget.h".}
proc isGridVisible*(this: QCalendarWidget): bool {.noSideEffect,
    importcpp: "isGridVisible", header: "qcalendarwidget.h".}
proc calendar*(this: QCalendarWidget): QCalendar {.noSideEffect,
    importcpp: "calendar", header: "qcalendarwidget.h".}
proc setCalendar*(this: var QCalendarWidget; calendar: QCalendar) {.
    importcpp: "setCalendar", header: "qcalendarwidget.h".}
proc selectionMode*(this: QCalendarWidget): QCalendarWidgetSelectionMode {.
    noSideEffect, importcpp: "selectionMode", header: "qcalendarwidget.h".}
proc setSelectionMode*(this: var QCalendarWidget; mode: QCalendarWidgetSelectionMode) {.
    importcpp: "setSelectionMode", header: "qcalendarwidget.h".}
proc horizontalHeaderFormat*(this: QCalendarWidget): QCalendarWidgetHorizontalHeaderFormat {.
    noSideEffect, importcpp: "horizontalHeaderFormat", header: "qcalendarwidget.h".}
proc setHorizontalHeaderFormat*(this: var QCalendarWidget;
                               format: QCalendarWidgetHorizontalHeaderFormat) {.
    importcpp: "setHorizontalHeaderFormat", header: "qcalendarwidget.h".}
proc verticalHeaderFormat*(this: QCalendarWidget): QCalendarWidgetVerticalHeaderFormat {.
    noSideEffect, importcpp: "verticalHeaderFormat", header: "qcalendarwidget.h".}
proc setVerticalHeaderFormat*(this: var QCalendarWidget;
                             format: QCalendarWidgetVerticalHeaderFormat) {.
    importcpp: "setVerticalHeaderFormat", header: "qcalendarwidget.h".}
proc headerTextFormat*(this: QCalendarWidget): QTextCharFormat {.noSideEffect,
    importcpp: "headerTextFormat", header: "qcalendarwidget.h".}
proc setHeaderTextFormat*(this: var QCalendarWidget; format: QTextCharFormat) {.
    importcpp: "setHeaderTextFormat", header: "qcalendarwidget.h".}
proc weekdayTextFormat*(this: QCalendarWidget; dayOfWeek: DayOfWeek): QTextCharFormat {.
    noSideEffect, importcpp: "weekdayTextFormat", header: "qcalendarwidget.h".}
proc setWeekdayTextFormat*(this: var QCalendarWidget; dayOfWeek: DayOfWeek;
                          format: QTextCharFormat) {.
    importcpp: "setWeekdayTextFormat", header: "qcalendarwidget.h".}
proc dateTextFormat*(this: QCalendarWidget): QMap[QDate, QTextCharFormat] {.
    noSideEffect, importcpp: "dateTextFormat", header: "qcalendarwidget.h".}
proc dateTextFormat*(this: QCalendarWidget; date: QDate): QTextCharFormat {.
    noSideEffect, importcpp: "dateTextFormat", header: "qcalendarwidget.h".}
proc setDateTextFormat*(this: var QCalendarWidget; date: QDate;
                       format: QTextCharFormat) {.importcpp: "setDateTextFormat",
    header: "qcalendarwidget.h".}
proc isDateEditEnabled*(this: QCalendarWidget): bool {.noSideEffect,
    importcpp: "isDateEditEnabled", header: "qcalendarwidget.h".}
proc setDateEditEnabled*(this: var QCalendarWidget; enable: bool) {.
    importcpp: "setDateEditEnabled", header: "qcalendarwidget.h".}
proc dateEditAcceptDelay*(this: QCalendarWidget): cint {.noSideEffect,
    importcpp: "dateEditAcceptDelay", header: "qcalendarwidget.h".}
proc setDateEditAcceptDelay*(this: var QCalendarWidget; delay: cint) {.
    importcpp: "setDateEditAcceptDelay", header: "qcalendarwidget.h".}
proc setSelectedDate*(this: var QCalendarWidget; date: QDate) {.
    importcpp: "setSelectedDate", header: "qcalendarwidget.h".}
proc setDateRange*(this: var QCalendarWidget; min: QDate; max: QDate) {.
    importcpp: "setDateRange", header: "qcalendarwidget.h".}
proc setCurrentPage*(this: var QCalendarWidget; year: cint; month: cint) {.
    importcpp: "setCurrentPage", header: "qcalendarwidget.h".}
proc setGridVisible*(this: var QCalendarWidget; show: bool) {.
    importcpp: "setGridVisible", header: "qcalendarwidget.h".}
proc setNavigationBarVisible*(this: var QCalendarWidget; visible: bool) {.
    importcpp: "setNavigationBarVisible", header: "qcalendarwidget.h".}
proc showNextMonth*(this: var QCalendarWidget) {.importcpp: "showNextMonth",
    header: "qcalendarwidget.h".}
proc showPreviousMonth*(this: var QCalendarWidget) {.importcpp: "showPreviousMonth",
    header: "qcalendarwidget.h".}
proc showNextYear*(this: var QCalendarWidget) {.importcpp: "showNextYear",
    header: "qcalendarwidget.h".}
proc showPreviousYear*(this: var QCalendarWidget) {.importcpp: "showPreviousYear",
    header: "qcalendarwidget.h".}
proc showSelectedDate*(this: var QCalendarWidget) {.importcpp: "showSelectedDate",
    header: "qcalendarwidget.h".}
proc showToday*(this: var QCalendarWidget) {.importcpp: "showToday",
    header: "qcalendarwidget.h".}