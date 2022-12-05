##  Copyright (C) 2020 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QDebug"
type
  QStyleOption* {.importcpp: "QStyleOption", header: "qstyleoption.h", bycopy.} = object
    version* {.importc: "version".}: cint
    `type`* {.importc: "type".}: cint
    state* {.importc: "state".}: State
    direction* {.importc: "direction".}: LayoutDirection
    rect* {.importc: "rect".}: QRect
    fontMetrics* {.importc: "fontMetrics".}: QFontMetrics
    palette* {.importc: "palette".}: QPalette
    styleObject* {.importc: "styleObject".}: ptr QObject

  QStyleOptionOptionType* {.size: sizeof(cint),
                           importcpp: "QStyleOption::OptionType",
                           header: "qstyleoption.h".} = enum
    SO_Default, SO_FocusRect, SO_Button, SO_Tab, SO_MenuItem, SO_Frame,
    SO_ProgressBar, SO_ToolBox, SO_Header, SO_DockWidget, SO_ViewItem,
    SO_TabWidgetFrame, SO_TabBarBase, SO_RubberBand, SO_ToolBar, SO_GraphicsItem,
    SO_CustomBase = 0xf00, SO_Complex = 0xf0000, SO_Slider, SO_SpinBox, SO_ToolButton,
    SO_ComboBox, SO_TitleBar, SO_GroupBox, SO_SizeGrip,
    SO_ComplexCustomBase = 0xf000000


type
  QStyleOptionStyleOptionType* {.size: sizeof(cint),
                                importcpp: "QStyleOption::StyleOptionType",
                                header: "qstyleoption.h".} = enum
    Type = sO_Default


type
  QStyleOptionStyleOptionVersion* {.size: sizeof(cint), importcpp: "QStyleOption::StyleOptionVersion",
                                   header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOption*(version: cint = version; `type`: cint = sO_Default): QStyleOption {.
    constructor, importcpp: "QStyleOption(@)", header: "qstyleoption.h".}
proc constructQStyleOption*(other: QStyleOption): QStyleOption {.constructor,
    importcpp: "QStyleOption(@)", header: "qstyleoption.h".}
proc destroyQStyleOption*(this: var QStyleOption) {.importcpp: "#.~QStyleOption()",
    header: "qstyleoption.h".}
proc initFrom*(this: var QStyleOption; w: ptr QWidget) {.importcpp: "initFrom",
    header: "qstyleoption.h".}
type
  QStyleOptionFocusRect* {.importcpp: "QStyleOptionFocusRect",
                          header: "qstyleoption.h", bycopy.} = object of QStyleOption
    backgroundColor* {.importc: "backgroundColor".}: QColor

  QStyleOptionFocusRectStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleOptionFocusRect::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sO_FocusRect


type
  QStyleOptionFocusRectStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionFocusRect::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionFocusRect*(): QStyleOptionFocusRect {.constructor,
    importcpp: "QStyleOptionFocusRect(@)", header: "qstyleoption.h".}
proc constructQStyleOptionFocusRect*(other: QStyleOptionFocusRect): QStyleOptionFocusRect {.
    constructor, importcpp: "QStyleOptionFocusRect(@)", header: "qstyleoption.h".}
type
  QStyleOptionFrame* {.importcpp: "QStyleOptionFrame", header: "qstyleoption.h",
                      bycopy.} = object of QStyleOption
    lineWidth* {.importc: "lineWidth".}: cint
    midLineWidth* {.importc: "midLineWidth".}: cint
    features* {.importc: "features".}: FrameFeatures
    frameShape* {.importc: "frameShape".}: Shape

  QStyleOptionFrameStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionFrame::StyleOptionType",
                                     header: "qstyleoption.h".} = enum
    Type = sO_Frame


