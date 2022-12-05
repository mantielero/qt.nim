##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QFileIconProviderPrivate"
type
  QFileIconProvider* {.importcpp: "QFileIconProvider",
                      header: "qfileiconprovider.h", bycopy.} = object of QAbstractFileIconProvider


proc constructQFileIconProvider*(): QFileIconProvider {.constructor,
    importcpp: "QFileIconProvider(@)", header: "qfileiconprovider.h".}
proc destroyQFileIconProvider*(this: var QFileIconProvider) {.
    importcpp: "#.~QFileIconProvider()", header: "qfileiconprovider.h".}
proc icon*(this: QFileIconProvider; `type`: IconType): QIcon {.noSideEffect,
    importcpp: "icon", header: "qfileiconprovider.h".}
proc icon*(this: QFileIconProvider; info: QFileInfo): QIcon {.noSideEffect,
    importcpp: "icon", header: "qfileiconprovider.h".}