import qtwidgets_types

##  Copyright (C) 2020 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QDebug"







proc constructQStyleOption*(version: cint = version; `type`: cint = sO_Default): QStyleOption {.
    constructor, importcpp: "QStyleOption(@)", header: "qstyleoption.h".}
proc constructQStyleOption*(other: QStyleOption): QStyleOption {.constructor,
    importcpp: "QStyleOption(@)", header: "qstyleoption.h".}
proc destroyQStyleOption*(this: var QStyleOption) {.importcpp: "#.~QStyleOption()",
    header: "qstyleoption.h".}
proc initFrom*(this: var QStyleOption; w: ptr QWidget) {.importcpp: "initFrom",
    header: "qstyleoption.h".}





proc constructQStyleOptionFocusRect*(): QStyleOptionFocusRect {.constructor,
    importcpp: "QStyleOptionFocusRect(@)", header: "qstyleoption.h".}
proc constructQStyleOptionFocusRect*(other: QStyleOptionFocusRect): QStyleOptionFocusRect {.
    constructor, importcpp: "QStyleOptionFocusRect(@)", header: "qstyleoption.h".}







proc constructQStyleOptionFrame*(): QStyleOptionFrame {.constructor,
    importcpp: "QStyleOptionFrame(@)", header: "qstyleoption.h".}
proc constructQStyleOptionFrame*(other: QStyleOptionFrame): QStyleOptionFrame {.
    constructor, importcpp: "QStyleOptionFrame(@)", header: "qstyleoption.h".}
##  #if QT_CONFIG(tabwidget)






proc constructQStyleOptionTabWidgetFrame*(): QStyleOptionTabWidgetFrame {.
    constructor, importcpp: "QStyleOptionTabWidgetFrame(@)",
    header: "qstyleoption.h".}
proc constructQStyleOptionTabWidgetFrame*(other: QStyleOptionTabWidgetFrame): QStyleOptionTabWidgetFrame {.
    constructor, importcpp: "QStyleOptionTabWidgetFrame(@)",
    header: "qstyleoption.h".}
##  #endif // QT_CONFIG(tabwidget)






proc constructQStyleOptionTabBarBase*(): QStyleOptionTabBarBase {.constructor,
    importcpp: "QStyleOptionTabBarBase(@)", header: "qstyleoption.h".}
proc constructQStyleOptionTabBarBase*(other: QStyleOptionTabBarBase): QStyleOptionTabBarBase {.
    constructor, importcpp: "QStyleOptionTabBarBase(@)", header: "qstyleoption.h".}











proc constructQStyleOptionHeader*(): QStyleOptionHeader {.constructor,
    importcpp: "QStyleOptionHeader(@)", header: "qstyleoption.h".}
proc constructQStyleOptionHeader*(other: QStyleOptionHeader): QStyleOptionHeader {.
    constructor, importcpp: "QStyleOptionHeader(@)", header: "qstyleoption.h".}





proc constructQStyleOptionHeaderV2*(): QStyleOptionHeaderV2 {.constructor,
    importcpp: "QStyleOptionHeaderV2(@)", header: "qstyleoption.h".}
proc constructQStyleOptionHeaderV2*(other: QStyleOptionHeaderV2): QStyleOptionHeaderV2 {.
    constructor, importcpp: "QStyleOptionHeaderV2(@)", header: "qstyleoption.h".}







proc constructQStyleOptionButton*(): QStyleOptionButton {.constructor,
    importcpp: "QStyleOptionButton(@)", header: "qstyleoption.h".}
proc constructQStyleOptionButton*(other: QStyleOptionButton): QStyleOptionButton {.
    constructor, importcpp: "QStyleOptionButton(@)", header: "qstyleoption.h".}













proc constructQStyleOptionTab*(): QStyleOptionTab {.constructor,
    importcpp: "QStyleOptionTab(@)", header: "qstyleoption.h".}
proc constructQStyleOptionTab*(other: QStyleOptionTab): QStyleOptionTab {.
    constructor, importcpp: "QStyleOptionTab(@)", header: "qstyleoption.h".}









proc constructQStyleOptionToolBar*(): QStyleOptionToolBar {.constructor,
    importcpp: "QStyleOptionToolBar(@)", header: "qstyleoption.h".}
proc constructQStyleOptionToolBar*(other: QStyleOptionToolBar): QStyleOptionToolBar {.
    constructor, importcpp: "QStyleOptionToolBar(@)", header: "qstyleoption.h".}





proc constructQStyleOptionProgressBar*(): QStyleOptionProgressBar {.constructor,
    importcpp: "QStyleOptionProgressBar(@)", header: "qstyleoption.h".}
proc constructQStyleOptionProgressBar*(other: QStyleOptionProgressBar): QStyleOptionProgressBar {.
    constructor, importcpp: "QStyleOptionProgressBar(@)", header: "qstyleoption.h".}