type
  QStyleOptionFrameStyleOptionVersion* {.size: sizeof(cint), importcpp: "QStyleOptionFrame::StyleOptionVersion",
                                        header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionFrameFrameFeature* {.size: sizeof(cint),
                                  importcpp: "QStyleOptionFrame::FrameFeature",
                                  header: "qstyleoption.h".} = enum
    None = 0x00, Flat = 0x01, Rounded = 0x02


proc constructQStyleOptionFrame*(): QStyleOptionFrame {.constructor,
    importcpp: "QStyleOptionFrame(@)", header: "qstyleoption.h".}
proc constructQStyleOptionFrame*(other: QStyleOptionFrame): QStyleOptionFrame {.
    constructor, importcpp: "QStyleOptionFrame(@)", header: "qstyleoption.h".}
##  #if QT_CONFIG(tabwidget)

type
  QStyleOptionTabWidgetFrame* {.importcpp: "QStyleOptionTabWidgetFrame",
                               header: "qstyleoption.h", bycopy.} = object of QStyleOption
    lineWidth* {.importc: "lineWidth".}: cint
    midLineWidth* {.importc: "midLineWidth".}: cint
    shape* {.importc: "shape".}: Shape
    tabBarSize* {.importc: "tabBarSize".}: QSize
    rightCornerWidgetSize* {.importc: "rightCornerWidgetSize".}: QSize
    leftCornerWidgetSize* {.importc: "leftCornerWidgetSize".}: QSize
    tabBarRect* {.importc: "tabBarRect".}: QRect
    selectedTabRect* {.importc: "selectedTabRect".}: QRect

  QStyleOptionTabWidgetFrameStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleOptionTabWidgetFrame::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sO_TabWidgetFrame


type
  QStyleOptionTabWidgetFrameStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionTabWidgetFrame::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionTabWidgetFrame*(): QStyleOptionTabWidgetFrame {.
    constructor, importcpp: "QStyleOptionTabWidgetFrame(@)",
    header: "qstyleoption.h".}
proc constructQStyleOptionTabWidgetFrame*(other: QStyleOptionTabWidgetFrame): QStyleOptionTabWidgetFrame {.
    constructor, importcpp: "QStyleOptionTabWidgetFrame(@)",
    header: "qstyleoption.h".}
##  #endif // QT_CONFIG(tabwidget)

type
  QStyleOptionTabBarBase* {.importcpp: "QStyleOptionTabBarBase",
                           header: "qstyleoption.h", bycopy.} = object of QStyleOption
    shape* {.importc: "shape".}: Shape
    tabBarRect* {.importc: "tabBarRect".}: QRect
    selectedTabRect* {.importc: "selectedTabRect".}: QRect
    documentMode* {.importc: "documentMode".}: bool

  QStyleOptionTabBarBaseStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleOptionTabBarBase::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sO_TabBarBase


type
  QStyleOptionTabBarBaseStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionTabBarBase::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionTabBarBase*(): QStyleOptionTabBarBase {.constructor,
    importcpp: "QStyleOptionTabBarBase(@)", header: "qstyleoption.h".}
proc constructQStyleOptionTabBarBase*(other: QStyleOptionTabBarBase): QStyleOptionTabBarBase {.
    constructor, importcpp: "QStyleOptionTabBarBase(@)", header: "qstyleoption.h".}
type
  QStyleOptionHeader* {.importcpp: "QStyleOptionHeader", header: "qstyleoption.h",
                       bycopy.} = object of QStyleOption
    section* {.importc: "section".}: cint
    text* {.importc: "text".}: QString
    textAlignment* {.importc: "textAlignment".}: Alignment
    icon* {.importc: "icon".}: QIcon
    iconAlignment* {.importc: "iconAlignment".}: Alignment
    position* {.importc: "position".}: QStyleOptionHeaderSectionPosition
    selectedPosition* {.importc: "selectedPosition".}: QStyleOptionHeaderSelectedPosition
    sortIndicator* {.importc: "sortIndicator".}: QStyleOptionHeaderSortIndicator
    orientation* {.importc: "orientation".}: Orientation

  QStyleOptionHeaderStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionHeader::StyleOptionType",
                                      header: "qstyleoption.h".} = enum
    Type = sO_Header


type
  QStyleOptionHeaderStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionHeader::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionHeaderSectionPosition* {.size: sizeof(cint), importcpp: "QStyleOptionHeader::SectionPosition",
                                      header: "qstyleoption.h".} = enum
    Beginning, Middle, End, OnlyOneSection


type
  QStyleOptionHeaderSelectedPosition* {.size: sizeof(cint), importcpp: "QStyleOptionHeader::SelectedPosition",
                                       header: "qstyleoption.h".} = enum
    NotAdjacent, NextIsSelected, PreviousIsSelected, NextAndPreviousAreSelected


type
  QStyleOptionHeaderSortIndicator* {.size: sizeof(cint), importcpp: "QStyleOptionHeader::SortIndicator",
                                    header: "qstyleoption.h".} = enum
    None, SortUp, SortDown


proc constructQStyleOptionHeader*(): QStyleOptionHeader {.constructor,
    importcpp: "QStyleOptionHeader(@)", header: "qstyleoption.h".}
proc constructQStyleOptionHeader*(other: QStyleOptionHeader): QStyleOptionHeader {.
    constructor, importcpp: "QStyleOptionHeader(@)", header: "qstyleoption.h".}
