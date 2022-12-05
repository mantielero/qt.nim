##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

when defined(QT_INCLUDE_COMPAT):
  discard
discard "forward decl of QLayout"
discard "forward decl of QStyle"
discard "forward decl of QAction"
discard "forward decl of QVariant"
discard "forward decl of QWindow"
discard "forward decl of QActionEvent"
discard "forward decl of QMouseEvent"
discard "forward decl of QWheelEvent"
discard "forward decl of QHoverEvent"
discard "forward decl of QKeyEvent"
discard "forward decl of QEnterEvent"
discard "forward decl of QFocusEvent"
discard "forward decl of QPaintEvent"
discard "forward decl of QMoveEvent"
discard "forward decl of QResizeEvent"
discard "forward decl of QCloseEvent"
discard "forward decl of QContextMenuEvent"
discard "forward decl of QInputMethodEvent"
discard "forward decl of QTabletEvent"
discard "forward decl of QDragEnterEvent"
discard "forward decl of QDragMoveEvent"
discard "forward decl of QDragLeaveEvent"
discard "forward decl of QDropEvent"
discard "forward decl of QScreen"
discard "forward decl of QShowEvent"
discard "forward decl of QHideEvent"
discard "forward decl of QIcon"
discard "forward decl of QBackingStore"
discard "forward decl of QPlatformWindow"
discard "forward decl of QLocale"
discard "forward decl of QGraphicsProxyWidget"
discard "forward decl of QGraphicsEffect"
discard "forward decl of QRasterWindowSurface"
discard "forward decl of QUnifiedToolbarSurface"
discard "forward decl of QPixmap"
when not defined(QT_NO_DEBUG_STREAM):
  discard "forward decl of QDebug"
type
  QWidgetData* {.importcpp: "QWidgetData", header: "qwidget.h", bycopy.} = object
    winid* {.importc: "winid".}: WId
    widgetAttributes* {.importc: "widget_attributes".}: uint
    windowFlags* {.importc: "window_flags".}: WindowFlags
    windowState* {.importc: "window_state".} {.bitsize: 4.}: uint
    focusPolicy* {.importc: "focus_policy".} {.bitsize: 4.}: uint
    sizehintForced* {.importc: "sizehint_forced".} {.bitsize: 1.}: uint
    isClosing* {.importc: "is_closing".} {.bitsize: 1.}: uint
    inShow* {.importc: "in_show".} {.bitsize: 1.}: uint
    inSetWindowState* {.importc: "in_set_window_state".} {.bitsize: 1.}: uint
    fstrutDirty* {.importc: "fstrut_dirty".} {.bitsize: 1.}: uint
    contextMenuPolicy* {.importc: "context_menu_policy".} {.bitsize: 3.}: uint
    windowModality* {.importc: "window_modality".} {.bitsize: 2.}: uint
    inDestructor* {.importc: "in_destructor".} {.bitsize: 1.}: uint
    unused* {.importc: "unused".} {.bitsize: 13.}: uint
    crect* {.importc: "crect".}: QRect
    pal* {.importc: "pal".}: QPalette
    fnt* {.importc: "fnt".}: QFont
    wrect* {.importc: "wrect".}: QRect


discard "forward decl of QWidgetPrivate"
type
  QWidget* {.importcpp: "QWidget", header: "qwidget.h", bycopy.} = object of QObject ##  Widget management functions
                                                                           ##  Event handlers

  QWidgetRenderFlag* {.size: sizeof(cint), importcpp: "QWidget::RenderFlag",
                      header: "qwidget.h".} = enum
    DrawWindowBackground = 0x1, DrawChildren = 0x2, IgnoreMask = 0x4


proc constructQWidget*(parent: ptr QWidget = nil; f: WindowFlags = windowFlags()): QWidget {.
    constructor, importcpp: "QWidget(@)", header: "qwidget.h".}
proc destroyQWidget*(this: var QWidget) {.importcpp: "#.~QWidget()",
                                      header: "qwidget.h".}
proc devType*(this: QWidget): cint {.noSideEffect, importcpp: "devType",
                                 header: "qwidget.h".}
proc winId*(this: QWidget): WId {.noSideEffect, importcpp: "winId", header: "qwidget.h".}
proc createWinId*(this: var QWidget) {.importcpp: "createWinId", header: "qwidget.h".}
proc internalWinId*(this: QWidget): WId {.noSideEffect, importcpp: "internalWinId",
                                      header: "qwidget.h".}
proc effectiveWinId*(this: QWidget): WId {.noSideEffect, importcpp: "effectiveWinId",
                                       header: "qwidget.h".}
proc style*(this: QWidget): ptr QStyle {.noSideEffect, importcpp: "style",
                                    header: "qwidget.h".}
proc setStyle*(this: var QWidget; a2: ptr QStyle) {.importcpp: "setStyle",
    header: "qwidget.h".}
proc isTopLevel*(this: QWidget): bool {.noSideEffect, importcpp: "isTopLevel",
                                    header: "qwidget.h".}
proc isWindow*(this: QWidget): bool {.noSideEffect, importcpp: "isWindow",
                                  header: "qwidget.h".}
proc isModal*(this: QWidget): bool {.noSideEffect, importcpp: "isModal",
                                 header: "qwidget.h".}
proc windowModality*(this: QWidget): WindowModality {.noSideEffect,
    importcpp: "windowModality", header: "qwidget.h".}
proc setWindowModality*(this: var QWidget; windowModality: WindowModality) {.
    importcpp: "setWindowModality", header: "qwidget.h".}
proc isEnabled*(this: QWidget): bool {.noSideEffect, importcpp: "isEnabled",
                                   header: "qwidget.h".}
proc isEnabledTo*(this: QWidget; a2: ptr QWidget): bool {.noSideEffect,
    importcpp: "isEnabledTo", header: "qwidget.h".}
proc setEnabled*(this: var QWidget; a2: bool) {.importcpp: "setEnabled",
    header: "qwidget.h".}
