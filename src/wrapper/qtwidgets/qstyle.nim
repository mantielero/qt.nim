##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QAction"
discard "forward decl of QDebug"
discard "forward decl of QTab"
discard "forward decl of QFontMetrics"
discard "forward decl of QStyleHintReturn"
discard "forward decl of QStyleOption"
discard "forward decl of QStyleOptionComplex"
discard "forward decl of QStylePrivate"
type
  QStyle* {.importcpp: "QStyle", header: "qstyle.h", bycopy.} = object of QObject


proc constructQStyle*(): QStyle {.constructor, importcpp: "QStyle(@)",
                               header: "qstyle.h".}
proc destroyQStyle*(this: var QStyle) {.importcpp: "#.~QStyle()", header: "qstyle.h".}
proc name*(this: QStyle): QString {.noSideEffect, importcpp: "name", header: "qstyle.h".}
proc polish*(this: var QStyle; widget: ptr QWidget) {.importcpp: "polish",
    header: "qstyle.h".}
proc unpolish*(this: var QStyle; widget: ptr QWidget) {.importcpp: "unpolish",
    header: "qstyle.h".}
proc polish*(this: var QStyle; application: ptr QApplication) {.importcpp: "polish",
    header: "qstyle.h".}
proc unpolish*(this: var QStyle; application: ptr QApplication) {.
    importcpp: "unpolish", header: "qstyle.h".}
proc polish*(this: var QStyle; palette: var QPalette) {.importcpp: "polish",
    header: "qstyle.h".}
proc itemTextRect*(this: QStyle; fm: QFontMetrics; r: QRect; flags: cint; enabled: bool;
                  text: QString): QRect {.noSideEffect, importcpp: "itemTextRect",
                                       header: "qstyle.h".}
proc itemPixmapRect*(this: QStyle; r: QRect; flags: cint; pixmap: QPixmap): QRect {.
    noSideEffect, importcpp: "itemPixmapRect", header: "qstyle.h".}
proc drawItemText*(this: QStyle; painter: ptr QPainter; rect: QRect; flags: cint;
                  pal: QPalette; enabled: bool; text: QString;
                  textRole: ColorRole = noRole) {.noSideEffect,
    importcpp: "drawItemText", header: "qstyle.h".}
proc drawItemPixmap*(this: QStyle; painter: ptr QPainter; rect: QRect; alignment: cint;
                    pixmap: QPixmap) {.noSideEffect, importcpp: "drawItemPixmap",
                                     header: "qstyle.h".}
proc standardPalette*(this: QStyle): QPalette {.noSideEffect,
    importcpp: "standardPalette", header: "qstyle.h".}
type
  QStyleStateFlag* {.size: sizeof(cint), importcpp: "QStyle::StateFlag",
                    header: "qstyle.h".} = enum
    StateNone = 0x00000000, StateEnabled = 0x00000001, StateRaised = 0x00000002,
    StateSunken = 0x00000004, StateOff = 0x00000008, StateNoChange = 0x00000010,
    StateOn = 0x00000020, StateDownArrow = 0x00000040, StateHorizontal = 0x00000080,
    StateHasFocus = 0x00000100, StateTop = 0x00000200, StateBottom = 0x00000400,
    StateFocusAtBorder = 0x00000800, StateAutoRaise = 0x00001000,
    StateMouseOver = 0x00002000, StateUpArrow = 0x00004000,
    StateSelected = 0x00008000, StateActive = 0x00010000, StateWindow = 0x00020000,
    StateOpen = 0x00040000, StateChildren = 0x00080000, StateItem = 0x00100000,
    StateSibling = 0x00200000, StateEditing = 0x00400000, StateKeyboardFocusChange = 0x00800000, ##  #ifdef QT_KEYPAD_NAVIGATION
    StateHasEditFocus = 0x01000000, ##  #endif
    StateReadOnly = 0x02000000, StateSmall = 0x04000000, StateMini = 0x08000000