type
  QStyleOptionHeaderV2* {.importcpp: "QStyleOptionHeaderV2",
                         header: "qstyleoption.h", bycopy.} = object of QStyleOptionHeader
    textElideMode* {.importc: "textElideMode".} {.bitsize: 2.}: TextElideMode
    isSectionDragTarget* {.importc: "isSectionDragTarget".} {.bitsize: 1.}: bool
    unused* {.importc: "unused".} {.bitsize: 29.}: cint

  QStyleOptionHeaderV2StyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionHeaderV2::StyleOptionType",
                                        header: "qstyleoption.h".} = enum
    Type = sO_Header


type
  QStyleOptionHeaderV2StyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionHeaderV2::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 2


proc constructQStyleOptionHeaderV2*(): QStyleOptionHeaderV2 {.constructor,
    importcpp: "QStyleOptionHeaderV2(@)", header: "qstyleoption.h".}
proc constructQStyleOptionHeaderV2*(other: QStyleOptionHeaderV2): QStyleOptionHeaderV2 {.
    constructor, importcpp: "QStyleOptionHeaderV2(@)", header: "qstyleoption.h".}
type
  QStyleOptionButton* {.importcpp: "QStyleOptionButton", header: "qstyleoption.h",
                       bycopy.} = object of QStyleOption
    features* {.importc: "features".}: ButtonFeatures
    text* {.importc: "text".}: QString
    icon* {.importc: "icon".}: QIcon
    iconSize* {.importc: "iconSize".}: QSize

  QStyleOptionButtonStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionButton::StyleOptionType",
                                      header: "qstyleoption.h".} = enum
    Type = sO_Button


type
  QStyleOptionButtonStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionButton::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionButtonButtonFeature* {.size: sizeof(cint), importcpp: "QStyleOptionButton::ButtonFeature",
                                    header: "qstyleoption.h".} = enum
    None = 0x00, Flat = 0x01, HasMenu = 0x02, DefaultButton = 0x04,
    AutoDefaultButton = 0x08, CommandLinkButton = 0x10


proc constructQStyleOptionButton*(): QStyleOptionButton {.constructor,
    importcpp: "QStyleOptionButton(@)", header: "qstyleoption.h".}
proc constructQStyleOptionButton*(other: QStyleOptionButton): QStyleOptionButton {.
    constructor, importcpp: "QStyleOptionButton(@)", header: "qstyleoption.h".}
type
  QStyleOptionTab* {.importcpp: "QStyleOptionTab", header: "qstyleoption.h", bycopy.} = object of QStyleOption
    shape* {.importc: "shape".}: Shape
    text* {.importc: "text".}: QString
    icon* {.importc: "icon".}: QIcon
    row* {.importc: "row".}: cint
    position* {.importc: "position".}: QStyleOptionTabTabPosition
    selectedPosition* {.importc: "selectedPosition".}: QStyleOptionTabSelectedPosition
    cornerWidgets* {.importc: "cornerWidgets".}: CornerWidgets
    iconSize* {.importc: "iconSize".}: QSize
    documentMode* {.importc: "documentMode".}: bool
    leftButtonSize* {.importc: "leftButtonSize".}: QSize
    rightButtonSize* {.importc: "rightButtonSize".}: QSize
    features* {.importc: "features".}: TabFeatures
    tabIndex* {.importc: "tabIndex".}: cint = -1

  QStyleOptionTabStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionTab::StyleOptionType",
                                   header: "qstyleoption.h".} = enum
    Type = sO_Tab


type
  QStyleOptionTabStyleOptionVersion* {.size: sizeof(cint), importcpp: "QStyleOptionTab::StyleOptionVersion",
                                      header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionTabTabPosition* {.size: sizeof(cint),
                               importcpp: "QStyleOptionTab::TabPosition",
                               header: "qstyleoption.h".} = enum
    Beginning, Middle, End, OnlyOneTab


type
  QStyleOptionTabSelectedPosition* {.size: sizeof(cint), importcpp: "QStyleOptionTab::SelectedPosition",
                                    header: "qstyleoption.h".} = enum
    NotAdjacent, NextIsSelected, PreviousIsSelected


type
  QStyleOptionTabCornerWidget* {.size: sizeof(cint),
                                importcpp: "QStyleOptionTab::CornerWidget",
                                header: "qstyleoption.h".} = enum
    NoCornerWidgets = 0x00, LeftCornerWidget = 0x01, RightCornerWidget = 0x02


type
  QStyleOptionTabTabFeature* {.size: sizeof(cint),
                              importcpp: "QStyleOptionTab::TabFeature",
                              header: "qstyleoption.h".} = enum
    None = 0x00, HasFrame = 0x01


proc constructQStyleOptionTab*(): QStyleOptionTab {.constructor,
    importcpp: "QStyleOptionTab(@)", header: "qstyleoption.h".}
proc constructQStyleOptionTab*(other: QStyleOptionTab): QStyleOptionTab {.
    constructor, importcpp: "QStyleOptionTab(@)", header: "qstyleoption.h".}
type
  QStyleOptionToolBar* {.importcpp: "QStyleOptionToolBar",
                        header: "qstyleoption.h", bycopy.} = object of QStyleOption
    positionOfLine* {.importc: "positionOfLine".}: QStyleOptionToolBarToolBarPosition ##  The toolbar line position
    positionWithinLine* {.importc: "positionWithinLine".}: QStyleOptionToolBarToolBarPosition ##  The position within a toolbar
    toolBarArea* {.importc: "toolBarArea".}: ToolBarArea ##  The toolbar docking area
    features* {.importc: "features".}: ToolBarFeatures
    lineWidth* {.importc: "lineWidth".}: cint
    midLineWidth* {.importc: "midLineWidth".}: cint

  QStyleOptionToolBarStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionToolBar::StyleOptionType",
                                       header: "qstyleoption.h".} = enum
    Type = sO_ToolBar