proc setDisabled*(this: var QWidget; a2: bool) {.importcpp: "setDisabled",
    header: "qwidget.h".}
proc setWindowModified*(this: var QWidget; a2: bool) {.importcpp: "setWindowModified",
    header: "qwidget.h".}
proc frameGeometry*(this: QWidget): QRect {.noSideEffect, importcpp: "frameGeometry",
                                        header: "qwidget.h".}
proc geometry*(this: QWidget): QRect {.noSideEffect, importcpp: "geometry",
                                   header: "qwidget.h".}
proc normalGeometry*(this: QWidget): QRect {.noSideEffect,
    importcpp: "normalGeometry", header: "qwidget.h".}
proc x*(this: QWidget): cint {.noSideEffect, importcpp: "x", header: "qwidget.h".}
proc y*(this: QWidget): cint {.noSideEffect, importcpp: "y", header: "qwidget.h".}
proc pos*(this: QWidget): QPoint {.noSideEffect, importcpp: "pos", header: "qwidget.h".}
proc frameSize*(this: QWidget): QSize {.noSideEffect, importcpp: "frameSize",
                                    header: "qwidget.h".}
proc size*(this: QWidget): QSize {.noSideEffect, importcpp: "size", header: "qwidget.h".}
proc width*(this: QWidget): cint {.noSideEffect, importcpp: "width",
                               header: "qwidget.h".}
proc height*(this: QWidget): cint {.noSideEffect, importcpp: "height",
                                header: "qwidget.h".}
proc rect*(this: QWidget): QRect {.noSideEffect, importcpp: "rect", header: "qwidget.h".}
proc childrenRect*(this: QWidget): QRect {.noSideEffect, importcpp: "childrenRect",
                                       header: "qwidget.h".}
proc childrenRegion*(this: QWidget): QRegion {.noSideEffect,
    importcpp: "childrenRegion", header: "qwidget.h".}
proc minimumSize*(this: QWidget): QSize {.noSideEffect, importcpp: "minimumSize",
                                      header: "qwidget.h".}
proc maximumSize*(this: QWidget): QSize {.noSideEffect, importcpp: "maximumSize",
                                      header: "qwidget.h".}
proc minimumWidth*(this: QWidget): cint {.noSideEffect, importcpp: "minimumWidth",
                                      header: "qwidget.h".}
proc minimumHeight*(this: QWidget): cint {.noSideEffect, importcpp: "minimumHeight",
                                       header: "qwidget.h".}
proc maximumWidth*(this: QWidget): cint {.noSideEffect, importcpp: "maximumWidth",
                                      header: "qwidget.h".}
proc maximumHeight*(this: QWidget): cint {.noSideEffect, importcpp: "maximumHeight",
                                       header: "qwidget.h".}
proc setMinimumSize*(this: var QWidget; a2: QSize) {.importcpp: "setMinimumSize",
    header: "qwidget.h".}
proc setMinimumSize*(this: var QWidget; minw: cint; minh: cint) {.
    importcpp: "setMinimumSize", header: "qwidget.h".}
proc setMaximumSize*(this: var QWidget; a2: QSize) {.importcpp: "setMaximumSize",
    header: "qwidget.h".}
proc setMaximumSize*(this: var QWidget; maxw: cint; maxh: cint) {.
    importcpp: "setMaximumSize", header: "qwidget.h".}
proc setMinimumWidth*(this: var QWidget; minw: cint) {.importcpp: "setMinimumWidth",
    header: "qwidget.h".}
proc setMinimumHeight*(this: var QWidget; minh: cint) {.importcpp: "setMinimumHeight",
    header: "qwidget.h".}
proc setMaximumWidth*(this: var QWidget; maxw: cint) {.importcpp: "setMaximumWidth",
    header: "qwidget.h".}
proc setMaximumHeight*(this: var QWidget; maxh: cint) {.importcpp: "setMaximumHeight",
    header: "qwidget.h".}
when defined(Q_QDOC):
  proc setupUi*(this: var QWidget; widget: ptr QWidget) {.importcpp: "setupUi",
      header: "qwidget.h".}
proc sizeIncrement*(this: QWidget): QSize {.noSideEffect, importcpp: "sizeIncrement",
                                        header: "qwidget.h".}
proc setSizeIncrement*(this: var QWidget; a2: QSize) {.importcpp: "setSizeIncrement",
    header: "qwidget.h".}
proc setSizeIncrement*(this: var QWidget; w: cint; h: cint) {.
    importcpp: "setSizeIncrement", header: "qwidget.h".}
proc baseSize*(this: QWidget): QSize {.noSideEffect, importcpp: "baseSize",
                                   header: "qwidget.h".}
proc setBaseSize*(this: var QWidget; a2: QSize) {.importcpp: "setBaseSize",
    header: "qwidget.h".}
proc setBaseSize*(this: var QWidget; basew: cint; baseh: cint) {.
    importcpp: "setBaseSize", header: "qwidget.h".}
proc setFixedSize*(this: var QWidget; a2: QSize) {.importcpp: "setFixedSize",
    header: "qwidget.h".}
proc setFixedSize*(this: var QWidget; w: cint; h: cint) {.importcpp: "setFixedSize",
    header: "qwidget.h".}
proc setFixedWidth*(this: var QWidget; w: cint) {.importcpp: "setFixedWidth",
    header: "qwidget.h".}
proc setFixedHeight*(this: var QWidget; h: cint) {.importcpp: "setFixedHeight",
    header: "qwidget.h".}
proc mapToGlobal*(this: QWidget; a2: QPointF): QPointF {.noSideEffect,
    importcpp: "mapToGlobal", header: "qwidget.h".}
proc mapToGlobal*(this: QWidget; a2: QPoint): QPoint {.noSideEffect,
    importcpp: "mapToGlobal", header: "qwidget.h".}
proc mapFromGlobal*(this: QWidget; a2: QPointF): QPointF {.noSideEffect,
    importcpp: "mapFromGlobal", header: "qwidget.h".}
