##  Copyright (C) 2020 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(datetimeedit)
discard "forward decl of QDateTimeEditPrivate"
discard "forward decl of QStyleOptionSpinBox"
discard "forward decl of QCalendarWidget"
type
  QDateTimeEdit* {.importcpp: "QDateTimeEdit", header: "qdatetimeedit.h", bycopy.} = object of QAbstractSpinBox
    sections* {.importc: "Sections".}: Q_Flag

  QDateTimeEditSection* {.size: sizeof(cint), importcpp: "QDateTimeEdit::Section",
                         header: "qdatetimeedit.h".} = enum ##  a sub-type of QDateTimeParser's like-named enum.
    NoSection = 0x0000, AmPmSection = 0x0001, MSecSection = 0x0002,
    SecondSection = 0x0004, MinuteSection = 0x0008, HourSection = 0x0010,
    DaySection = 0x0100, MonthSection = 0x0200, YearSection = 0x0400, TimeSectionsMask = amPmSection or
        mSecSection or secondSection or minuteSection or hourSection,
    DateSectionsMask = daySection or monthSection or yearSection


proc constructQDateTimeEdit*(parent: ptr QWidget = nil): QDateTimeEdit {.constructor,
    importcpp: "QDateTimeEdit(@)", header: "qdatetimeedit.h".}
proc constructQDateTimeEdit*(dt: QDateTime; parent: ptr QWidget = nil): QDateTimeEdit {.
    constructor, importcpp: "QDateTimeEdit(@)", header: "qdatetimeedit.h".}
proc constructQDateTimeEdit*(d: QDate; parent: ptr QWidget = nil): QDateTimeEdit {.
    constructor, importcpp: "QDateTimeEdit(@)", header: "qdatetimeedit.h".}
proc constructQDateTimeEdit*(t: QTime; parent: ptr QWidget = nil): QDateTimeEdit {.
    constructor, importcpp: "QDateTimeEdit(@)", header: "qdatetimeedit.h".}
proc destroyQDateTimeEdit*(this: var QDateTimeEdit) {.
    importcpp: "#.~QDateTimeEdit()", header: "qdatetimeedit.h".}
proc dateTime*(this: QDateTimeEdit): QDateTime {.noSideEffect, importcpp: "dateTime",
    header: "qdatetimeedit.h".}
proc date*(this: QDateTimeEdit): QDate {.noSideEffect, importcpp: "date",
                                     header: "qdatetimeedit.h".}
proc time*(this: QDateTimeEdit): QTime {.noSideEffect, importcpp: "time",
                                     header: "qdatetimeedit.h".}
proc calendar*(this: QDateTimeEdit): QCalendar {.noSideEffect, importcpp: "calendar",
    header: "qdatetimeedit.h".}
proc setCalendar*(this: var QDateTimeEdit; calendar: QCalendar) {.
    importcpp: "setCalendar", header: "qdatetimeedit.h".}
proc minimumDateTime*(this: QDateTimeEdit): QDateTime {.noSideEffect,
    importcpp: "minimumDateTime", header: "qdatetimeedit.h".}
proc clearMinimumDateTime*(this: var QDateTimeEdit) {.
    importcpp: "clearMinimumDateTime", header: "qdatetimeedit.h".}
proc setMinimumDateTime*(this: var QDateTimeEdit; dt: QDateTime) {.
    importcpp: "setMinimumDateTime", header: "qdatetimeedit.h".}
proc maximumDateTime*(this: QDateTimeEdit): QDateTime {.noSideEffect,
    importcpp: "maximumDateTime", header: "qdatetimeedit.h".}
proc clearMaximumDateTime*(this: var QDateTimeEdit) {.
    importcpp: "clearMaximumDateTime", header: "qdatetimeedit.h".}
proc setMaximumDateTime*(this: var QDateTimeEdit; dt: QDateTime) {.
    importcpp: "setMaximumDateTime", header: "qdatetimeedit.h".}