type
  QStyleOptionToolBarStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionToolBar::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionToolBarToolBarPosition* {.size: sizeof(cint), importcpp: "QStyleOptionToolBar::ToolBarPosition",
                                       header: "qstyleoption.h".} = enum
    Beginning, Middle, End, OnlyOne


type
  QStyleOptionToolBarToolBarFeature* {.size: sizeof(cint), importcpp: "QStyleOptionToolBar::ToolBarFeature",
                                      header: "qstyleoption.h".} = enum
    None = 0x0, Movable = 0x1


proc constructQStyleOptionToolBar*(): QStyleOptionToolBar {.constructor,
    importcpp: "QStyleOptionToolBar(@)", header: "qstyleoption.h".}
proc constructQStyleOptionToolBar*(other: QStyleOptionToolBar): QStyleOptionToolBar {.
    constructor, importcpp: "QStyleOptionToolBar(@)", header: "qstyleoption.h".}
type
  QStyleOptionProgressBar* {.importcpp: "QStyleOptionProgressBar",
                            header: "qstyleoption.h", bycopy.} = object of QStyleOption
    minimum* {.importc: "minimum".}: cint
    maximum* {.importc: "maximum".}: cint
    progress* {.importc: "progress".}: cint
    text* {.importc: "text".}: QString
    textAlignment* {.importc: "textAlignment".}: Alignment
    textVisible* {.importc: "textVisible".}: bool
    invertedAppearance* {.importc: "invertedAppearance".}: bool
    bottomToTop* {.importc: "bottomToTop".}: bool

  QStyleOptionProgressBarStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleOptionProgressBar::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sO_ProgressBar


type
  QStyleOptionProgressBarStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionProgressBar::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionProgressBar*(): QStyleOptionProgressBar {.constructor,
    importcpp: "QStyleOptionProgressBar(@)", header: "qstyleoption.h".}
proc constructQStyleOptionProgressBar*(other: QStyleOptionProgressBar): QStyleOptionProgressBar {.
    constructor, importcpp: "QStyleOptionProgressBar(@)", header: "qstyleoption.h".}
type
  QStyleOptionMenuItem* {.importcpp: "QStyleOptionMenuItem",
                         header: "qstyleoption.h", bycopy.} = object of QStyleOption
    menuItemType* {.importc: "menuItemType".}: QStyleOptionMenuItemMenuItemType
    checkType* {.importc: "checkType".}: QStyleOptionMenuItemCheckType
    checked* {.importc: "checked".}: bool
    menuHasCheckableItems* {.importc: "menuHasCheckableItems".}: bool
    menuRect* {.importc: "menuRect".}: QRect
    text* {.importc: "text".}: QString
    icon* {.importc: "icon".}: QIcon
    maxIconWidth* {.importc: "maxIconWidth".}: cint
    reservedShortcutWidth* {.importc: "reservedShortcutWidth".}: cint
    font* {.importc: "font".}: QFont

  QStyleOptionMenuItemStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionMenuItem::StyleOptionType",
                                        header: "qstyleoption.h".} = enum
    Type = sO_MenuItem


type
  QStyleOptionMenuItemStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionMenuItem::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionMenuItemMenuItemType* {.size: sizeof(cint), importcpp: "QStyleOptionMenuItem::MenuItemType",
                                     header: "qstyleoption.h".} = enum
    Normal, DefaultItem, Separator, SubMenu, Scroller, TearOff, Margin, EmptyArea


type
  QStyleOptionMenuItemCheckType* {.size: sizeof(cint),
                                  importcpp: "QStyleOptionMenuItem::CheckType",
                                  header: "qstyleoption.h".} = enum
    NotCheckable, Exclusive, NonExclusive