proc mapFromGlobal*(this: QWidget; a2: QPoint): QPoint {.noSideEffect,
    importcpp: "mapFromGlobal", header: "qwidget.h".}
proc mapToParent*(this: QWidget; a2: QPointF): QPointF {.noSideEffect,
    importcpp: "mapToParent", header: "qwidget.h".}
proc mapToParent*(this: QWidget; a2: QPoint): QPoint {.noSideEffect,
    importcpp: "mapToParent", header: "qwidget.h".}
proc mapFromParent*(this: QWidget; a2: QPointF): QPointF {.noSideEffect,
    importcpp: "mapFromParent", header: "qwidget.h".}
proc mapFromParent*(this: QWidget; a2: QPoint): QPoint {.noSideEffect,
    importcpp: "mapFromParent", header: "qwidget.h".}
proc mapTo*(this: QWidget; a2: ptr QWidget; a3: QPointF): QPointF {.noSideEffect,
    importcpp: "mapTo", header: "qwidget.h".}
proc mapTo*(this: QWidget; a2: ptr QWidget; a3: QPoint): QPoint {.noSideEffect,
    importcpp: "mapTo", header: "qwidget.h".}
proc mapFrom*(this: QWidget; a2: ptr QWidget; a3: QPointF): QPointF {.noSideEffect,
    importcpp: "mapFrom", header: "qwidget.h".}
proc mapFrom*(this: QWidget; a2: ptr QWidget; a3: QPoint): QPoint {.noSideEffect,
    importcpp: "mapFrom", header: "qwidget.h".}
proc window*(this: QWidget): ptr QWidget {.noSideEffect, importcpp: "window",
                                      header: "qwidget.h".}
proc nativeParentWidget*(this: QWidget): ptr QWidget {.noSideEffect,
    importcpp: "nativeParentWidget", header: "qwidget.h".}
proc topLevelWidget*(this: QWidget): ptr QWidget {.noSideEffect,
    importcpp: "topLevelWidget", header: "qwidget.h".}
proc palette*(this: QWidget): QPalette {.noSideEffect, importcpp: "palette",
                                     header: "qwidget.h".}
proc setPalette*(this: var QWidget; a2: QPalette) {.importcpp: "setPalette",
    header: "qwidget.h".}
proc setBackgroundRole*(this: var QWidget; a2: ColorRole) {.
    importcpp: "setBackgroundRole", header: "qwidget.h".}
proc backgroundRole*(this: QWidget): ColorRole {.noSideEffect,
    importcpp: "backgroundRole", header: "qwidget.h".}
proc setForegroundRole*(this: var QWidget; a2: ColorRole) {.
    importcpp: "setForegroundRole", header: "qwidget.h".}
proc foregroundRole*(this: QWidget): ColorRole {.noSideEffect,
    importcpp: "foregroundRole", header: "qwidget.h".}
proc font*(this: QWidget): QFont {.noSideEffect, importcpp: "font", header: "qwidget.h".}
proc setFont*(this: var QWidget; a2: QFont) {.importcpp: "setFont", header: "qwidget.h".}
proc fontMetrics*(this: QWidget): QFontMetrics {.noSideEffect,
    importcpp: "fontMetrics", header: "qwidget.h".}
proc fontInfo*(this: QWidget): QFontInfo {.noSideEffect, importcpp: "fontInfo",
                                       header: "qwidget.h".}
when not defined(QT_NO_CURSOR):
  proc cursor*(this: QWidget): QCursor {.noSideEffect, importcpp: "cursor",
                                     header: "qwidget.h".}
when not defined(QT_NO_CURSOR):
  proc setCursor*(this: var QWidget; a2: QCursor) {.importcpp: "setCursor",
      header: "qwidget.h".}
when not defined(QT_NO_CURSOR):
  proc unsetCursor*(this: var QWidget) {.importcpp: "unsetCursor", header: "qwidget.h".}
proc setMouseTracking*(this: var QWidget; enable: bool) {.
    importcpp: "setMouseTracking", header: "qwidget.h".}
proc hasMouseTracking*(this: QWidget): bool {.noSideEffect,
    importcpp: "hasMouseTracking", header: "qwidget.h".}
proc underMouse*(this: QWidget): bool {.noSideEffect, importcpp: "underMouse",
                                    header: "qwidget.h".}
proc setTabletTracking*(this: var QWidget; enable: bool) {.
    importcpp: "setTabletTracking", header: "qwidget.h".}
proc hasTabletTracking*(this: QWidget): bool {.noSideEffect,
    importcpp: "hasTabletTracking", header: "qwidget.h".}
proc setMask*(this: var QWidget; a2: QBitmap) {.importcpp: "setMask",
    header: "qwidget.h".}
proc setMask*(this: var QWidget; a2: QRegion) {.importcpp: "setMask",
    header: "qwidget.h".}
proc mask*(this: QWidget): QRegion {.noSideEffect, importcpp: "mask",
                                 header: "qwidget.h".}
proc clearMask*(this: var QWidget) {.importcpp: "clearMask", header: "qwidget.h".}
proc render*(this: var QWidget; target: ptr QPaintDevice;
            targetOffset: QPoint = qPoint(); sourceRegion: QRegion = qRegion();
    renderFlags: RenderFlags = renderFlags(drawWindowBackground or drawChildren)) {.
    importcpp: "render", header: "qwidget.h".}
proc render*(this: var QWidget; painter: ptr QPainter; targetOffset: QPoint = qPoint();
            sourceRegion: QRegion = qRegion(); renderFlags: RenderFlags = renderFlags(
    drawWindowBackground or drawChildren)) {.importcpp: "render", header: "qwidget.h".}
proc grab*(this: var QWidget;
          rectangle: QRect = qRect(qPoint(0, 0), qSize(-1, -1))): QPixmap {.
    importcpp: "grab", header: "qwidget.h".}
