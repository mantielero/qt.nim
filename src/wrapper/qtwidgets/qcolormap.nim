##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QColor"
discard "forward decl of QColormapPrivate"
type
  QColormap* {.importcpp: "QColormap", header: "qcolormap.h", bycopy.} = object

  QColormapMode* {.size: sizeof(cint), importcpp: "QColormap::Mode",
                  header: "qcolormap.h".} = enum
    Direct, Indexed, Gray


proc initialize*() {.importcpp: "QColormap::initialize(@)", header: "qcolormap.h".}
proc cleanup*() {.importcpp: "QColormap::cleanup(@)", header: "qcolormap.h".}
proc instance*(screen: cint = -1): QColormap {.importcpp: "QColormap::instance(@)",
    header: "qcolormap.h".}
proc constructQColormap*(colormap: QColormap): QColormap {.constructor,
    importcpp: "QColormap(@)", header: "qcolormap.h".}
proc destroyQColormap*(this: var QColormap) {.importcpp: "#.~QColormap()",
    header: "qcolormap.h".}
proc mode*(this: QColormap): QColormapMode {.noSideEffect, importcpp: "mode",
    header: "qcolormap.h".}
proc depth*(this: QColormap): cint {.noSideEffect, importcpp: "depth",
                                 header: "qcolormap.h".}
proc size*(this: QColormap): cint {.noSideEffect, importcpp: "size",
                                header: "qcolormap.h".}
proc pixel*(this: QColormap; color: QColor): uint {.noSideEffect, importcpp: "pixel",
    header: "qcolormap.h".}
proc colorAt*(this: QColormap; pixel: uint): QColor {.noSideEffect,
    importcpp: "colorAt", header: "qcolormap.h".}
proc colormap*(this: QColormap): QList[QColor] {.noSideEffect, importcpp: "colormap",
    header: "qcolormap.h".}