type
  QStylePrimitiveElement* {.size: sizeof(cint),
                           importcpp: "QStyle::PrimitiveElement",
                           header: "qstyle.h".} = enum
    PE_Frame, PE_FrameDefaultButton, PE_FrameDockWidget, PE_FrameFocusRect,
    PE_FrameGroupBox, PE_FrameLineEdit, PE_FrameMenu, PE_FrameStatusBarItem,
    PE_FrameTabWidget, PE_FrameWindow, PE_FrameButtonBevel, PE_FrameButtonTool,
    PE_FrameTabBarBase, PE_PanelButtonCommand, PE_PanelButtonBevel,
    PE_PanelButtonTool, PE_PanelMenuBar, PE_PanelToolBar, PE_PanelLineEdit,
    PE_IndicatorArrowDown, PE_IndicatorArrowLeft, PE_IndicatorArrowRight,
    PE_IndicatorArrowUp, PE_IndicatorBranch, PE_IndicatorButtonDropDown,
    PE_IndicatorItemViewItemCheck, PE_IndicatorCheckBox,
    PE_IndicatorDockWidgetResizeHandle, PE_IndicatorHeaderArrow,
    PE_IndicatorMenuCheckMark, PE_IndicatorProgressChunk, PE_IndicatorRadioButton,
    PE_IndicatorSpinDown, PE_IndicatorSpinMinus, PE_IndicatorSpinPlus,
    PE_IndicatorSpinUp, PE_IndicatorToolBarHandle, PE_IndicatorToolBarSeparator,
    PE_PanelTipLabel, PE_IndicatorTabTear,
    PE_IndicatorTabTearLeft = pE_IndicatorTabTear, PE_PanelScrollAreaCorner,
    PE_Widget, PE_IndicatorColumnViewArrow, PE_IndicatorItemViewItemDrop,
    PE_PanelItemViewItem, PE_PanelItemViewRow, PE_PanelStatusBar,
    PE_IndicatorTabClose, PE_PanelMenu, PE_IndicatorTabTearRight, ##  do not add any values below/greater this
    PE_CustomBase = 0xf000000