proc graphicsEffect*(this: QWidget): ptr QGraphicsEffect {.noSideEffect,
    importcpp: "graphicsEffect", header: "qwidget.h".}
proc setGraphicsEffect*(this: var QWidget; effect: ptr QGraphicsEffect) {.
    importcpp: "setGraphicsEffect", header: "qwidget.h".}
proc grabGesture*(this: var QWidget; `type`: GestureType;
                 flags: GestureFlags = gestureFlags()) {.importcpp: "grabGesture",
    header: "qwidget.h".}
proc ungrabGesture*(this: var QWidget; `type`: GestureType) {.
    importcpp: "ungrabGesture", header: "qwidget.h".}
proc setWindowTitle*(this: var QWidget; a2: QString) {.importcpp: "setWindowTitle",
    header: "qwidget.h".}
when not defined(QT_NO_STYLE_STYLESHEET):
  proc setStyleSheet*(this: var QWidget; styleSheet: QString) {.
      importcpp: "setStyleSheet", header: "qwidget.h".}
when not defined(QT_NO_STYLE_STYLESHEET):
  proc styleSheet*(this: QWidget): QString {.noSideEffect, importcpp: "styleSheet",
      header: "qwidget.h".}
proc windowTitle*(this: QWidget): QString {.noSideEffect, importcpp: "windowTitle",
                                        header: "qwidget.h".}
proc setWindowIcon*(this: var QWidget; icon: QIcon) {.importcpp: "setWindowIcon",
    header: "qwidget.h".}
proc windowIcon*(this: QWidget): QIcon {.noSideEffect, importcpp: "windowIcon",
                                     header: "qwidget.h".}
proc setWindowIconText*(this: var QWidget; a2: QString) {.
    importcpp: "setWindowIconText", header: "qwidget.h".}
proc windowIconText*(this: QWidget): QString {.noSideEffect,
    importcpp: "windowIconText", header: "qwidget.h".}
proc setWindowRole*(this: var QWidget; a2: QString) {.importcpp: "setWindowRole",
    header: "qwidget.h".}
proc windowRole*(this: QWidget): QString {.noSideEffect, importcpp: "windowRole",
                                       header: "qwidget.h".}
proc setWindowFilePath*(this: var QWidget; filePath: QString) {.
    importcpp: "setWindowFilePath", header: "qwidget.h".}
proc windowFilePath*(this: QWidget): QString {.noSideEffect,
    importcpp: "windowFilePath", header: "qwidget.h".}
proc setWindowOpacity*(this: var QWidget; level: Qreal) {.
    importcpp: "setWindowOpacity", header: "qwidget.h".}
proc windowOpacity*(this: QWidget): Qreal {.noSideEffect, importcpp: "windowOpacity",
                                        header: "qwidget.h".}
proc isWindowModified*(this: QWidget): bool {.noSideEffect,
    importcpp: "isWindowModified", header: "qwidget.h".}
proc setToolTip*(this: var QWidget; a2: QString) {.importcpp: "setToolTip",
    header: "qwidget.h".}
proc toolTip*(this: QWidget): QString {.noSideEffect, importcpp: "toolTip",
                                    header: "qwidget.h".}
proc setToolTipDuration*(this: var QWidget; msec: cint) {.
    importcpp: "setToolTipDuration", header: "qwidget.h".}
proc toolTipDuration*(this: QWidget): cint {.noSideEffect,
    importcpp: "toolTipDuration", header: "qwidget.h".}
proc setStatusTip*(this: var QWidget; a2: QString) {.importcpp: "setStatusTip",
    header: "qwidget.h".}
proc statusTip*(this: QWidget): QString {.noSideEffect, importcpp: "statusTip",
                                      header: "qwidget.h".}
proc setWhatsThis*(this: var QWidget; a2: QString) {.importcpp: "setWhatsThis",
    header: "qwidget.h".}
proc whatsThis*(this: QWidget): QString {.noSideEffect, importcpp: "whatsThis",
                                      header: "qwidget.h".}
proc accessibleName*(this: QWidget): QString {.noSideEffect,
    importcpp: "accessibleName", header: "qwidget.h".}
proc setAccessibleName*(this: var QWidget; name: QString) {.
    importcpp: "setAccessibleName", header: "qwidget.h".}
proc accessibleDescription*(this: QWidget): QString {.noSideEffect,
    importcpp: "accessibleDescription", header: "qwidget.h".}
proc setAccessibleDescription*(this: var QWidget; description: QString) {.
    importcpp: "setAccessibleDescription", header: "qwidget.h".}
proc setLayoutDirection*(this: var QWidget; direction: LayoutDirection) {.
    importcpp: "setLayoutDirection", header: "qwidget.h".}
proc layoutDirection*(this: QWidget): LayoutDirection {.noSideEffect,
    importcpp: "layoutDirection", header: "qwidget.h".}
proc unsetLayoutDirection*(this: var QWidget) {.importcpp: "unsetLayoutDirection",
    header: "qwidget.h".}
proc setLocale*(this: var QWidget; locale: QLocale) {.importcpp: "setLocale",
    header: "qwidget.h".}
proc locale*(this: QWidget): QLocale {.noSideEffect, importcpp: "locale",
                                   header: "qwidget.h".}
proc unsetLocale*(this: var QWidget) {.importcpp: "unsetLocale", header: "qwidget.h".}
proc isRightToLeft*(this: QWidget): bool {.noSideEffect, importcpp: "isRightToLeft",
                                       header: "qwidget.h".}
proc isLeftToRight*(this: QWidget): bool {.noSideEffect, importcpp: "isLeftToRight",
                                       header: "qwidget.h".}
proc setFocus*(this: var QWidget) {.importcpp: "setFocus", header: "qwidget.h".}
proc isActiveWindow*(this: QWidget): bool {.noSideEffect,
                                        importcpp: "isActiveWindow",
                                        header: "qwidget.h".}
proc activateWindow*(this: var QWidget) {.importcpp: "activateWindow",
                                      header: "qwidget.h".}
