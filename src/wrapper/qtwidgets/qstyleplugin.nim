##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QStyle"
const
  QStyleFactoryInterfaceIid* = "org.qt-project.Qt.QStyleFactoryInterface"

type
  QStylePlugin* {.importcpp: "QStylePlugin", header: "qstyleplugin.h", bycopy.} = object of QObject


proc constructQStylePlugin*(parent: ptr QObject = nil): QStylePlugin {.constructor,
    importcpp: "QStylePlugin(@)", header: "qstyleplugin.h".}
proc destroyQStylePlugin*(this: var QStylePlugin) {.importcpp: "#.~QStylePlugin()",
    header: "qstyleplugin.h".}
proc create*(this: var QStylePlugin; key: QString): ptr QStyle {.importcpp: "create",
    header: "qstyleplugin.h".}