proc setDateTimeRange*(this: var QDateTimeEdit; min: QDateTime; max: QDateTime) {.
    importcpp: "setDateTimeRange", header: "qdatetimeedit.h".}
proc minimumDate*(this: QDateTimeEdit): QDate {.noSideEffect,
    importcpp: "minimumDate", header: "qdatetimeedit.h".}
proc setMinimumDate*(this: var QDateTimeEdit; min: QDate) {.
    importcpp: "setMinimumDate", header: "qdatetimeedit.h".}
proc clearMinimumDate*(this: var QDateTimeEdit) {.importcpp: "clearMinimumDate",
    header: "qdatetimeedit.h".}
proc maximumDate*(this: QDateTimeEdit): QDate {.noSideEffect,
    importcpp: "maximumDate", header: "qdatetimeedit.h".}
proc setMaximumDate*(this: var QDateTimeEdit; max: QDate) {.
    importcpp: "setMaximumDate", header: "qdatetimeedit.h".}
proc clearMaximumDate*(this: var QDateTimeEdit) {.importcpp: "clearMaximumDate",
    header: "qdatetimeedit.h".}
proc setDateRange*(this: var QDateTimeEdit; min: QDate; max: QDate) {.
    importcpp: "setDateRange", header: "qdatetimeedit.h".}
proc minimumTime*(this: QDateTimeEdit): QTime {.noSideEffect,
    importcpp: "minimumTime", header: "qdatetimeedit.h".}
proc setMinimumTime*(this: var QDateTimeEdit; min: QTime) {.
    importcpp: "setMinimumTime", header: "qdatetimeedit.h".}
proc clearMinimumTime*(this: var QDateTimeEdit) {.importcpp: "clearMinimumTime",
    header: "qdatetimeedit.h".}
proc maximumTime*(this: QDateTimeEdit): QTime {.noSideEffect,
    importcpp: "maximumTime", header: "qdatetimeedit.h".}
proc setMaximumTime*(this: var QDateTimeEdit; max: QTime) {.
    importcpp: "setMaximumTime", header: "qdatetimeedit.h".}
proc clearMaximumTime*(this: var QDateTimeEdit) {.importcpp: "clearMaximumTime",
    header: "qdatetimeedit.h".}
proc setTimeRange*(this: var QDateTimeEdit; min: QTime; max: QTime) {.
    importcpp: "setTimeRange", header: "qdatetimeedit.h".}
proc displayedSections*(this: QDateTimeEdit): Sections {.noSideEffect,
    importcpp: "displayedSections", header: "qdatetimeedit.h".}
proc currentSection*(this: QDateTimeEdit): QDateTimeEditSection {.noSideEffect,
    importcpp: "currentSection", header: "qdatetimeedit.h".}
proc sectionAt*(this: QDateTimeEdit; index: cint): QDateTimeEditSection {.
    noSideEffect, importcpp: "sectionAt", header: "qdatetimeedit.h".}
proc setCurrentSection*(this: var QDateTimeEdit; section: QDateTimeEditSection) {.
    importcpp: "setCurrentSection", header: "qdatetimeedit.h".}
proc currentSectionIndex*(this: QDateTimeEdit): cint {.noSideEffect,
    importcpp: "currentSectionIndex", header: "qdatetimeedit.h".}
proc setCurrentSectionIndex*(this: var QDateTimeEdit; index: cint) {.
    importcpp: "setCurrentSectionIndex", header: "qdatetimeedit.h".}
proc calendarWidget*(this: QDateTimeEdit): ptr QCalendarWidget {.noSideEffect,
    importcpp: "calendarWidget", header: "qdatetimeedit.h".}
proc setCalendarWidget*(this: var QDateTimeEdit; calendarWidget: ptr QCalendarWidget) {.
    importcpp: "setCalendarWidget", header: "qdatetimeedit.h".}