proc constructQStyleOptionMenuItem*(): QStyleOptionMenuItem {.constructor,
    importcpp: "QStyleOptionMenuItem(@)", header: "qstyleoption.h".}
proc constructQStyleOptionMenuItem*(other: QStyleOptionMenuItem): QStyleOptionMenuItem {.
    constructor, importcpp: "QStyleOptionMenuItem(@)", header: "qstyleoption.h".}
type
  QStyleOptionDockWidget* {.importcpp: "QStyleOptionDockWidget",
                           header: "qstyleoption.h", bycopy.} = object of QStyleOption
    title* {.importc: "title".}: QString
    closable* {.importc: "closable".}: bool
    movable* {.importc: "movable".}: bool
    floatable* {.importc: "floatable".}: bool
    verticalTitleBar* {.importc: "verticalTitleBar".}: bool

  QStyleOptionDockWidgetStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleOptionDockWidget::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sO_DockWidget


type
  QStyleOptionDockWidgetStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionDockWidget::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionDockWidget*(): QStyleOptionDockWidget {.constructor,
    importcpp: "QStyleOptionDockWidget(@)", header: "qstyleoption.h".}
proc constructQStyleOptionDockWidget*(other: QStyleOptionDockWidget): QStyleOptionDockWidget {.
    constructor, importcpp: "QStyleOptionDockWidget(@)", header: "qstyleoption.h".}
type
  QStyleOptionViewItem* {.importcpp: "QStyleOptionViewItem",
                         header: "qstyleoption.h", bycopy.} = object of QStyleOption
    displayAlignment* {.importc: "displayAlignment".}: Alignment
    decorationAlignment* {.importc: "decorationAlignment".}: Alignment
    textElideMode* {.importc: "textElideMode".}: TextElideMode
    decorationPosition* {.importc: "decorationPosition".}: QStyleOptionViewItemPosition
    decorationSize* {.importc: "decorationSize".}: QSize
    font* {.importc: "font".}: QFont
    showDecorationSelected* {.importc: "showDecorationSelected".}: bool
    features* {.importc: "features".}: ViewItemFeatures
    locale* {.importc: "locale".}: QLocale
    widget* {.importc: "widget".}: ptr QWidget
    index* {.importc: "index".}: QModelIndex
    checkState* {.importc: "checkState".}: CheckState
    icon* {.importc: "icon".}: QIcon
    text* {.importc: "text".}: QString
    viewItemPosition* {.importc: "viewItemPosition".}: QStyleOptionViewItemViewItemPosition
    backgroundBrush* {.importc: "backgroundBrush".}: QBrush

  QStyleOptionViewItemStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionViewItem::StyleOptionType",
                                        header: "qstyleoption.h".} = enum
    Type = sO_ViewItem


type
  QStyleOptionViewItemStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionViewItem::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionViewItemPosition* {.size: sizeof(cint),
                                 importcpp: "QStyleOptionViewItem::Position",
                                 header: "qstyleoption.h".} = enum
    Left, Right, Top, Bottom


type
  QStyleOptionViewItemViewItemFeature* {.size: sizeof(cint), importcpp: "QStyleOptionViewItem::ViewItemFeature",
                                        header: "qstyleoption.h".} = enum
    None = 0x00, WrapText = 0x01, Alternate = 0x02, HasCheckIndicator = 0x04,
    HasDisplay = 0x08, HasDecoration = 0x10


type
  QStyleOptionViewItemViewItemPosition* {.size: sizeof(cint),
      importcpp: "QStyleOptionViewItem::ViewItemPosition",
      header: "qstyleoption.h".} = enum
    Invalid, Beginning, Middle, End, OnlyOne


proc constructQStyleOptionViewItem*(): QStyleOptionViewItem {.constructor,
    importcpp: "QStyleOptionViewItem(@)", header: "qstyleoption.h".}
proc constructQStyleOptionViewItem*(other: QStyleOptionViewItem): QStyleOptionViewItem {.
    constructor, importcpp: "QStyleOptionViewItem(@)", header: "qstyleoption.h".}
type
  QStyleOptionToolBox* {.importcpp: "QStyleOptionToolBox",
                        header: "qstyleoption.h", bycopy.} = object of QStyleOption
    text* {.importc: "text".}: QString
    icon* {.importc: "icon".}: QIcon
    position* {.importc: "position".}: QStyleOptionToolBoxTabPosition
    selectedPosition* {.importc: "selectedPosition".}: QStyleOptionToolBoxSelectedPosition

  QStyleOptionToolBoxStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionToolBox::StyleOptionType",
                                       header: "qstyleoption.h".} = enum
    Type = sO_ToolBox


