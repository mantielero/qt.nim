##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QStyle"
discard "forward decl of QEventLoop"
discard "forward decl of QIcon"
discard "forward decl of QLocale"
discard "forward decl of QPlatformNativeInterface"
discard "forward decl of QApplication"
discard "forward decl of QApplicationPrivate"
when defined(qApp):
  discard
const
  qApp* = (staticCast[ptr QApplication](instance()))

type
  QApplication* {.importcpp: "QApplication", header: "qapplication.h", bycopy.} = object of QGuiApplication
    qApplication* {.importc: "QApplication".}: Qt_Declare_Native_Interface_Accessor


when defined(Q_QDOC):
  proc constructQApplication*(argc: var cint; argv: cstringArray): QApplication {.
      constructor, importcpp: "QApplication(@)", header: "qapplication.h".}
when not defined(Q_QDOC):
  proc constructQApplication*(argc: var cint; argv: cstringArray;
                             a3: cint = applicationFlags): QApplication {.
      constructor, importcpp: "QApplication(@)", header: "qapplication.h".}
proc destroyQApplication*(this: var QApplication) {.importcpp: "#.~QApplication()",
    header: "qapplication.h".}
proc style*(): ptr QStyle {.importcpp: "QApplication::style(@)",
                        header: "qapplication.h".}
proc setStyle*(a1: ptr QStyle) {.importcpp: "QApplication::setStyle(@)",
                             header: "qapplication.h".}
proc setStyle*(a1: QString): ptr QStyle {.importcpp: "QApplication::setStyle(@)",
                                     header: "qapplication.h".}
## using statement

proc palette*(a1: ptr QWidget): QPalette {.importcpp: "QApplication::palette(@)",
                                      header: "qapplication.h".}
proc palette*(className: cstring): QPalette {.importcpp: "QApplication::palette(@)",
    header: "qapplication.h".}
proc setPalette*(a1: QPalette; className: cstring = nil) {.
    importcpp: "QApplication::setPalette(@)", header: "qapplication.h".}
proc font*(): QFont {.importcpp: "QApplication::font(@)", header: "qapplication.h".}
proc font*(a1: ptr QWidget): QFont {.importcpp: "QApplication::font(@)",
                                header: "qapplication.h".}
proc font*(className: cstring): QFont {.importcpp: "QApplication::font(@)",
                                    header: "qapplication.h".}
proc setFont*(a1: QFont; className: cstring = nil) {.
    importcpp: "QApplication::setFont(@)", header: "qapplication.h".}
proc fontMetrics*(): QFontMetrics {.importcpp: "QApplication::fontMetrics(@)",
                                 header: "qapplication.h".}
proc allWidgets*(): QWidgetList {.importcpp: "QApplication::allWidgets(@)",
                               header: "qapplication.h".}
proc topLevelWidgets*(): QWidgetList {.importcpp: "QApplication::topLevelWidgets(@)",
                                    header: "qapplication.h".}
proc activePopupWidget*(): ptr QWidget {.importcpp: "QApplication::activePopupWidget(@)",
                                     header: "qapplication.h".}
proc activeModalWidget*(): ptr QWidget {.importcpp: "QApplication::activeModalWidget(@)",
                                     header: "qapplication.h".}
proc focusWidget*(): ptr QWidget {.importcpp: "QApplication::focusWidget(@)",
                               header: "qapplication.h".}
proc activeWindow*(): ptr QWidget {.importcpp: "QApplication::activeWindow(@)",
                                header: "qapplication.h".}
proc setActiveWindow*(act: ptr QWidget) {.importcpp: "QApplication::setActiveWindow(@)",
                                      header: "qapplication.h".}
proc widgetAt*(p: QPoint): ptr QWidget {.importcpp: "QApplication::widgetAt(@)",
                                    header: "qapplication.h".}
proc widgetAt*(x: cint; y: cint): ptr QWidget {.importcpp: "QApplication::widgetAt(@)",
    header: "qapplication.h".}
proc topLevelAt*(p: QPoint): ptr QWidget {.importcpp: "QApplication::topLevelAt(@)",
                                      header: "qapplication.h".}