proc clearFocus*(this: var QWidget) {.importcpp: "clearFocus", header: "qwidget.h".}
proc setFocus*(this: var QWidget; reason: FocusReason) {.importcpp: "setFocus",
    header: "qwidget.h".}
proc focusPolicy*(this: QWidget): FocusPolicy {.noSideEffect,
    importcpp: "focusPolicy", header: "qwidget.h".}
proc setFocusPolicy*(this: var QWidget; policy: FocusPolicy) {.
    importcpp: "setFocusPolicy", header: "qwidget.h".}
proc hasFocus*(this: QWidget): bool {.noSideEffect, importcpp: "hasFocus",
                                  header: "qwidget.h".}
proc setTabOrder*(a1: ptr QWidget; a2: ptr QWidget) {.
    importcpp: "QWidget::setTabOrder(@)", header: "qwidget.h".}
proc setFocusProxy*(this: var QWidget; a2: ptr QWidget) {.importcpp: "setFocusProxy",
    header: "qwidget.h".}
proc focusProxy*(this: QWidget): ptr QWidget {.noSideEffect, importcpp: "focusProxy",
    header: "qwidget.h".}
proc contextMenuPolicy*(this: QWidget): ContextMenuPolicy {.noSideEffect,
    importcpp: "contextMenuPolicy", header: "qwidget.h".}
proc setContextMenuPolicy*(this: var QWidget; policy: ContextMenuPolicy) {.
    importcpp: "setContextMenuPolicy", header: "qwidget.h".}
proc grabMouse*(this: var QWidget) {.importcpp: "grabMouse", header: "qwidget.h".}
when not defined(QT_NO_CURSOR):
  proc grabMouse*(this: var QWidget; a2: QCursor) {.importcpp: "grabMouse",
      header: "qwidget.h".}
proc releaseMouse*(this: var QWidget) {.importcpp: "releaseMouse", header: "qwidget.h".}
proc grabKeyboard*(this: var QWidget) {.importcpp: "grabKeyboard", header: "qwidget.h".}
proc releaseKeyboard*(this: var QWidget) {.importcpp: "releaseKeyboard",
                                       header: "qwidget.h".}
when not defined(QT_NO_SHORTCUT):
  proc grabShortcut*(this: var QWidget; key: QKeySequence;
                    context: ShortcutContext = windowShortcut): cint {.
      importcpp: "grabShortcut", header: "qwidget.h".}
when not defined(QT_NO_SHORTCUT):
  proc releaseShortcut*(this: var QWidget; id: cint) {.importcpp: "releaseShortcut",
      header: "qwidget.h".}
when not defined(QT_NO_SHORTCUT):
  proc setShortcutEnabled*(this: var QWidget; id: cint; enable: bool = true) {.
      importcpp: "setShortcutEnabled", header: "qwidget.h".}
when not defined(QT_NO_SHORTCUT):
  proc setShortcutAutoRepeat*(this: var QWidget; id: cint; enable: bool = true) {.
      importcpp: "setShortcutAutoRepeat", header: "qwidget.h".}
proc mouseGrabber*(): ptr QWidget {.importcpp: "QWidget::mouseGrabber(@)",
                                header: "qwidget.h".}
proc keyboardGrabber*(): ptr QWidget {.importcpp: "QWidget::keyboardGrabber(@)",
                                   header: "qwidget.h".}
proc updatesEnabled*(this: QWidget): bool {.noSideEffect,
                                        importcpp: "updatesEnabled",
                                        header: "qwidget.h".}
proc setUpdatesEnabled*(this: var QWidget; enable: bool) {.
    importcpp: "setUpdatesEnabled", header: "qwidget.h".}
proc graphicsProxyWidget*(this: QWidget): ptr QGraphicsProxyWidget {.noSideEffect,
    importcpp: "graphicsProxyWidget", header: "qwidget.h".}
proc update*(this: var QWidget) {.importcpp: "update", header: "qwidget.h".}
proc repaint*(this: var QWidget) {.importcpp: "repaint", header: "qwidget.h".}
proc update*(this: var QWidget; x: cint; y: cint; w: cint; h: cint) {.importcpp: "update",
    header: "qwidget.h".}
proc update*(this: var QWidget; a2: QRect) {.importcpp: "update", header: "qwidget.h".}
proc update*(this: var QWidget; a2: QRegion) {.importcpp: "update", header: "qwidget.h".}
proc repaint*(this: var QWidget; x: cint; y: cint; w: cint; h: cint) {.importcpp: "repaint",
    header: "qwidget.h".}
proc repaint*(this: var QWidget; a2: QRect) {.importcpp: "repaint", header: "qwidget.h".}
proc repaint*(this: var QWidget; a2: QRegion) {.importcpp: "repaint",
    header: "qwidget.h".}
proc setVisible*(this: var QWidget; visible: bool) {.importcpp: "setVisible",
    header: "qwidget.h".}
proc setHidden*(this: var QWidget; hidden: bool) {.importcpp: "setHidden",
    header: "qwidget.h".}
proc show*(this: var QWidget) {.importcpp: "show", header: "qwidget.h".}
proc hide*(this: var QWidget) {.importcpp: "hide", header: "qwidget.h".}
proc showMinimized*(this: var QWidget) {.importcpp: "showMinimized",
                                     header: "qwidget.h".}
proc showMaximized*(this: var QWidget) {.importcpp: "showMaximized",
                                     header: "qwidget.h".}
proc showFullScreen*(this: var QWidget) {.importcpp: "showFullScreen",
                                      header: "qwidget.h".}
proc showNormal*(this: var QWidget) {.importcpp: "showNormal", header: "qwidget.h".}
proc close*(this: var QWidget): bool {.importcpp: "close", header: "qwidget.h".}
proc `raise`*(this: var QWidget) {.importcpp: "raise", header: "qwidget.h".}
proc lower*(this: var QWidget) {.importcpp: "lower", header: "qwidget.h".}
proc stackUnder*(this: var QWidget; a2: ptr QWidget) {.importcpp: "stackUnder",
    header: "qwidget.h".}