type
  QStyleOptionToolBoxStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionToolBox::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionToolBoxTabPosition* {.size: sizeof(cint), importcpp: "QStyleOptionToolBox::TabPosition",
                                   header: "qstyleoption.h".} = enum
    Beginning, Middle, End, OnlyOneTab


type
  QStyleOptionToolBoxSelectedPosition* {.size: sizeof(cint), importcpp: "QStyleOptionToolBox::SelectedPosition",
                                        header: "qstyleoption.h".} = enum
    NotAdjacent, NextIsSelected, PreviousIsSelected


proc constructQStyleOptionToolBox*(): QStyleOptionToolBox {.constructor,
    importcpp: "QStyleOptionToolBox(@)", header: "qstyleoption.h".}
proc constructQStyleOptionToolBox*(other: QStyleOptionToolBox): QStyleOptionToolBox {.
    constructor, importcpp: "QStyleOptionToolBox(@)", header: "qstyleoption.h".}
type
  QStyleOptionRubberBand* {.importcpp: "QStyleOptionRubberBand",
                           header: "qstyleoption.h", bycopy.} = object of QStyleOption
    shape* {.importc: "shape".}: Shape
    opaque* {.importc: "opaque".}: bool

  QStyleOptionRubberBandStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleOptionRubberBand::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sO_RubberBand


type
  QStyleOptionRubberBandStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionRubberBand::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionRubberBand*(): QStyleOptionRubberBand {.constructor,
    importcpp: "QStyleOptionRubberBand(@)", header: "qstyleoption.h".}
proc constructQStyleOptionRubberBand*(other: QStyleOptionRubberBand): QStyleOptionRubberBand {.
    constructor, importcpp: "QStyleOptionRubberBand(@)", header: "qstyleoption.h".}
##  -------------------------- Complex style options -------------------------------

type
  QStyleOptionComplex* {.importcpp: "QStyleOptionComplex",
                        header: "qstyleoption.h", bycopy.} = object of QStyleOption
    subControls* {.importc: "subControls".}: SubControls
    activeSubControls* {.importc: "activeSubControls".}: SubControls

  QStyleOptionComplexStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionComplex::StyleOptionType",
                                       header: "qstyleoption.h".} = enum
    Type = sO_Complex


type
  QStyleOptionComplexStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionComplex::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionComplex*(version: cint = version; `type`: cint = sO_Complex): QStyleOptionComplex {.
    constructor, importcpp: "QStyleOptionComplex(@)", header: "qstyleoption.h".}
proc constructQStyleOptionComplex*(other: QStyleOptionComplex): QStyleOptionComplex {.
    constructor, importcpp: "QStyleOptionComplex(@)", header: "qstyleoption.h".}
type
  QStyleOptionSlider* {.importcpp: "QStyleOptionSlider", header: "qstyleoption.h",
                       bycopy.} = object of QStyleOptionComplex
    orientation* {.importc: "orientation".}: Orientation
    minimum* {.importc: "minimum".}: cint
    maximum* {.importc: "maximum".}: cint
    tickPosition* {.importc: "tickPosition".}: TickPosition
    tickInterval* {.importc: "tickInterval".}: cint
    upsideDown* {.importc: "upsideDown".}: bool
    sliderPosition* {.importc: "sliderPosition".}: cint
    sliderValue* {.importc: "sliderValue".}: cint
    singleStep* {.importc: "singleStep".}: cint
    pageStep* {.importc: "pageStep".}: cint
    notchTarget* {.importc: "notchTarget".}: Qreal
    dialWrapping* {.importc: "dialWrapping".}: bool
    keyboardModifiers* {.importc: "keyboardModifiers".}: KeyboardModifiers

  QStyleOptionSliderStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionSlider::StyleOptionType",
                                      header: "qstyleoption.h".} = enum
    Type = sO_Slider


type
  QStyleOptionSliderStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionSlider::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionSlider*(): QStyleOptionSlider {.constructor,
    importcpp: "QStyleOptionSlider(@)", header: "qstyleoption.h".}
proc constructQStyleOptionSlider*(other: QStyleOptionSlider): QStyleOptionSlider {.
    constructor, importcpp: "QStyleOptionSlider(@)", header: "qstyleoption.h".}
type
  QStyleOptionSpinBox* {.importcpp: "QStyleOptionSpinBox",
                        header: "qstyleoption.h", bycopy.} = object of QStyleOptionComplex
    buttonSymbols* {.importc: "buttonSymbols".}: ButtonSymbols
    stepEnabled* {.importc: "stepEnabled".}: StepEnabled
    frame* {.importc: "frame".}: bool

  QStyleOptionSpinBoxStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionSpinBox::StyleOptionType",
                                       header: "qstyleoption.h".} = enum
    Type = sO_SpinBox