proc constructQStyleOptionMenuItem*(): QStyleOptionMenuItem {.constructor,
    importcpp: "QStyleOptionMenuItem(@)", header: "qstyleoption.h".}
proc constructQStyleOptionMenuItem*(other: QStyleOptionMenuItem): QStyleOptionMenuItem {.
    constructor, importcpp: "QStyleOptionMenuItem(@)", header: "qstyleoption.h".}





proc constructQStyleOptionDockWidget*(): QStyleOptionDockWidget {.constructor,
    importcpp: "QStyleOptionDockWidget(@)", header: "qstyleoption.h".}
proc constructQStyleOptionDockWidget*(other: QStyleOptionDockWidget): QStyleOptionDockWidget {.
    constructor, importcpp: "QStyleOptionDockWidget(@)", header: "qstyleoption.h".}











proc constructQStyleOptionViewItem*(): QStyleOptionViewItem {.constructor,
    importcpp: "QStyleOptionViewItem(@)", header: "qstyleoption.h".}
proc constructQStyleOptionViewItem*(other: QStyleOptionViewItem): QStyleOptionViewItem {.
    constructor, importcpp: "QStyleOptionViewItem(@)", header: "qstyleoption.h".}









proc constructQStyleOptionToolBox*(): QStyleOptionToolBox {.constructor,
    importcpp: "QStyleOptionToolBox(@)", header: "qstyleoption.h".}
proc constructQStyleOptionToolBox*(other: QStyleOptionToolBox): QStyleOptionToolBox {.
    constructor, importcpp: "QStyleOptionToolBox(@)", header: "qstyleoption.h".}





proc constructQStyleOptionRubberBand*(): QStyleOptionRubberBand {.constructor,
    importcpp: "QStyleOptionRubberBand(@)", header: "qstyleoption.h".}
proc constructQStyleOptionRubberBand*(other: QStyleOptionRubberBand): QStyleOptionRubberBand {.
    constructor, importcpp: "QStyleOptionRubberBand(@)", header: "qstyleoption.h".}
##  -------------------------- Complex style options -------------------------------






proc constructQStyleOptionComplex*(version: cint = version; `type`: cint = sO_Complex): QStyleOptionComplex {.
    constructor, importcpp: "QStyleOptionComplex(@)", header: "qstyleoption.h".}
proc constructQStyleOptionComplex*(other: QStyleOptionComplex): QStyleOptionComplex {.
    constructor, importcpp: "QStyleOptionComplex(@)", header: "qstyleoption.h".}





proc constructQStyleOptionSlider*(): QStyleOptionSlider {.constructor,
    importcpp: "QStyleOptionSlider(@)", header: "qstyleoption.h".}
proc constructQStyleOptionSlider*(other: QStyleOptionSlider): QStyleOptionSlider {.
    constructor, importcpp: "QStyleOptionSlider(@)", header: "qstyleoption.h".}





proc constructQStyleOptionSpinBox*(): QStyleOptionSpinBox {.constructor,
    importcpp: "QStyleOptionSpinBox(@)", header: "qstyleoption.h".}
proc constructQStyleOptionSpinBox*(other: QStyleOptionSpinBox): QStyleOptionSpinBox {.
    constructor, importcpp: "QStyleOptionSpinBox(@)", header: "qstyleoption.h".}







proc constructQStyleOptionToolButton*(): QStyleOptionToolButton {.constructor,
    importcpp: "QStyleOptionToolButton(@)", header: "qstyleoption.h".}
proc constructQStyleOptionToolButton*(other: QStyleOptionToolButton): QStyleOptionToolButton {.
    constructor, importcpp: "QStyleOptionToolButton(@)", header: "qstyleoption.h".}





proc constructQStyleOptionComboBox*(): QStyleOptionComboBox {.constructor,
    importcpp: "QStyleOptionComboBox(@)", header: "qstyleoption.h".}
proc constructQStyleOptionComboBox*(other: QStyleOptionComboBox): QStyleOptionComboBox {.
    constructor, importcpp: "QStyleOptionComboBox(@)", header: "qstyleoption.h".}





proc constructQStyleOptionTitleBar*(): QStyleOptionTitleBar {.constructor,
    importcpp: "QStyleOptionTitleBar(@)", header: "qstyleoption.h".}
proc constructQStyleOptionTitleBar*(other: QStyleOptionTitleBar): QStyleOptionTitleBar {.
    constructor, importcpp: "QStyleOptionTitleBar(@)", header: "qstyleoption.h".}





proc constructQStyleOptionGroupBox*(): QStyleOptionGroupBox {.constructor,
    importcpp: "QStyleOptionGroupBox(@)", header: "qstyleoption.h".}