proc drawPrimitive*(this: QStyle; pe: QStylePrimitiveElement; opt: ptr QStyleOption;
                   p: ptr QPainter; w: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawPrimitive", header: "qstyle.h".}
type
  QStyleControlElement* {.size: sizeof(cint), importcpp: "QStyle::ControlElement",
                         header: "qstyle.h".} = enum
    CE_PushButton, CE_PushButtonBevel, CE_PushButtonLabel, CE_CheckBox,
    CE_CheckBoxLabel, CE_RadioButton, CE_RadioButtonLabel, CE_TabBarTab,
    CE_TabBarTabShape, CE_TabBarTabLabel, CE_ProgressBar, CE_ProgressBarGroove,
    CE_ProgressBarContents, CE_ProgressBarLabel, CE_MenuItem, CE_MenuScroller,
    CE_MenuVMargin, CE_MenuHMargin, CE_MenuTearoff, CE_MenuEmptyArea,
    CE_MenuBarItem, CE_MenuBarEmptyArea, CE_ToolButtonLabel, CE_Header,
    CE_HeaderSection, CE_HeaderLabel, CE_ToolBoxTab, CE_SizeGrip, CE_Splitter,
    CE_RubberBand, CE_DockWidgetTitle, CE_ScrollBarAddLine, CE_ScrollBarSubLine,
    CE_ScrollBarAddPage, CE_ScrollBarSubPage, CE_ScrollBarSlider,
    CE_ScrollBarFirst, CE_ScrollBarLast, CE_FocusFrame, CE_ComboBoxLabel,
    CE_ToolBar, CE_ToolBoxTabShape, CE_ToolBoxTabLabel, CE_HeaderEmptyArea,
    CE_ColumnViewGrip, CE_ItemViewItem, CE_ShapedFrame, ##  do not add any values below/greater than this
    CE_CustomBase = 0xf0000000


proc drawControl*(this: QStyle; element: QStyleControlElement; opt: ptr QStyleOption;
                 p: ptr QPainter; w: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawControl", header: "qstyle.h".}
type
  QStyleSubElement* {.size: sizeof(cint), importcpp: "QStyle::SubElement",
                     header: "qstyle.h".} = enum
    SE_PushButtonContents, SE_PushButtonFocusRect, SE_CheckBoxIndicator,
    SE_CheckBoxContents, SE_CheckBoxFocusRect, SE_CheckBoxClickRect,
    SE_RadioButtonIndicator, SE_RadioButtonContents, SE_RadioButtonFocusRect,
    SE_RadioButtonClickRect, SE_ComboBoxFocusRect, SE_SliderFocusRect,
    SE_ProgressBarGroove, SE_ProgressBarContents, SE_ProgressBarLabel,
    SE_ToolBoxTabContents, SE_HeaderLabel, SE_HeaderArrow, SE_TabWidgetTabBar,
    SE_TabWidgetTabPane, SE_TabWidgetTabContents, SE_TabWidgetLeftCorner,
    SE_TabWidgetRightCorner, SE_ItemViewItemCheckIndicator,
    SE_TabBarTearIndicator, SE_TabBarTearIndicatorLeft = sE_TabBarTearIndicator,
    SE_TreeViewDisclosureItem, SE_LineEditContents, SE_FrameContents,
    SE_DockWidgetCloseButton, SE_DockWidgetFloatButton, SE_DockWidgetTitleBarText,
    SE_DockWidgetIcon, SE_CheckBoxLayoutItem, SE_ComboBoxLayoutItem,
    SE_DateTimeEditLayoutItem, SE_LabelLayoutItem, SE_ProgressBarLayoutItem,
    SE_PushButtonLayoutItem, SE_RadioButtonLayoutItem, SE_SliderLayoutItem,
    SE_SpinBoxLayoutItem, SE_ToolButtonLayoutItem, SE_FrameLayoutItem,
    SE_GroupBoxLayoutItem, SE_TabWidgetLayoutItem, SE_ItemViewItemDecoration,
    SE_ItemViewItemText, SE_ItemViewItemFocusRect, SE_TabBarTabLeftButton,
    SE_TabBarTabRightButton, SE_TabBarTabText, SE_ShapedFrameContents,
    SE_ToolBarHandle, SE_TabBarScrollLeftButton, SE_TabBarScrollRightButton,
    SE_TabBarTearIndicatorRight, SE_PushButtonBevel, ##  do not add any values below/greater than this
    SE_CustomBase = 0xf0000000


proc subElementRect*(this: QStyle; subElement: QStyleSubElement;
                    option: ptr QStyleOption; widget: ptr QWidget = nil): QRect {.
    noSideEffect, importcpp: "subElementRect", header: "qstyle.h".}
type
  QStyleComplexControl* {.size: sizeof(cint), importcpp: "QStyle::ComplexControl",
                         header: "qstyle.h".} = enum
    CC_SpinBox, CC_ComboBox, CC_ScrollBar, CC_Slider, CC_ToolButton, CC_TitleBar,
    CC_Dial, CC_GroupBox, CC_MdiControls, ##  do not add any values below/greater than this
    CC_CustomBase = 0xf0000000


type
  QStyleSubControl* {.size: sizeof(cint), importcpp: "QStyle::SubControl",
                     header: "qstyle.h".} = enum
    SC_None = 0x00000000, SC_ScrollBarAddLine = 0x00000001,
    SC_ScrollBarSubLine = 0x00000002, SC_ScrollBarAddPage = 0x00000004,
    SC_ScrollBarSubPage = 0x00000008, SC_ScrollBarFirst = 0x00000010,
    SC_ScrollBarLast = 0x00000020, SC_ScrollBarSlider = 0x00000040,
    SC_ScrollBarGroove = 0x00000080, SC_TitleBarLabel = 0x00000100,
    SC_CustomBase = 0xf0000000, SC_All = 0xffffffff

const
  SC_SpinBoxUp = SC_ScrollBarAddLine
  SC_ComboBoxFrame = SC_ScrollBarAddLine
  SC_SliderGroove = SC_ScrollBarAddLine
  SC_ToolButton = SC_ScrollBarAddLine
  SC_TitleBarSysMenu = SC_ScrollBarAddLine
  SC_DialGroove = SC_ScrollBarAddLine
  SC_GroupBoxCheckBox = SC_ScrollBarAddLine
  SC_MdiMinButton = SC_ScrollBarAddLine
  SC_SpinBoxDown = SC_ScrollBarSubLine
  SC_ComboBoxEditField = SC_ScrollBarSubLine
  SC_SliderHandle = SC_ScrollBarSubLine
  SC_ToolButtonMenu = SC_ScrollBarSubLine
  SC_TitleBarMinButton = SC_ScrollBarSubLine
  SC_DialHandle = SC_ScrollBarSubLine
  SC_GroupBoxLabel = SC_ScrollBarSubLine
  SC_MdiNormalButton = SC_ScrollBarSubLine
  SC_SpinBoxFrame = SC_ScrollBarAddPage
  SC_ComboBoxArrow = SC_ScrollBarAddPage
  SC_SliderTickmarks = SC_ScrollBarAddPage
  SC_TitleBarMaxButton = SC_ScrollBarAddPage
  SC_DialTickmarks = SC_ScrollBarAddPage
  SC_GroupBoxContents = SC_ScrollBarAddPage
  SC_MdiCloseButton = SC_ScrollBarAddPage
  SC_SpinBoxEditField = SC_ScrollBarSubPage
  SC_ComboBoxListBoxPopup = SC_ScrollBarSubPage
  SC_TitleBarCloseButton = SC_ScrollBarSubPage
  SC_GroupBoxFrame = SC_ScrollBarSubPage
  SC_TitleBarNormalButton = SC_ScrollBarFirst
  SC_TitleBarShadeButton = SC_ScrollBarLast
  SC_TitleBarUnshadeButton = SC_ScrollBarSlider
  SC_TitleBarContextHelpButton = SC_ScrollBarGroove

proc drawComplexControl*(this: QStyle; cc: QStyleComplexControl;
                        opt: ptr QStyleOptionComplex; p: ptr QPainter;
                        widget: ptr QWidget = nil) {.noSideEffect,
    importcpp: "drawComplexControl", header: "qstyle.h".}
proc hitTestComplexControl*(this: QStyle; cc: QStyleComplexControl;
                           opt: ptr QStyleOptionComplex; pt: QPoint;
                           widget: ptr QWidget = nil): QStyleSubControl {.
    noSideEffect, importcpp: "hitTestComplexControl", header: "qstyle.h".}
proc subControlRect*(this: QStyle; cc: QStyleComplexControl;
                    opt: ptr QStyleOptionComplex; sc: QStyleSubControl;
                    widget: ptr QWidget = nil): QRect {.noSideEffect,
    importcpp: "subControlRect", header: "qstyle.h".}
type
  QStylePixelMetric* {.size: sizeof(cint), importcpp: "QStyle::PixelMetric",
                      header: "qstyle.h".} = enum
    PM_ButtonMargin, PM_ButtonDefaultIndicator, PM_MenuButtonIndicator,
    PM_ButtonShiftHorizontal, PM_ButtonShiftVertical, PM_DefaultFrameWidth,
    PM_SpinBoxFrameWidth, PM_ComboBoxFrameWidth, PM_MaximumDragDistance,
    PM_ScrollBarExtent, PM_ScrollBarSliderMin, PM_SliderThickness, ##  total slider thickness
    PM_SliderControlThickness, ##  thickness of the business part
    PM_SliderLength,          ##  total length of slider
    PM_SliderTickmarkOffset, PM_SliderSpaceAvailable, ##  available space for slider to move
    PM_DockWidgetSeparatorExtent, PM_DockWidgetHandleExtent,
    PM_DockWidgetFrameWidth, PM_TabBarTabOverlap, PM_TabBarTabHSpace,
    PM_TabBarTabVSpace, PM_TabBarBaseHeight, PM_TabBarBaseOverlap,
    PM_ProgressBarChunkWidth, PM_SplitterWidth, PM_TitleBarHeight,
    PM_MenuScrollerHeight, PM_MenuHMargin, PM_MenuVMargin, PM_MenuPanelWidth,
    PM_MenuTearoffHeight, PM_MenuDesktopFrameWidth, PM_MenuBarPanelWidth,
    PM_MenuBarItemSpacing, PM_MenuBarVMargin, PM_MenuBarHMargin, PM_IndicatorWidth,
    PM_IndicatorHeight, PM_ExclusiveIndicatorWidth, PM_ExclusiveIndicatorHeight,
    PM_DialogButtonsSeparator, PM_DialogButtonsButtonWidth,
    PM_DialogButtonsButtonHeight, PM_MdiSubWindowFrameWidth,
    PM_MdiSubWindowMinimizedWidth, PM_HeaderMargin, PM_HeaderMarkSize,
    PM_HeaderGripMargin, PM_TabBarTabShiftHorizontal, PM_TabBarTabShiftVertical,
    PM_TabBarScrollButtonWidth, PM_ToolBarFrameWidth, PM_ToolBarHandleExtent,
    PM_ToolBarItemSpacing, PM_ToolBarItemMargin, PM_ToolBarSeparatorExtent,
    PM_ToolBarExtensionExtent, PM_SpinBoxSliderHeight, PM_ToolBarIconSize,
    PM_ListViewIconSize, PM_IconViewIconSize, PM_SmallIconSize, PM_LargeIconSize,
    PM_FocusFrameVMargin, PM_FocusFrameHMargin, PM_ToolTipLabelFrameWidth,
    PM_CheckBoxLabelSpacing, PM_TabBarIconSize, PM_SizeGripSize,
    PM_DockWidgetTitleMargin, PM_MessageBoxIconSize, PM_ButtonIconSize,
    PM_DockWidgetTitleBarButtonMargin, PM_RadioButtonLabelSpacing,
    PM_LayoutLeftMargin, PM_LayoutTopMargin, PM_LayoutRightMargin,
    PM_LayoutBottomMargin, PM_LayoutHorizontalSpacing, PM_LayoutVerticalSpacing,
    PM_TabBarScrollButtonOverlap, PM_TextCursorWidth, PM_TabCloseIndicatorWidth,
    PM_TabCloseIndicatorHeight, PM_ScrollViewScrollBarSpacing,
    PM_ScrollViewScrollBarOverlap, PM_SubMenuOverlap, PM_TreeViewIndentation,
    PM_HeaderDefaultSectionSizeHorizontal, PM_HeaderDefaultSectionSizeVertical,
    PM_TitleBarButtonIconSize, PM_TitleBarButtonSize, PM_LineEditIconSize, PM_LineEditIconMargin, ##  do not add any values below/greater than this
    PM_CustomBase = 0xf0000000


proc pixelMetric*(this: QStyle; metric: QStylePixelMetric;
                 option: ptr QStyleOption = nil; widget: ptr QWidget = nil): cint {.
    noSideEffect, importcpp: "pixelMetric", header: "qstyle.h".}
type
  QStyleContentsType* {.size: sizeof(cint), importcpp: "QStyle::ContentsType",
                       header: "qstyle.h".} = enum
    CT_PushButton, CT_CheckBox, CT_RadioButton, CT_ToolButton, CT_ComboBox,
    CT_Splitter, CT_ProgressBar, CT_MenuItem, CT_MenuBarItem, CT_MenuBar, CT_Menu,
    CT_TabBarTab, CT_Slider, CT_ScrollBar, CT_LineEdit, CT_SpinBox, CT_SizeGrip,
    CT_TabWidget, CT_DialogButtons, CT_HeaderSection, CT_GroupBox, CT_MdiControls, CT_ItemViewItem, ##  do not add any values below/greater than this
    CT_CustomBase = 0xf0000000


proc sizeFromContents*(this: QStyle; ct: QStyleContentsType; opt: ptr QStyleOption;
                      contentsSize: QSize; w: ptr QWidget = nil): QSize {.noSideEffect,
    importcpp: "sizeFromContents", header: "qstyle.h".}
type
  QStyleRequestSoftwareInputPanel* {.size: sizeof(cint), importcpp: "QStyle::RequestSoftwareInputPanel",
                                    header: "qstyle.h".} = enum
    RSIP_OnMouseClickAndAlreadyFocused, RSIP_OnMouseClick


type
  QStyleStyleHint* {.size: sizeof(cint), importcpp: "QStyle::StyleHint",
                    header: "qstyle.h".} = enum
    SH_EtchDisabledText, SH_DitherDisabledText,
    SH_ScrollBarMiddleClickAbsolutePosition,
    SH_ScrollBarScrollWhenPointerLeavesControl, SH_TabBarSelectMouseType,
    SH_TabBarAlignment, SH_HeaderArrowAlignment, SH_SliderSnapToValue,
    SH_SliderSloppyKeyEvents, SH_ProgressDialogCenterCancelButton,
    SH_ProgressDialogTextLabelAlignment, SH_PrintDialogRightAlignButtons,
    SH_MainWindowSpaceBelowMenuBar, SH_FontDialogSelectAssociatedText,
    SH_MenuAllowActiveAndDisabled, SH_MenuSpaceActivatesItem,
    SH_MenuSubMenuPopupDelay, SH_ScrollViewFrameOnlyAroundContents,
    SH_MenuBarAltKeyNavigation, SH_ComboBoxListMouseTracking,
    SH_MenuMouseTracking, SH_MenuBarMouseTracking,
    SH_ItemViewChangeHighlightOnFocus, SH_WidgetShareActivation,
    SH_WorkspaceFillSpaceOnMaximize, SH_ComboBoxPopup, SH_TitleBarNoBorder,
    SH_SliderStopMouseOverSlider, SH_BlinkCursorWhenTextSelected,
    SH_RichTextFullWidthSelection, SH_MenuScrollable,
    SH_GroupBoxTextLabelVerticalAlignment, SH_GroupBoxTextLabelColor,
    SH_MenuSloppySubMenus, SH_TableGridLineColor, SH_LineEditPasswordCharacter,
    SH_DialogButtonsDefaultButton, SH_ToolBoxSelectedPageTitleBold,
    SH_TabBarPreferNoArrows, SH_ScrollBarLeftClickAbsolutePosition,
    SH_ListViewExpandSelectMouseType, SH_UnderlineShortcut,
    SH_SpinBoxAnimateButton, SH_SpinBoxKeyPressAutoRepeatRate,
    SH_SpinBoxClickAutoRepeatRate, SH_MenuFillScreenWithScroll,
    SH_ToolTipLabelOpacity, SH_DrawMenuBarSeparator,
    SH_TitleBarModifyNotification, SH_ButtonFocusPolicy,
    SH_MessageBoxUseBorderForButtonSpacing, SH_TitleBarAutoRaise,
    SH_ToolButtonPopupDelay, SH_FocusFrameMask, SH_RubberBandMask,
    SH_WindowFrameMask, SH_SpinControlsDisableOnBounds, SH_DialBackgroundRole,
    SH_ComboBoxLayoutDirection, SH_ItemViewEllipsisLocation,
    SH_ItemViewShowDecorationSelected, SH_ItemViewActivateItemOnSingleClick,
    SH_ScrollBarContextMenu, SH_ScrollBarRollBetweenButtons,
    SH_SliderAbsoluteSetButtons, SH_SliderPageSetButtons, SH_MenuKeyboardSearch,
    SH_TabBarElideMode, SH_DialogButtonLayout, SH_ComboBoxPopupFrameStyle,
    SH_MessageBoxTextInteractionFlags, SH_DialogButtonBoxButtonsHaveIcons,
    SH_MessageBoxCenterButtons, SH_MenuSelectionWrap,
    SH_ItemViewMovementWithoutUpdatingSelection, SH_ToolTipMask,
    SH_FocusFrameAboveWidget, SH_TextControlFocusIndicatorTextCharFormat,
    SH_WizardStyle, SH_ItemViewArrowKeysNavigateIntoChildren, SH_MenuMask,
    SH_MenuFlashTriggeredItem, SH_MenuFadeOutOnHide,
    SH_SpinBoxClickAutoRepeatThreshold,
    SH_ItemViewPaintAlternatingRowColorsForEmptyArea, SH_FormLayoutWrapPolicy,
    SH_TabWidgetDefaultTabPosition, SH_ToolBarMovable,
    SH_FormLayoutFieldGrowthPolicy, SH_FormLayoutFormAlignment,
    SH_FormLayoutLabelAlignment, SH_ItemViewDrawDelegateFrame,
    SH_TabBarCloseButtonPosition, SH_DockWidgetButtonsHaveFrame,
    SH_ToolButtonStyle, SH_RequestSoftwareInputPanel, SH_ScrollBarTransient,
    SH_MenuSupportsSections, SH_ToolTipWakeUpDelay, SH_ToolTipFallAsleepDelay,
    SH_WidgetAnimate, SH_SplitterOpaqueResize, ##  Whether we should use a native popup.
                                             ##  Only supported for non-editable combo boxes on Mac OS X so far.
    SH_ComboBoxUseNativePopup, SH_LineEditPasswordMaskDelay,
    SH_TabBarChangeCurrentDelay, SH_MenuSubMenuUniDirection,
    SH_MenuSubMenuUniDirectionFailCount, SH_MenuSubMenuSloppySelectOtherActions,
    SH_MenuSubMenuSloppyCloseTimeout, SH_MenuSubMenuResetWhenReenteringParent,
    SH_MenuSubMenuDontStartSloppyOnLeave, SH_ItemViewScrollMode,
    SH_TitleBarShowToolTipsOnButtons, SH_WidgetAnimationDuration,
    SH_ComboBoxAllowWheelScrolling, SH_SpinBoxButtonsInsideFrame,
    SH_SpinBoxStepModifier, SH_TabBarAllowWheelScrolling,
    SH_TableAlwaysDrawLeftTopGridLines, SH_SpinBoxSelectOnStep, ##  Add new style hint values here
    SH_CustomBase = 0xf0000000


proc styleHint*(this: QStyle; stylehint: QStyleStyleHint;
               opt: ptr QStyleOption = nil; widget: ptr QWidget = nil;
               returnData: ptr QStyleHintReturn = nil): cint {.noSideEffect,
    importcpp: "styleHint", header: "qstyle.h".}
type
  QStyleStandardPixmap* {.size: sizeof(cint), importcpp: "QStyle::StandardPixmap",
                         header: "qstyle.h".} = enum
    SP_TitleBarMenuButton, SP_TitleBarMinButton, SP_TitleBarMaxButton,
    SP_TitleBarCloseButton, SP_TitleBarNormalButton, SP_TitleBarShadeButton,
    SP_TitleBarUnshadeButton, SP_TitleBarContextHelpButton,
    SP_DockWidgetCloseButton, SP_MessageBoxInformation, SP_MessageBoxWarning,
    SP_MessageBoxCritical, SP_MessageBoxQuestion, SP_DesktopIcon, SP_TrashIcon,
    SP_ComputerIcon, SP_DriveFDIcon, SP_DriveHDIcon, SP_DriveCDIcon,
    SP_DriveDVDIcon, SP_DriveNetIcon, SP_DirOpenIcon, SP_DirClosedIcon,
    SP_DirLinkIcon, SP_DirLinkOpenIcon, SP_FileIcon, SP_FileLinkIcon,
    SP_ToolBarHorizontalExtensionButton, SP_ToolBarVerticalExtensionButton,
    SP_FileDialogStart, SP_FileDialogEnd, SP_FileDialogToParent,
    SP_FileDialogNewFolder, SP_FileDialogDetailedView, SP_FileDialogInfoView,
    SP_FileDialogContentsView, SP_FileDialogListView, SP_FileDialogBack,
    SP_DirIcon, SP_DialogOkButton, SP_DialogCancelButton, SP_DialogHelpButton,
    SP_DialogOpenButton, SP_DialogSaveButton, SP_DialogCloseButton,
    SP_DialogApplyButton, SP_DialogResetButton, SP_DialogDiscardButton,
    SP_DialogYesButton, SP_DialogNoButton, SP_ArrowUp, SP_ArrowDown, SP_ArrowLeft,
    SP_ArrowRight, SP_ArrowBack, SP_ArrowForward, SP_DirHomeIcon, SP_CommandLink,
    SP_VistaShield, SP_BrowserReload, SP_BrowserStop, SP_MediaPlay, SP_MediaStop,
    SP_MediaPause, SP_MediaSkipForward, SP_MediaSkipBackward, SP_MediaSeekForward,
    SP_MediaSeekBackward, SP_MediaVolume, SP_MediaVolumeMuted,
    SP_LineEditClearButton, SP_DialogYesToAllButton, SP_DialogNoToAllButton,
    SP_DialogSaveAllButton, SP_DialogAbortButton, SP_DialogRetryButton,
    SP_DialogIgnoreButton, SP_RestoreDefaultsButton, SP_TabCloseButton, NStandardPixmap, ##  assertion value for sync with QPlatformTheme::StandardPixmap
                                                                                     ##  do not add any values below/greater than this
    SP_CustomBase = 0xf0000000


proc standardPixmap*(this: QStyle; standardPixmap: QStyleStandardPixmap;
                    opt: ptr QStyleOption = nil; widget: ptr QWidget = nil): QPixmap {.
    noSideEffect, importcpp: "standardPixmap", header: "qstyle.h".}
proc standardIcon*(this: QStyle; standardIcon: QStyleStandardPixmap;
                  option: ptr QStyleOption = nil; widget: ptr QWidget = nil): QIcon {.
    noSideEffect, importcpp: "standardIcon", header: "qstyle.h".}
proc generatedIconPixmap*(this: QStyle; iconMode: Mode; pixmap: QPixmap;
                         opt: ptr QStyleOption): QPixmap {.noSideEffect,
    importcpp: "generatedIconPixmap", header: "qstyle.h".}
proc visualRect*(direction: LayoutDirection; boundingRect: QRect; logicalRect: QRect): QRect {.
    importcpp: "QStyle::visualRect(@)", header: "qstyle.h".}
proc visualPos*(direction: LayoutDirection; boundingRect: QRect; logicalPos: QPoint): QPoint {.
    importcpp: "QStyle::visualPos(@)", header: "qstyle.h".}
proc sliderPositionFromValue*(min: cint; max: cint; val: cint; space: cint;
                             upsideDown: bool = false): cint {.
    importcpp: "QStyle::sliderPositionFromValue(@)", header: "qstyle.h".}
proc sliderValueFromPosition*(min: cint; max: cint; pos: cint; space: cint;
                             upsideDown: bool = false): cint {.
    importcpp: "QStyle::sliderValueFromPosition(@)", header: "qstyle.h".}
proc visualAlignment*(direction: LayoutDirection; alignment: Alignment): Alignment {.
    importcpp: "QStyle::visualAlignment(@)", header: "qstyle.h".}
proc alignedRect*(direction: LayoutDirection; alignment: Alignment; size: QSize;
                 rectangle: QRect): QRect {.importcpp: "QStyle::alignedRect(@)",
    header: "qstyle.h".}
proc layoutSpacing*(this: QStyle; control1: ControlType; control2: ControlType;
                   orientation: Orientation; option: ptr QStyleOption = nil;
                   widget: ptr QWidget = nil): cint {.noSideEffect,
    importcpp: "layoutSpacing", header: "qstyle.h".}
proc combinedLayoutSpacing*(this: QStyle; controls1: ControlTypes;
                           controls2: ControlTypes; orientation: Orientation;
                           option: ptr QStyleOption = nil; widget: ptr QWidget = nil): cint {.
    noSideEffect, importcpp: "combinedLayoutSpacing", header: "qstyle.h".}
proc proxy*(this: QStyle): ptr QStyle {.noSideEffect, importcpp: "proxy",
                                   header: "qstyle.h".}