type
  QStyleOptionSpinBoxStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionSpinBox::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionSpinBox*(): QStyleOptionSpinBox {.constructor,
    importcpp: "QStyleOptionSpinBox(@)", header: "qstyleoption.h".}
proc constructQStyleOptionSpinBox*(other: QStyleOptionSpinBox): QStyleOptionSpinBox {.
    constructor, importcpp: "QStyleOptionSpinBox(@)", header: "qstyleoption.h".}
type
  QStyleOptionToolButton* {.importcpp: "QStyleOptionToolButton",
                           header: "qstyleoption.h", bycopy.} = object of QStyleOptionComplex
    features* {.importc: "features".}: ToolButtonFeatures
    icon* {.importc: "icon".}: QIcon
    iconSize* {.importc: "iconSize".}: QSize
    text* {.importc: "text".}: QString
    arrowType* {.importc: "arrowType".}: ArrowType
    toolButtonStyle* {.importc: "toolButtonStyle".}: ToolButtonStyle
    pos* {.importc: "pos".}: QPoint
    font* {.importc: "font".}: QFont

  QStyleOptionToolButtonStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleOptionToolButton::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sO_ToolButton


type
  QStyleOptionToolButtonStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionToolButton::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


type
  QStyleOptionToolButtonToolButtonFeature* {.size: sizeof(cint),
      importcpp: "QStyleOptionToolButton::ToolButtonFeature",
      header: "qstyleoption.h".} = enum
    None = 0x00, Arrow = 0x01, Menu = 0x04, MenuButtonPopup = menu, PopupDelay = 0x08,
    HasMenu = 0x10


proc constructQStyleOptionToolButton*(): QStyleOptionToolButton {.constructor,
    importcpp: "QStyleOptionToolButton(@)", header: "qstyleoption.h".}
proc constructQStyleOptionToolButton*(other: QStyleOptionToolButton): QStyleOptionToolButton {.
    constructor, importcpp: "QStyleOptionToolButton(@)", header: "qstyleoption.h".}
type
  QStyleOptionComboBox* {.importcpp: "QStyleOptionComboBox",
                         header: "qstyleoption.h", bycopy.} = object of QStyleOptionComplex
    editable* {.importc: "editable".}: bool
    popupRect* {.importc: "popupRect".}: QRect
    frame* {.importc: "frame".}: bool
    currentText* {.importc: "currentText".}: QString
    currentIcon* {.importc: "currentIcon".}: QIcon
    iconSize* {.importc: "iconSize".}: QSize
    textAlignment* {.importc: "textAlignment".}: Alignment = alignLeft or
        alignVCenter

  QStyleOptionComboBoxStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionComboBox::StyleOptionType",
                                        header: "qstyleoption.h".} = enum
    Type = sO_ComboBox


type
  QStyleOptionComboBoxStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionComboBox::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionComboBox*(): QStyleOptionComboBox {.constructor,
    importcpp: "QStyleOptionComboBox(@)", header: "qstyleoption.h".}
proc constructQStyleOptionComboBox*(other: QStyleOptionComboBox): QStyleOptionComboBox {.
    constructor, importcpp: "QStyleOptionComboBox(@)", header: "qstyleoption.h".}
type
  QStyleOptionTitleBar* {.importcpp: "QStyleOptionTitleBar",
                         header: "qstyleoption.h", bycopy.} = object of QStyleOptionComplex
    text* {.importc: "text".}: QString
    icon* {.importc: "icon".}: QIcon
    titleBarState* {.importc: "titleBarState".}: cint
    titleBarFlags* {.importc: "titleBarFlags".}: WindowFlags

  QStyleOptionTitleBarStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionTitleBar::StyleOptionType",
                                        header: "qstyleoption.h".} = enum
    Type = sO_TitleBar


type
  QStyleOptionTitleBarStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionTitleBar::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionTitleBar*(): QStyleOptionTitleBar {.constructor,
    importcpp: "QStyleOptionTitleBar(@)", header: "qstyleoption.h".}
proc constructQStyleOptionTitleBar*(other: QStyleOptionTitleBar): QStyleOptionTitleBar {.
    constructor, importcpp: "QStyleOptionTitleBar(@)", header: "qstyleoption.h".}
type
  QStyleOptionGroupBox* {.importcpp: "QStyleOptionGroupBox",
                         header: "qstyleoption.h", bycopy.} = object of QStyleOptionComplex
    features* {.importc: "features".}: QStyleOptionFrameFrameFeatures
    text* {.importc: "text".}: QString
    textAlignment* {.importc: "textAlignment".}: Alignment
    textColor* {.importc: "textColor".}: QColor
    lineWidth* {.importc: "lineWidth".}: cint
    midLineWidth* {.importc: "midLineWidth".}: cint

  QStyleOptionGroupBoxStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionGroupBox::StyleOptionType",
                                        header: "qstyleoption.h".} = enum
    Type = sO_GroupBox