proc constructQStyleOptionGroupBox*(other: QStyleOptionGroupBox): QStyleOptionGroupBox {.
    constructor, importcpp: "QStyleOptionGroupBox(@)", header: "qstyleoption.h".}





proc constructQStyleOptionSizeGrip*(): QStyleOptionSizeGrip {.constructor,
    importcpp: "QStyleOptionSizeGrip(@)", header: "qstyleoption.h".}
proc constructQStyleOptionSizeGrip*(other: QStyleOptionSizeGrip): QStyleOptionSizeGrip {.
    constructor, importcpp: "QStyleOptionSizeGrip(@)", header: "qstyleoption.h".}





proc constructQStyleOptionGraphicsItem*(): QStyleOptionGraphicsItem {.constructor,
    importcpp: "QStyleOptionGraphicsItem(@)", header: "qstyleoption.h".}
proc constructQStyleOptionGraphicsItem*(other: QStyleOptionGraphicsItem): QStyleOptionGraphicsItem {.
    constructor, importcpp: "QStyleOptionGraphicsItem(@)", header: "qstyleoption.h".}
proc levelOfDetailFromTransform*(worldTransform: QTransform): Qreal {.
    importcpp: "QStyleOptionGraphicsItem::levelOfDetailFromTransform(@)",
    header: "qstyleoption.h".}
##  template <typename T>
##  T qstyleoption_cast(const QStyleOption *opt)
##  {
##      typedef typename std::remove_cv<typename std::remove_pointer<T>::type>::type Opt;
##      if (opt && opt->version >= Opt::Version && (opt->type == Opt::Type
##          || int(Opt::Type) == QStyleOption::SO_Default
##          || (int(Opt::Type) == QStyleOption::SO_Complex
##              && opt->type > QStyleOption::SO_Complex)))
##          return static_cast<T>(opt);
##      return nullptr;
##  }
##
##  template <typename T>
##  T qstyleoption_cast(QStyleOption *opt)
##  {
##      typedef typename std::remove_cv<typename std::remove_pointer<T>::type>::type Opt;
##      if (opt && opt->version >= Opt::Version && (opt->type == Opt::Type
##          || int(Opt::Type) == QStyleOption::SO_Default
##          || (int(Opt::Type) == QStyleOption::SO_Complex
##              && opt->type > QStyleOption::SO_Complex)))
##          return static_cast<T>(opt);
##      return nullptr;
##  }
##  -------------------------- QStyleHintReturn -------------------------------








proc constructQStyleHintReturn*(version: cint = version; `type`: cint = sH_Default): QStyleHintReturn {.
    constructor, importcpp: "QStyleHintReturn(@)", header: "qstyleoption.h".}
proc destroyQStyleHintReturn*(this: var QStyleHintReturn) {.
    importcpp: "#.~QStyleHintReturn()", header: "qstyleoption.h".}





proc constructQStyleHintReturnMask*(): QStyleHintReturnMask {.constructor,
    importcpp: "QStyleHintReturnMask(@)", header: "qstyleoption.h".}
proc destroyQStyleHintReturnMask*(this: var QStyleHintReturnMask) {.
    importcpp: "#.~QStyleHintReturnMask()", header: "qstyleoption.h".}





proc constructQStyleHintReturnVariant*(): QStyleHintReturnVariant {.constructor,
    importcpp: "QStyleHintReturnVariant(@)", header: "qstyleoption.h".}
proc destroyQStyleHintReturnVariant*(this: var QStyleHintReturnVariant) {.
    importcpp: "#.~QStyleHintReturnVariant()", header: "qstyleoption.h".}
##  template <typename T>
##  T qstyleoption_cast(const QStyleHintReturn *hint)
##  {
##      typedef typename std::remove_cv<typename std::remove_pointer<T>::type>::type Opt;
##      if (hint && hint->version <= Opt::Version &&
##          (hint->type == Opt::Type || int(Opt::Type) == QStyleHintReturn::SH_Default))
##          return static_cast<T>(hint);
##      return nullptr;
##  }
##
##  template <typename T>
##  T qstyleoption_cast(QStyleHintReturn *hint)
##  {
##      typedef typename std::remove_cv<typename std::remove_pointer<T>::type>::type Opt;
##      if (hint && hint->version <= Opt::Version &&
##          (hint->type == Opt::Type || int(Opt::Type) == QStyleHintReturn::SH_Default))
##          return static_cast<T>(hint);
##      return nullptr;
##  }

when not defined(qt_No_Debug_Stream):
  proc `<<`*(debug: QDebug; optionType: QStyleOptionOptionType): QDebug {.
      importcpp: "(# << #)", header: "qstyleoption.h".}
  proc `<<`*(debug: QDebug; option: QStyleOption): QDebug {.importcpp: "(# << #)",
      header: "qstyleoption.h".}