proc topLevelAt*(x: cint; y: cint): ptr QWidget {.
    importcpp: "QApplication::topLevelAt(@)", header: "qapplication.h".}
proc beep*() {.importcpp: "QApplication::beep(@)", header: "qapplication.h".}
proc alert*(widget: ptr QWidget; duration: cint = 0) {.
    importcpp: "QApplication::alert(@)", header: "qapplication.h".}
proc setCursorFlashTime*(a1: cint) {.importcpp: "QApplication::setCursorFlashTime(@)",
                                  header: "qapplication.h".}
proc cursorFlashTime*(): cint {.importcpp: "QApplication::cursorFlashTime(@)",
                             header: "qapplication.h".}
proc setDoubleClickInterval*(a1: cint) {.importcpp: "QApplication::setDoubleClickInterval(@)",
                                      header: "qapplication.h".}
proc doubleClickInterval*(): cint {.importcpp: "QApplication::doubleClickInterval(@)",
                                 header: "qapplication.h".}
proc setKeyboardInputInterval*(a1: cint) {.importcpp: "QApplication::setKeyboardInputInterval(@)",
                                        header: "qapplication.h".}
proc keyboardInputInterval*(): cint {.importcpp: "QApplication::keyboardInputInterval(@)",
                                   header: "qapplication.h".}
proc setWheelScrollLines*(a1: cint) {.importcpp: "QApplication::setWheelScrollLines(@)",
                                   header: "qapplication.h".}
proc wheelScrollLines*(): cint {.importcpp: "QApplication::wheelScrollLines(@)",
                              header: "qapplication.h".}
proc setStartDragTime*(ms: cint) {.importcpp: "QApplication::setStartDragTime(@)",
                                header: "qapplication.h".}
proc startDragTime*(): cint {.importcpp: "QApplication::startDragTime(@)",
                           header: "qapplication.h".}
proc setStartDragDistance*(l: cint) {.importcpp: "QApplication::setStartDragDistance(@)",
                                   header: "qapplication.h".}
proc startDragDistance*(): cint {.importcpp: "QApplication::startDragDistance(@)",
                               header: "qapplication.h".}
proc isEffectEnabled*(a1: UIEffect): bool {.importcpp: "QApplication::isEffectEnabled(@)",
                                        header: "qapplication.h".}
proc setEffectEnabled*(a1: UIEffect; enable: bool = true) {.
    importcpp: "QApplication::setEffectEnabled(@)", header: "qapplication.h".}
proc exec*(): cint {.importcpp: "QApplication::exec(@)", header: "qapplication.h".}
proc notify*(this: var QApplication; a2: ptr QObject; a3: ptr QEvent): bool {.
    importcpp: "notify", header: "qapplication.h".}
when defined(QT_KEYPAD_NAVIGATION):
  proc setNavigationMode*(mode: NavigationMode) {.
      importcpp: "QApplication::setNavigationMode(@)", header: "qapplication.h".}
when defined(QT_KEYPAD_NAVIGATION):
  proc navigationMode*(): NavigationMode {.importcpp: "QApplication::navigationMode(@)",
                                        header: "qapplication.h".}
proc styleSheet*(this: QApplication): QString {.noSideEffect,
    importcpp: "styleSheet", header: "qapplication.h".}
when not defined(QT_NO_STYLE_STYLESHEET):
  proc setStyleSheet*(this: var QApplication; sheet: QString) {.
      importcpp: "setStyleSheet", header: "qapplication.h".}
proc setAutoSipEnabled*(this: var QApplication; enabled: bool) {.
    importcpp: "setAutoSipEnabled", header: "qapplication.h".}
proc autoSipEnabled*(this: QApplication): bool {.noSideEffect,
    importcpp: "autoSipEnabled", header: "qapplication.h".}
proc closeAllWindows*() {.importcpp: "QApplication::closeAllWindows(@)",
                        header: "qapplication.h".}
proc aboutQt*() {.importcpp: "QApplication::aboutQt(@)", header: "qapplication.h".}