type
  QStyleOptionGroupBoxStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionGroupBox::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionGroupBox*(): QStyleOptionGroupBox {.constructor,
    importcpp: "QStyleOptionGroupBox(@)", header: "qstyleoption.h".}
proc constructQStyleOptionGroupBox*(other: QStyleOptionGroupBox): QStyleOptionGroupBox {.
    constructor, importcpp: "QStyleOptionGroupBox(@)", header: "qstyleoption.h".}
type
  QStyleOptionSizeGrip* {.importcpp: "QStyleOptionSizeGrip",
                         header: "qstyleoption.h", bycopy.} = object of QStyleOptionComplex
    corner* {.importc: "corner".}: Corner

  QStyleOptionSizeGripStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleOptionSizeGrip::StyleOptionType",
                                        header: "qstyleoption.h".} = enum
    Type = sO_SizeGrip


type
  QStyleOptionSizeGripStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionSizeGrip::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleOptionSizeGrip*(): QStyleOptionSizeGrip {.constructor,
    importcpp: "QStyleOptionSizeGrip(@)", header: "qstyleoption.h".}
proc constructQStyleOptionSizeGrip*(other: QStyleOptionSizeGrip): QStyleOptionSizeGrip {.
    constructor, importcpp: "QStyleOptionSizeGrip(@)", header: "qstyleoption.h".}
type
  QStyleOptionGraphicsItem* {.importcpp: "QStyleOptionGraphicsItem",
                             header: "qstyleoption.h", bycopy.} = object of QStyleOption
    exposedRect* {.importc: "exposedRect".}: QRectF

  QStyleOptionGraphicsItemStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleOptionGraphicsItem::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sO_GraphicsItem


type
  QStyleOptionGraphicsItemStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleOptionGraphicsItem::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


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

type
  QStyleHintReturn* {.importcpp: "QStyleHintReturn", header: "qstyleoption.h", bycopy.} = object
    version* {.importc: "version".}: cint
    `type`* {.importc: "type".}: cint

  QStyleHintReturnHintReturnType* {.size: sizeof(cint), importcpp: "QStyleHintReturn::HintReturnType",
                                   header: "qstyleoption.h".} = enum
    SH_Default = 0xf000, SH_Mask, SH_Variant


type
  QStyleHintReturnStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleHintReturn::StyleOptionType",
                                    header: "qstyleoption.h".} = enum
    Type = sH_Default


type
  QStyleHintReturnStyleOptionVersion* {.size: sizeof(cint), importcpp: "QStyleHintReturn::StyleOptionVersion",
                                       header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleHintReturn*(version: cint = version; `type`: cint = sH_Default): QStyleHintReturn {.
    constructor, importcpp: "QStyleHintReturn(@)", header: "qstyleoption.h".}
proc destroyQStyleHintReturn*(this: var QStyleHintReturn) {.
    importcpp: "#.~QStyleHintReturn()", header: "qstyleoption.h".}
type
  QStyleHintReturnMask* {.importcpp: "QStyleHintReturnMask",
                         header: "qstyleoption.h", bycopy.} = object of QStyleHintReturn
    region* {.importc: "region".}: QRegion

  QStyleHintReturnMaskStyleOptionType* {.size: sizeof(cint), importcpp: "QStyleHintReturnMask::StyleOptionType",
                                        header: "qstyleoption.h".} = enum
    Type = sH_Mask


type
  QStyleHintReturnMaskStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleHintReturnMask::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


proc constructQStyleHintReturnMask*(): QStyleHintReturnMask {.constructor,
    importcpp: "QStyleHintReturnMask(@)", header: "qstyleoption.h".}
proc destroyQStyleHintReturnMask*(this: var QStyleHintReturnMask) {.
    importcpp: "#.~QStyleHintReturnMask()", header: "qstyleoption.h".}
type
  QStyleHintReturnVariant* {.importcpp: "QStyleHintReturnVariant",
                            header: "qstyleoption.h", bycopy.} = object of QStyleHintReturn
    variant* {.importc: "variant".}: QVariant

  QStyleHintReturnVariantStyleOptionType* {.size: sizeof(cint),
      importcpp: "QStyleHintReturnVariant::StyleOptionType",
      header: "qstyleoption.h".} = enum
    Type = sH_Variant


type
  QStyleHintReturnVariantStyleOptionVersion* {.size: sizeof(cint),
      importcpp: "QStyleHintReturnVariant::StyleOptionVersion",
      header: "qstyleoption.h".} = enum
    Version = 1


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