proc move*(this: var QWidget; x: cint; y: cint) {.importcpp: "move", header: "qwidget.h".}
proc move*(this: var QWidget; a2: QPoint) {.importcpp: "move", header: "qwidget.h".}
proc resize*(this: var QWidget; w: cint; h: cint) {.importcpp: "resize",
    header: "qwidget.h".}
proc resize*(this: var QWidget; a2: QSize) {.importcpp: "resize", header: "qwidget.h".}
proc setGeometry*(this: var QWidget; x: cint; y: cint; w: cint; h: cint) {.
    importcpp: "setGeometry", header: "qwidget.h".}
proc setGeometry*(this: var QWidget; a2: QRect) {.importcpp: "setGeometry",
    header: "qwidget.h".}
proc saveGeometry*(this: QWidget): QByteArray {.noSideEffect,
    importcpp: "saveGeometry", header: "qwidget.h".}
proc restoreGeometry*(this: var QWidget; geometry: QByteArray): bool {.
    importcpp: "restoreGeometry", header: "qwidget.h".}
proc adjustSize*(this: var QWidget) {.importcpp: "adjustSize", header: "qwidget.h".}
proc isVisible*(this: QWidget): bool {.noSideEffect, importcpp: "isVisible",
                                   header: "qwidget.h".}
proc isVisibleTo*(this: QWidget; a2: ptr QWidget): bool {.noSideEffect,
    importcpp: "isVisibleTo", header: "qwidget.h".}
proc isHidden*(this: QWidget): bool {.noSideEffect, importcpp: "isHidden",
                                  header: "qwidget.h".}
proc isMinimized*(this: QWidget): bool {.noSideEffect, importcpp: "isMinimized",
                                     header: "qwidget.h".}
proc isMaximized*(this: QWidget): bool {.noSideEffect, importcpp: "isMaximized",
                                     header: "qwidget.h".}
proc isFullScreen*(this: QWidget): bool {.noSideEffect, importcpp: "isFullScreen",
                                      header: "qwidget.h".}
proc windowState*(this: QWidget): WindowStates {.noSideEffect,
    importcpp: "windowState", header: "qwidget.h".}
proc setWindowState*(this: var QWidget; state: WindowStates) {.
    importcpp: "setWindowState", header: "qwidget.h".}
proc overrideWindowState*(this: var QWidget; state: WindowStates) {.
    importcpp: "overrideWindowState", header: "qwidget.h".}
proc sizeHint*(this: QWidget): QSize {.noSideEffect, importcpp: "sizeHint",
                                   header: "qwidget.h".}
proc minimumSizeHint*(this: QWidget): QSize {.noSideEffect,
    importcpp: "minimumSizeHint", header: "qwidget.h".}
proc sizePolicy*(this: QWidget): QSizePolicy {.noSideEffect, importcpp: "sizePolicy",
    header: "qwidget.h".}
proc setSizePolicy*(this: var QWidget; a2: QSizePolicy) {.importcpp: "setSizePolicy",
    header: "qwidget.h".}
proc setSizePolicy*(this: var QWidget; horizontal: Policy; vertical: Policy) {.
    importcpp: "setSizePolicy", header: "qwidget.h".}
proc heightForWidth*(this: QWidget; a2: cint): cint {.noSideEffect,
    importcpp: "heightForWidth", header: "qwidget.h".}
proc hasHeightForWidth*(this: QWidget): bool {.noSideEffect,
    importcpp: "hasHeightForWidth", header: "qwidget.h".}
proc visibleRegion*(this: QWidget): QRegion {.noSideEffect,
    importcpp: "visibleRegion", header: "qwidget.h".}
proc setContentsMargins*(this: var QWidget; left: cint; top: cint; right: cint;
                        bottom: cint) {.importcpp: "setContentsMargins",
                                      header: "qwidget.h".}
proc setContentsMargins*(this: var QWidget; margins: QMargins) {.
    importcpp: "setContentsMargins", header: "qwidget.h".}
proc contentsMargins*(this: QWidget): QMargins {.noSideEffect,
    importcpp: "contentsMargins", header: "qwidget.h".}
proc contentsRect*(this: QWidget): QRect {.noSideEffect, importcpp: "contentsRect",
                                       header: "qwidget.h".}
proc layout*(this: QWidget): ptr QLayout {.noSideEffect, importcpp: "layout",
                                      header: "qwidget.h".}
proc setLayout*(this: var QWidget; a2: ptr QLayout) {.importcpp: "setLayout",
    header: "qwidget.h".}
proc updateGeometry*(this: var QWidget) {.importcpp: "updateGeometry",
                                      header: "qwidget.h".}
proc setParent*(this: var QWidget; parent: ptr QWidget) {.importcpp: "setParent",
    header: "qwidget.h".}
proc setParent*(this: var QWidget; parent: ptr QWidget; f: WindowFlags) {.
    importcpp: "setParent", header: "qwidget.h".}
proc scroll*(this: var QWidget; dx: cint; dy: cint) {.importcpp: "scroll",
    header: "qwidget.h".}
proc scroll*(this: var QWidget; dx: cint; dy: cint; a4: QRect) {.importcpp: "scroll",
    header: "qwidget.h".}
proc focusWidget*(this: QWidget): ptr QWidget {.noSideEffect,
    importcpp: "focusWidget", header: "qwidget.h".}
proc nextInFocusChain*(this: QWidget): ptr QWidget {.noSideEffect,
    importcpp: "nextInFocusChain", header: "qwidget.h".}
proc previousInFocusChain*(this: QWidget): ptr QWidget {.noSideEffect,
    importcpp: "previousInFocusChain", header: "qwidget.h".}
proc acceptDrops*(this: QWidget): bool {.noSideEffect, importcpp: "acceptDrops",
                                     header: "qwidget.h".}
