##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(tooltip)
type
  QToolTip* {.importcpp: "QToolTip", header: "qtooltip.h", bycopy.} = object


proc showText*(pos: QPoint; text: QString; w: ptr QWidget = nil; rect: QRect = ();
              msecShowTime: cint = -1) {.importcpp: "QToolTip::showText(@)",
                                     header: "qtooltip.h".}
proc hideText*() {.importcpp: "QToolTip::hideText(@)", header: "qtooltip.h".}
proc isVisible*(): bool {.importcpp: "QToolTip::isVisible(@)", header: "qtooltip.h".}
proc text*(): QString {.importcpp: "QToolTip::text(@)", header: "qtooltip.h".}
proc palette*(): QPalette {.importcpp: "QToolTip::palette(@)", header: "qtooltip.h".}
proc setPalette*(a1: QPalette) {.importcpp: "QToolTip::setPalette(@)",
                              header: "qtooltip.h".}
proc font*(): QFont {.importcpp: "QToolTip::font(@)", header: "qtooltip.h".}
proc setFont*(a1: QFont) {.importcpp: "QToolTip::setFont(@)", header: "qtooltip.h".}