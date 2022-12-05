##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

when not defined(QT_NO_SYSTEMTRAYICON):
  discard "forward decl of QSystemTrayIconPrivate"
  discard "forward decl of QMenu"
  discard "forward decl of QEvent"
  discard "forward decl of QWheelEvent"
  discard "forward decl of QMouseEvent"
  discard "forward decl of QPoint"
  type
    QSystemTrayIcon* {.importcpp: "QSystemTrayIcon", header: "qsystemtrayicon.h",
                      bycopy.} = object of QObject

  proc constructQSystemTrayIcon*(parent: ptr QObject = nil): QSystemTrayIcon {.
      constructor, importcpp: "QSystemTrayIcon(@)", header: "qsystemtrayicon.h".}
  proc constructQSystemTrayIcon*(icon: QIcon; parent: ptr QObject = nil): QSystemTrayIcon {.
      constructor, importcpp: "QSystemTrayIcon(@)", header: "qsystemtrayicon.h".}
  proc destroyQSystemTrayIcon*(this: var QSystemTrayIcon) {.
      importcpp: "#.~QSystemTrayIcon()", header: "qsystemtrayicon.h".}
  type
    QSystemTrayIconActivationReason* {.size: sizeof(cint), importcpp: "QSystemTrayIcon::ActivationReason",
                                      header: "qsystemtrayicon.h".} = enum
      Unknown, Context, DoubleClick, Trigger, MiddleClick
  proc setContextMenu*(this: var QSystemTrayIcon; menu: ptr QMenu) {.
      importcpp: "setContextMenu", header: "qsystemtrayicon.h".}
  proc contextMenu*(this: QSystemTrayIcon): ptr QMenu {.noSideEffect,
      importcpp: "contextMenu", header: "qsystemtrayicon.h".}
  proc icon*(this: QSystemTrayIcon): QIcon {.noSideEffect, importcpp: "icon",
      header: "qsystemtrayicon.h".}
  proc setIcon*(this: var QSystemTrayIcon; icon: QIcon) {.importcpp: "setIcon",
      header: "qsystemtrayicon.h".}
  proc toolTip*(this: QSystemTrayIcon): QString {.noSideEffect, importcpp: "toolTip",
      header: "qsystemtrayicon.h".}
  proc setToolTip*(this: var QSystemTrayIcon; tip: QString) {.importcpp: "setToolTip",
      header: "qsystemtrayicon.h".}
  proc isSystemTrayAvailable*(): bool {.importcpp: "QSystemTrayIcon::isSystemTrayAvailable(@)",
                                     header: "qsystemtrayicon.h".}
  proc supportsMessages*(): bool {.importcpp: "QSystemTrayIcon::supportsMessages(@)",
                                header: "qsystemtrayicon.h".}
  type
    QSystemTrayIconMessageIcon* {.size: sizeof(cint),
                                 importcpp: "QSystemTrayIcon::MessageIcon",
                                 header: "qsystemtrayicon.h".} = enum
      NoIcon, Information, Warning, Critical
  proc geometry*(this: QSystemTrayIcon): QRect {.noSideEffect, importcpp: "geometry",
      header: "qsystemtrayicon.h".}
  proc isVisible*(this: QSystemTrayIcon): bool {.noSideEffect,
      importcpp: "isVisible", header: "qsystemtrayicon.h".}
  proc setVisible*(this: var QSystemTrayIcon; visible: bool) {.
      importcpp: "setVisible", header: "qsystemtrayicon.h".}
  proc show*(this: var QSystemTrayIcon) {.importcpp: "show",
                                      header: "qsystemtrayicon.h".}
  proc hide*(this: var QSystemTrayIcon) {.importcpp: "hide",
                                      header: "qsystemtrayicon.h".}
  proc showMessage*(this: var QSystemTrayIcon; title: QString; msg: QString;
                   icon: QIcon; msecs: cint = 10000) {.importcpp: "showMessage",
      header: "qsystemtrayicon.h".}
  proc showMessage*(this: var QSystemTrayIcon; title: QString; msg: QString;
                   icon: QSystemTrayIconMessageIcon = information;
                   msecs: cint = 10000) {.importcpp: "showMessage",
                                      header: "qsystemtrayicon.h".}