proc setAcceptDrops*(this: var QWidget; on: bool) {.importcpp: "setAcceptDrops",
    header: "qwidget.h".}
proc addAction*(this: var QWidget; action: ptr QAction) {.importcpp: "addAction",
    header: "qwidget.h".}
proc addActions*(this: var QWidget; actions: QList[ptr QAction]) {.
    importcpp: "addActions", header: "qwidget.h".}
proc insertActions*(this: var QWidget; before: ptr QAction; actions: QList[ptr QAction]) {.
    importcpp: "insertActions", header: "qwidget.h".}
proc insertAction*(this: var QWidget; before: ptr QAction; action: ptr QAction) {.
    importcpp: "insertAction", header: "qwidget.h".}
proc removeAction*(this: var QWidget; action: ptr QAction) {.importcpp: "removeAction",
    header: "qwidget.h".}
proc actions*(this: QWidget): QList[ptr QAction] {.noSideEffect, importcpp: "actions",
    header: "qwidget.h".}
proc addAction*(this: var QWidget; text: QString): ptr QAction {.importcpp: "addAction",
    header: "qwidget.h".}
proc addAction*(this: var QWidget; icon: QIcon; text: QString): ptr QAction {.
    importcpp: "addAction", header: "qwidget.h".}
proc addAction*(this: var QWidget; text: QString; receiver: ptr QObject; member: cstring;
               `type`: ConnectionType = autoConnection): ptr QAction {.
    importcpp: "addAction", header: "qwidget.h".}
proc addAction*(this: var QWidget; icon: QIcon; text: QString; receiver: ptr QObject;
               member: cstring; `type`: ConnectionType = autoConnection): ptr QAction {.
    importcpp: "addAction", header: "qwidget.h".}
proc parentWidget*(this: QWidget): ptr QWidget {.noSideEffect,
    importcpp: "parentWidget", header: "qwidget.h".}
proc setWindowFlags*(this: var QWidget; `type`: WindowFlags) {.
    importcpp: "setWindowFlags", header: "qwidget.h".}
proc windowFlags*(this: QWidget): WindowFlags {.noSideEffect,
    importcpp: "windowFlags", header: "qwidget.h".}
proc setWindowFlag*(this: var QWidget; a2: WindowType; on: bool = true) {.
    importcpp: "setWindowFlag", header: "qwidget.h".}
proc overrideWindowFlags*(this: var QWidget; `type`: WindowFlags) {.
    importcpp: "overrideWindowFlags", header: "qwidget.h".}
proc windowType*(this: QWidget): WindowType {.noSideEffect, importcpp: "windowType",
    header: "qwidget.h".}
proc find*(a1: WId): ptr QWidget {.importcpp: "QWidget::find(@)", header: "qwidget.h".}
proc childAt*(this: QWidget; x: cint; y: cint): ptr QWidget {.noSideEffect,
    importcpp: "childAt", header: "qwidget.h".}
proc childAt*(this: QWidget; p: QPoint): ptr QWidget {.noSideEffect,
    importcpp: "childAt", header: "qwidget.h".}
proc setAttribute*(this: var QWidget; a2: WidgetAttribute; on: bool = true) {.
    importcpp: "setAttribute", header: "qwidget.h".}
proc testAttribute*(this: QWidget; a2: WidgetAttribute): bool {.noSideEffect,
    importcpp: "testAttribute", header: "qwidget.h".}
proc paintEngine*(this: QWidget): ptr QPaintEngine {.noSideEffect,
    importcpp: "paintEngine", header: "qwidget.h".}
proc ensurePolished*(this: QWidget) {.noSideEffect, importcpp: "ensurePolished",
                                   header: "qwidget.h".}
proc isAncestorOf*(this: QWidget; child: ptr QWidget): bool {.noSideEffect,
    importcpp: "isAncestorOf", header: "qwidget.h".}
when defined(QT_KEYPAD_NAVIGATION):
  proc hasEditFocus*(this: QWidget): bool {.noSideEffect, importcpp: "hasEditFocus",
                                        header: "qwidget.h".}
when defined(QT_KEYPAD_NAVIGATION):
  proc setEditFocus*(this: var QWidget; on: bool) {.importcpp: "setEditFocus",
      header: "qwidget.h".}
proc autoFillBackground*(this: QWidget): bool {.noSideEffect,
    importcpp: "autoFillBackground", header: "qwidget.h".}
proc setAutoFillBackground*(this: var QWidget; enabled: bool) {.
    importcpp: "setAutoFillBackground", header: "qwidget.h".}
proc backingStore*(this: QWidget): ptr QBackingStore {.noSideEffect,
    importcpp: "backingStore", header: "qwidget.h".}
proc windowHandle*(this: QWidget): ptr QWindow {.noSideEffect,
    importcpp: "windowHandle", header: "qwidget.h".}
proc screen*(this: QWidget): ptr QScreen {.noSideEffect, importcpp: "screen",
                                      header: "qwidget.h".}
proc setScreen*(this: var QWidget; a2: ptr QScreen) {.importcpp: "setScreen",
    header: "qwidget.h".}
proc createWindowContainer*(window: ptr QWindow; parent: ptr QWidget = nil;
                           flags: WindowFlags = windowFlags()): ptr QWidget {.
    importcpp: "QWidget::createWindowContainer(@)", header: "qwidget.h".}
proc inputMethodQuery*(this: QWidget; a2: InputMethodQuery): QVariant {.noSideEffect,
    importcpp: "inputMethodQuery", header: "qwidget.h".}
proc inputMethodHints*(this: QWidget): InputMethodHints {.noSideEffect,
    importcpp: "inputMethodHints", header: "qwidget.h".}
proc setInputMethodHints*(this: var QWidget; hints: InputMethodHints) {.
    importcpp: "setInputMethodHints", header: "qwidget.h".}