proc sectionCount*(this: QDateTimeEdit): cint {.noSideEffect,
    importcpp: "sectionCount", header: "qdatetimeedit.h".}
proc setSelectedSection*(this: var QDateTimeEdit; section: QDateTimeEditSection) {.
    importcpp: "setSelectedSection", header: "qdatetimeedit.h".}
proc sectionText*(this: QDateTimeEdit; section: QDateTimeEditSection): QString {.
    noSideEffect, importcpp: "sectionText", header: "qdatetimeedit.h".}
proc displayFormat*(this: QDateTimeEdit): QString {.noSideEffect,
    importcpp: "displayFormat", header: "qdatetimeedit.h".}
proc setDisplayFormat*(this: var QDateTimeEdit; format: QString) {.
    importcpp: "setDisplayFormat", header: "qdatetimeedit.h".}
proc calendarPopup*(this: QDateTimeEdit): bool {.noSideEffect,
    importcpp: "calendarPopup", header: "qdatetimeedit.h".}
proc setCalendarPopup*(this: var QDateTimeEdit; enable: bool) {.
    importcpp: "setCalendarPopup", header: "qdatetimeedit.h".}
proc timeSpec*(this: QDateTimeEdit): TimeSpec {.noSideEffect, importcpp: "timeSpec",
    header: "qdatetimeedit.h".}
proc setTimeSpec*(this: var QDateTimeEdit; spec: TimeSpec) {.importcpp: "setTimeSpec",
    header: "qdatetimeedit.h".}
proc sizeHint*(this: QDateTimeEdit): QSize {.noSideEffect, importcpp: "sizeHint",
    header: "qdatetimeedit.h".}
proc clear*(this: var QDateTimeEdit) {.importcpp: "clear", header: "qdatetimeedit.h".}
proc stepBy*(this: var QDateTimeEdit; steps: cint) {.importcpp: "stepBy",
    header: "qdatetimeedit.h".}
proc event*(this: var QDateTimeEdit; event: ptr QEvent): bool {.importcpp: "event",
    header: "qdatetimeedit.h".}
proc setDateTime*(this: var QDateTimeEdit; dateTime: QDateTime) {.
    importcpp: "setDateTime", header: "qdatetimeedit.h".}
proc setDate*(this: var QDateTimeEdit; date: QDate) {.importcpp: "setDate",
    header: "qdatetimeedit.h".}
proc setTime*(this: var QDateTimeEdit; time: QTime) {.importcpp: "setTime",
    header: "qdatetimeedit.h".}
type
  QTimeEdit* {.importcpp: "QTimeEdit", header: "qdatetimeedit.h", bycopy.} = object of QDateTimeEdit


proc constructQTimeEdit*(parent: ptr QWidget = nil): QTimeEdit {.constructor,
    importcpp: "QTimeEdit(@)", header: "qdatetimeedit.h".}
proc constructQTimeEdit*(time: QTime; parent: ptr QWidget = nil): QTimeEdit {.
    constructor, importcpp: "QTimeEdit(@)", header: "qdatetimeedit.h".}
proc destroyQTimeEdit*(this: var QTimeEdit) {.importcpp: "#.~QTimeEdit()",
    header: "qdatetimeedit.h".}
type
  QDateEdit* {.importcpp: "QDateEdit", header: "qdatetimeedit.h", bycopy.} = object of QDateTimeEdit


proc constructQDateEdit*(parent: ptr QWidget = nil): QDateEdit {.constructor,
    importcpp: "QDateEdit(@)", header: "qdatetimeedit.h".}
proc constructQDateEdit*(date: QDate; parent: ptr QWidget = nil): QDateEdit {.
    constructor, importcpp: "QDateEdit(@)", header: "qdatetimeedit.h".}
proc destroyQDateEdit*(this: var QDateEdit) {.importcpp: "#.~QDateEdit()",
    header: "qdatetimeedit.h".}