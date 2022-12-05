import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QPainter"
discard "forward decl of QPalette"
discard "forward decl of QPoint"
discard "forward decl of QColor"
discard "forward decl of QBrush"
discard "forward decl of QRect"
proc qDrawShadeLine*(p: ptr QPainter; x1: cint; y1: cint; x2: cint; y2: cint; pal: QPalette;
                    sunken: bool = true; lineWidth: cint = 1; midLineWidth: cint = 0) {.
    importcpp: "qDrawShadeLine(@)", header: "qdrawutil.h".}
proc qDrawShadeLine*(p: ptr QPainter; p1: QPoint; p2: QPoint; pal: QPalette;
                    sunken: bool = true; lineWidth: cint = 1; midLineWidth: cint = 0) {.
    importcpp: "qDrawShadeLine(@)", header: "qdrawutil.h".}
proc qDrawShadeRect*(p: ptr QPainter; x: cint; y: cint; w: cint; h: cint; pal: QPalette;
                    sunken: bool = false; lineWidth: cint = 1; midLineWidth: cint = 0;
                    fill: ptr QBrush = nil) {.importcpp: "qDrawShadeRect(@)",
    header: "qdrawutil.h".}
proc qDrawShadeRect*(p: ptr QPainter; r: QRect; pal: QPalette; sunken: bool = false;
                    lineWidth: cint = 1; midLineWidth: cint = 0; fill: ptr QBrush = nil) {.
    importcpp: "qDrawShadeRect(@)", header: "qdrawutil.h".}
proc qDrawShadePanel*(p: ptr QPainter; x: cint; y: cint; w: cint; h: cint; pal: QPalette;
                     sunken: bool = false; lineWidth: cint = 1; fill: ptr QBrush = nil) {.
    importcpp: "qDrawShadePanel(@)", header: "qdrawutil.h".}
proc qDrawShadePanel*(p: ptr QPainter; r: QRect; pal: QPalette; sunken: bool = false;
                     lineWidth: cint = 1; fill: ptr QBrush = nil) {.
    importcpp: "qDrawShadePanel(@)", header: "qdrawutil.h".}
proc qDrawWinButton*(p: ptr QPainter; x: cint; y: cint; w: cint; h: cint; pal: QPalette;
                    sunken: bool = false; fill: ptr QBrush = nil) {.
    importcpp: "qDrawWinButton(@)", header: "qdrawutil.h".}
proc qDrawWinButton*(p: ptr QPainter; r: QRect; pal: QPalette; sunken: bool = false;
                    fill: ptr QBrush = nil) {.importcpp: "qDrawWinButton(@)",
    header: "qdrawutil.h".}
proc qDrawWinPanel*(p: ptr QPainter; x: cint; y: cint; w: cint; h: cint; pal: QPalette;
                   sunken: bool = false; fill: ptr QBrush = nil) {.
    importcpp: "qDrawWinPanel(@)", header: "qdrawutil.h".}
proc qDrawWinPanel*(p: ptr QPainter; r: QRect; pal: QPalette; sunken: bool = false;
                   fill: ptr QBrush = nil) {.importcpp: "qDrawWinPanel(@)",
                                        header: "qdrawutil.h".}
proc qDrawPlainRect*(p: ptr QPainter; x: cint; y: cint; w: cint; h: cint; a6: QColor;
                    lineWidth: cint = 1; fill: ptr QBrush = nil) {.
    importcpp: "qDrawPlainRect(@)", header: "qdrawutil.h".}
proc qDrawPlainRect*(p: ptr QPainter; r: QRect; a3: QColor; lineWidth: cint = 1;
                    fill: ptr QBrush = nil) {.importcpp: "qDrawPlainRect(@)",
    header: "qdrawutil.h".}


proc constructQTileRules*(horizontalRule: TileRule; verticalRule: TileRule): QTileRules {.
    constructor, importcpp: "QTileRules(@)", header: "qdrawutil.h".}
proc constructQTileRules*(rule: TileRule = stretchTile): QTileRules {.constructor,
    importcpp: "QTileRules(@)", header: "qdrawutil.h".}
##  For internal use only.



proc qDrawBorderPixmap*(painter: ptr QPainter; targetRect: QRect;
                       targetMargins: QMargins; pixmap: QPixmap; sourceRect: QRect;
                       sourceMargins: QMargins; rules: QTileRules = constructQTileRules(); ##  #ifndef Q_CLANG_QDOC
                       hints: DrawingHints = drawingHints()) {.
    importcpp: "qDrawBorderPixmap(@)", header: "qdrawutil.h".}
  ##  #endif
proc qDrawBorderPixmap*(painter: ptr QPainter; target: QRect; margins: QMargins;
                       pixmap: QPixmap) =
  discard