##  #ifndef Q_QDOC
##  template <> inline QWidget *qobject_cast<QWidget*>(QObject *o)
##  {
##      if (!o || !o->isWidgetType()) return nullptr;
##      return static_cast<QWidget*>(o);
##  }
##  template <> inline const QWidget *qobject_cast<const QWidget*>(const QObject *o)
##  {
##      if (!o || !o->isWidgetType()) return nullptr;
##      return static_cast<const QWidget*>(o);
##  }
##  #endif // !Q_QDOC

proc childAt*(this: QWidget; ax: cint; ay: cint): ptr QWidget {.noSideEffect,
    importcpp: "childAt", header: "qwidget.h".}
proc windowType*(this: QWidget): WindowType {.noSideEffect, importcpp: "windowType",
    header: "qwidget.h".}
proc windowFlags*(this: QWidget): WindowFlags {.noSideEffect,
    importcpp: "windowFlags", header: "qwidget.h".}
proc isTopLevel*(this: QWidget): bool {.noSideEffect, importcpp: "isTopLevel",
                                    header: "qwidget.h".}
proc isWindow*(this: QWidget): bool {.noSideEffect, importcpp: "isWindow",
                                  header: "qwidget.h".}
proc isEnabled*(this: QWidget): bool {.noSideEffect, importcpp: "isEnabled",
                                   header: "qwidget.h".}
proc isModal*(this: QWidget): bool {.noSideEffect, importcpp: "isModal",
                                 header: "qwidget.h".}
proc minimumWidth*(this: QWidget): cint {.noSideEffect, importcpp: "minimumWidth",
                                      header: "qwidget.h".}
proc minimumHeight*(this: QWidget): cint {.noSideEffect, importcpp: "minimumHeight",
                                       header: "qwidget.h".}
proc maximumWidth*(this: QWidget): cint {.noSideEffect, importcpp: "maximumWidth",
                                      header: "qwidget.h".}
proc maximumHeight*(this: QWidget): cint {.noSideEffect, importcpp: "maximumHeight",
                                       header: "qwidget.h".}
proc setMinimumSize*(this: var QWidget; s: QSize) {.importcpp: "setMinimumSize",
    header: "qwidget.h".}
proc setMaximumSize*(this: var QWidget; s: QSize) {.importcpp: "setMaximumSize",
    header: "qwidget.h".}
proc setSizeIncrement*(this: var QWidget; s: QSize) {.importcpp: "setSizeIncrement",
    header: "qwidget.h".}
proc setBaseSize*(this: var QWidget; s: QSize) {.importcpp: "setBaseSize",
    header: "qwidget.h".}
proc font*(this: QWidget): var QFont {.noSideEffect, importcpp: "font",
                                  header: "qwidget.h".}
proc fontMetrics*(this: QWidget): QFontMetrics {.noSideEffect,
    importcpp: "fontMetrics", header: "qwidget.h".}
proc fontInfo*(this: QWidget): QFontInfo {.noSideEffect, importcpp: "fontInfo",
                                       header: "qwidget.h".}
proc setMouseTracking*(this: var QWidget; enable: bool) {.
    importcpp: "setMouseTracking", header: "qwidget.h".}
proc hasMouseTracking*(this: QWidget): bool {.noSideEffect,
    importcpp: "hasMouseTracking", header: "qwidget.h".}
proc underMouse*(this: QWidget): bool {.noSideEffect, importcpp: "underMouse",
                                    header: "qwidget.h".}
proc setTabletTracking*(this: var QWidget; enable: bool) {.
    importcpp: "setTabletTracking", header: "qwidget.h".}
proc hasTabletTracking*(this: QWidget): bool {.noSideEffect,
    importcpp: "hasTabletTracking", header: "qwidget.h".}
proc updatesEnabled*(this: QWidget): bool {.noSideEffect,
                                        importcpp: "updatesEnabled",
                                        header: "qwidget.h".}
proc update*(this: var QWidget; ax: cint; ay: cint; aw: cint; ah: cint) {.
    importcpp: "update", header: "qwidget.h".}
proc isVisible*(this: QWidget): bool {.noSideEffect, importcpp: "isVisible",
                                   header: "qwidget.h".}
proc isHidden*(this: QWidget): bool {.noSideEffect, importcpp: "isHidden",
                                  header: "qwidget.h".}
proc move*(this: var QWidget; ax: cint; ay: cint) {.importcpp: "move", header: "qwidget.h".}
proc resize*(this: var QWidget; w: cint; h: cint) {.importcpp: "resize",
    header: "qwidget.h".}
proc setGeometry*(this: var QWidget; ax: cint; ay: cint; aw: cint; ah: cint) {.
    importcpp: "setGeometry", header: "qwidget.h".}
proc rect*(this: QWidget): QRect {.noSideEffect, importcpp: "rect", header: "qwidget.h".}
proc geometry*(this: QWidget): var QRect {.noSideEffect, importcpp: "geometry",
                                      header: "qwidget.h".}
proc size*(this: QWidget): QSize {.noSideEffect, importcpp: "size", header: "qwidget.h".}
proc width*(this: QWidget): cint {.noSideEffect, importcpp: "width",
                               header: "qwidget.h".}
proc height*(this: QWidget): cint {.noSideEffect, importcpp: "height",
                                header: "qwidget.h".}
proc parentWidget*(this: QWidget): ptr QWidget {.noSideEffect,
    importcpp: "parentWidget", header: "qwidget.h".}
proc setSizePolicy*(this: var QWidget; hor: Policy; ver: Policy) {.
    importcpp: "setSizePolicy", header: "qwidget.h".}
proc testAttribute*(this: QWidget; attribute: WidgetAttribute): bool {.noSideEffect,
    importcpp: "testAttribute", header: "qwidget.h".}
const
  QWIDGETSIZE_MAX* = ((1 shl 24) - 1)

when not defined(QT_NO_DEBUG_STREAM):
  proc `<<`*(a1: QDebug; a2: ptr QWidget): QDebug {.importcpp: "(# << #)",
      header: "qwidget.h".}