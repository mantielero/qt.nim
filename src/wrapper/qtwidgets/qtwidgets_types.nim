type
  QAbstractButton* {.importcpp: "QAbstractButton", header: "qabstractbutton.h",
                    bycopy.} = object of QWidget
type
  QAbstractItemDelegate* {.importcpp: "QAbstractItemDelegate",
                          header: "qabstractitemdelegate.h", bycopy.} = object of QObject
  QAbstractItemDelegateEndEditHint* {.size: sizeof(cint), importcpp: "QAbstractItemDelegate::EndEditHint",
                                     header: "qabstractitemdelegate.h".} = enum
    NoHint, EditNextItem, EditPreviousItem, SubmitModelCache, RevertModelCache
type
  QAbstractItemView* {.importcpp: "QAbstractItemView",
                      header: "qabstractitemview.h", bycopy.} = object of QAbstractScrollArea
    editTriggers* {.importc: "EditTriggers".}: Q_Flag
  QAbstractItemViewSelectionMode* {.size: sizeof(cint), importcpp: "QAbstractItemView::SelectionMode",
                                   header: "qabstractitemview.h".} = enum
    NoSelection, SingleSelection, MultiSelection, ExtendedSelection,
    ContiguousSelection
type
  QAbstractItemViewSelectionBehavior* {.size: sizeof(cint), importcpp: "QAbstractItemView::SelectionBehavior",
                                       header: "qabstractitemview.h".} = enum
    SelectItems, SelectRows, SelectColumns
type
  QAbstractItemViewScrollHint* {.size: sizeof(cint),
                                importcpp: "QAbstractItemView::ScrollHint",
                                header: "qabstractitemview.h".} = enum
    EnsureVisible, PositionAtTop, PositionAtBottom, PositionAtCenter
type
  QAbstractItemViewEditTrigger* {.size: sizeof(cint),
                                 importcpp: "QAbstractItemView::EditTrigger",
                                 header: "qabstractitemview.h".} = enum
    NoEditTriggers = 0, CurrentChanged = 1, DoubleClicked = 2, SelectedClicked = 4,
    EditKeyPressed = 8, AnyKeyPressed = 16, AllEditTriggers = 31
type
  QAbstractItemViewScrollMode* {.size: sizeof(cint),
                                importcpp: "QAbstractItemView::ScrollMode",
                                header: "qabstractitemview.h".} = enum
    ScrollPerItem, ScrollPerPixel
type
  QAbstractItemViewDragDropMode* {.size: sizeof(cint),
                                  importcpp: "QAbstractItemView::DragDropMode",
                                  header: "qabstractitemview.h".} = enum
    NoDragDrop, DragOnly, DropOnly, DragDrop, InternalMove
type
  QAbstractScrollArea* {.importcpp: "QAbstractScrollArea",
                        header: "qabstractscrollarea.h", bycopy.} = object of QFrame
type
  QAbstractScrollAreaSizeAdjustPolicy* {.size: sizeof(cint), importcpp: "QAbstractScrollArea::SizeAdjustPolicy",
                                        header: "qabstractscrollarea.h".} = enum
    AdjustIgnored, AdjustToContentsOnFirstShow, AdjustToContents
type
  QAbstractSlider* {.importcpp: "QAbstractSlider", header: "qabstractslider.h",
                    bycopy.} = object of QWidget
type
  QAbstractSliderSliderAction* {.size: sizeof(cint),
                                importcpp: "QAbstractSlider::SliderAction",
                                header: "qabstractslider.h".} = enum
    SliderNoAction, SliderSingleStepAdd, SliderSingleStepSub, SliderPageStepAdd,
    SliderPageStepSub, SliderToMinimum, SliderToMaximum, SliderMove
type
  QAbstractSpinBox* {.importcpp: "QAbstractSpinBox", header: "qabstractspinbox.h",
                     bycopy.} = object of QWidget
type
  QAbstractSpinBoxStepEnabledFlag* {.size: sizeof(cint), importcpp: "QAbstractSpinBox::StepEnabledFlag",
                                    header: "qabstractspinbox.h".} = enum
    StepNone = 0x00, StepUpEnabled = 0x01, StepDownEnabled = 0x02
type
  QAbstractSpinBoxButtonSymbols* {.size: sizeof(cint),
                                  importcpp: "QAbstractSpinBox::ButtonSymbols",
                                  header: "qabstractspinbox.h".} = enum
    UpDownArrows, PlusMinus, NoButtons
type
  QAbstractSpinBoxCorrectionMode* {.size: sizeof(cint), importcpp: "QAbstractSpinBox::CorrectionMode",
                                   header: "qabstractspinbox.h".} = enum
    CorrectToPreviousValue, CorrectToNearestValue
type
  QAbstractSpinBoxStepType* {.size: sizeof(cint),
                             importcpp: "QAbstractSpinBox::StepType",
                             header: "qabstractspinbox.h".} = enum
    DefaultStepType, AdaptiveDecimalStepType
type
  QAccessibleWidget* {.importcpp: "QAccessibleWidget",
                      header: "qaccessiblewidget.h", bycopy.} = object of QAccessibleObject
type
  QApplication* {.importcpp: "QApplication", header: "qapplication.h", bycopy.} = object of QGuiApplication
    qApplication* {.importc: "QApplication".}: Qt_Declare_Native_Interface_Accessor
type
  QBoxLayout* {.importcpp: "QBoxLayout", header: "qboxlayout.h", bycopy.} = object of QLayout
  QBoxLayoutDirection* {.size: sizeof(cint), importcpp: "QBoxLayout::Direction",
                        header: "qboxlayout.h".} = enum
    LeftToRight, RightToLeft, TopToBottom, BottomToTop, Down = topToBottom,
    Up = bottomToTop
type
  QHBoxLayout* {.importcpp: "QHBoxLayout", header: "qboxlayout.h", bycopy.} = object of QBoxLayout
type
  QVBoxLayout* {.importcpp: "QVBoxLayout", header: "qboxlayout.h", bycopy.} = object of QBoxLayout
type
  QButtonGroup* {.importcpp: "QButtonGroup", header: "qbuttongroup.h", bycopy.} = object of QObject
type
  QCalendarWidget* {.importcpp: "QCalendarWidget", header: "qcalendarwidget.h",
                    bycopy.} = object of QWidget
  QCalendarWidgetHorizontalHeaderFormat* {.size: sizeof(cint),
      importcpp: "QCalendarWidget::HorizontalHeaderFormat",
      header: "qcalendarwidget.h".} = enum
    NoHorizontalHeader, SingleLetterDayNames, ShortDayNames, LongDayNames
type
  QCalendarWidgetVerticalHeaderFormat* {.size: sizeof(cint), importcpp: "QCalendarWidget::VerticalHeaderFormat",
                                        header: "qcalendarwidget.h".} = enum
    NoVerticalHeader, ISOWeekNumbers
type
  QCalendarWidgetSelectionMode* {.size: sizeof(cint),
                                 importcpp: "QCalendarWidget::SelectionMode",
                                 header: "qcalendarwidget.h".} = enum
    NoSelection, SingleSelection
type
  QCheckBox* {.importcpp: "QCheckBox", header: "qcheckbox.h", bycopy.} = object of QAbstractButton
type
  QColorDialog* {.importcpp: "QColorDialog", header: "qcolordialog.h", bycopy.} = object of QDialog
  QColorDialogColorDialogOption* {.size: sizeof(cint),
                                  importcpp: "QColorDialog::ColorDialogOption",
                                  header: "qcolordialog.h".} = enum
    ShowAlphaChannel = 0x00000001, NoButtons = 0x00000002,
    DontUseNativeDialog = 0x00000004
type
  QColormap* {.importcpp: "QColormap", header: "qcolormap.h", bycopy.} = object
  QColormapMode* {.size: sizeof(cint), importcpp: "QColormap::Mode",
                  header: "qcolormap.h".} = enum
    Direct, Indexed, Gray
type
  QColumnView* {.importcpp: "QColumnView", header: "qcolumnview.h", bycopy.} = object of QAbstractItemView
type
  QComboBox* {.importcpp: "QComboBox", header: "qcombobox.h", bycopy.} = object of QWidget
type
  QComboBoxInsertPolicy* {.size: sizeof(cint),
                          importcpp: "QComboBox::InsertPolicy",
                          header: "qcombobox.h".} = enum
    NoInsert, InsertAtTop, InsertAtCurrent, InsertAtBottom, InsertAfterCurrent,
    InsertBeforeCurrent, InsertAlphabetically
type
  QComboBoxSizeAdjustPolicy* {.size: sizeof(cint),
                              importcpp: "QComboBox::SizeAdjustPolicy",
                              header: "qcombobox.h".} = enum
    AdjustToContents, AdjustToContentsOnFirstShow,
    AdjustToMinimumContentsLengthWithIcon
type
  QCommandLinkButton* {.importcpp: "QCommandLinkButton",
                       header: "qcommandlinkbutton.h", bycopy.} = object of QPushButton
type
  QCommonStyle* {.importcpp: "QCommonStyle", header: "qcommonstyle.h", bycopy.} = object of QStyle
type
  QCompleter* {.importcpp: "QCompleter", header: "qcompleter.h", bycopy.} = object of QObject
  QCompleterCompletionMode* {.size: sizeof(cint),
                             importcpp: "QCompleter::CompletionMode",
                             header: "qcompleter.h".} = enum
    PopupCompletion, UnfilteredPopupCompletion, InlineCompletion
type
  QCompleterModelSorting* {.size: sizeof(cint),
                           importcpp: "QCompleter::ModelSorting",
                           header: "qcompleter.h".} = enum
    UnsortedModel = 0, CaseSensitivelySortedModel, CaseInsensitivelySortedModel
type
  QDataWidgetMapper* {.importcpp: "QDataWidgetMapper",
                      header: "qdatawidgetmapper.h", bycopy.} = object of QObject
type
  QDataWidgetMapperSubmitPolicy* {.size: sizeof(cint),
                                  importcpp: "QDataWidgetMapper::SubmitPolicy",
                                  header: "qdatawidgetmapper.h".} = enum
    AutoSubmit, ManualSubmit
type
  QDateTimeEdit* {.importcpp: "QDateTimeEdit", header: "qdatetimeedit.h", bycopy.} = object of QAbstractSpinBox
    sections* {.importc: "Sections".}: Q_Flag
  QDateTimeEditSection* {.size: sizeof(cint), importcpp: "QDateTimeEdit::Section",
                         header: "qdatetimeedit.h".} = enum ##  a sub-type of QDateTimeParser's like-named enum.
    NoSection = 0x0000, AmPmSection = 0x0001, MSecSection = 0x0002,
    SecondSection = 0x0004, MinuteSection = 0x0008, HourSection = 0x0010,
    DaySection = 0x0100, MonthSection = 0x0200, YearSection = 0x0400, TimeSectionsMask = amPmSection or
        mSecSection or secondSection or minuteSection or hourSection,
    DateSectionsMask = daySection or monthSection or yearSection
type
  QTimeEdit* {.importcpp: "QTimeEdit", header: "qdatetimeedit.h", bycopy.} = object of QDateTimeEdit
type
  QDateEdit* {.importcpp: "QDateEdit", header: "qdatetimeedit.h", bycopy.} = object of QDateTimeEdit
type
  QDial* {.importcpp: "QDial", header: "qdial.h", bycopy.} = object of QAbstractSlider
type
  QDialog* {.importcpp: "QDialog", header: "qdialog.h", bycopy.} = object of QWidget
type
  QDialogDialogCode* {.size: sizeof(cint), importcpp: "QDialog::DialogCode",
                      header: "qdialog.h".} = enum
    Rejected, Accepted
type
  QDialogButtonBox* {.importcpp: "QDialogButtonBox", header: "qdialogbuttonbox.h",
                     bycopy.} = object of QWidget
    standardButtons* {.importc: "StandardButtons".}: Q_Flag
  QDialogButtonBoxButtonRole* {.size: sizeof(cint),
                               importcpp: "QDialogButtonBox::ButtonRole",
                               header: "qdialogbuttonbox.h".} = enum ##  keep this in sync with QMessageBox::ButtonRole and QPlatformDialogHelper::ButtonRole
    InvalidRole = -1, AcceptRole, RejectRole, DestructiveRole, ActionRole, HelpRole,
    YesRole, NoRole, ResetRole, ApplyRole, NRoles
type
  QDialogButtonBoxStandardButton* {.size: sizeof(cint), importcpp: "QDialogButtonBox::StandardButton",
                                   header: "qdialogbuttonbox.h".} = enum ##  keep this in sync with QMessageBox::StandardButton and QPlatformDialogHelper::StandardButton
    NoButton = 0x00000000, Ok = 0x00000400, Save = 0x00000800, SaveAll = 0x00001000,
    Open = 0x00002000, Yes = 0x00004000, YesToAll = 0x00008000, No = 0x00010000,
    NoToAll = 0x00020000, Abort = 0x00040000, Retry = 0x00080000, Ignore = 0x00100000,
    Close = 0x00200000, Cancel = 0x00400000, Discard = 0x00800000, Help = 0x01000000,
    Apply = 0x02000000, Reset = 0x04000000, RestoreDefaults = 0x08000000, ##  #ifndef Q_MOC_RUN
    FirstButton = ok, LastButton = restoreDefaults
type
  QDialogButtonBoxButtonLayout* {.size: sizeof(cint),
                                 importcpp: "QDialogButtonBox::ButtonLayout",
                                 header: "qdialogbuttonbox.h".} = enum ##  keep this in sync with QPlatformDialogHelper::ButtonLayout
    WinLayout, MacLayout, KdeLayout, GnomeLayout, AndroidLayout
type
  QDockWidget* {.importcpp: "QDockWidget", header: "qdockwidget.h", bycopy.} = object of QWidget
    dockWidgetFeatures* {.importc: "DockWidgetFeatures".}: Q_Flag
type
  QDockWidgetDockWidgetFeature* {.size: sizeof(cint),
                                 importcpp: "QDockWidget::DockWidgetFeature",
                                 header: "qdockwidget.h".} = enum
    NoDockWidgetFeatures = 0x00, DockWidgetClosable = 0x01, DockWidgetMovable = 0x02,
    DockWidgetFloatable = 0x04, DockWidgetVerticalTitleBar = 0x08,
    DockWidgetFeatureMask = 0x0f, Reserved = 0xff
type
  QTileRules* {.importcpp: "QTileRules", header: "qdrawutil.h", bycopy.} = object
    horizontal* {.importc: "horizontal".}: TileRule
    vertical* {.importc: "vertical".}: TileRule
type
  DrawingHint* {.size: sizeof(cint), importcpp: "QDrawBorderPixmap::DrawingHint",
                header: "qdrawutil.h".} = enum
    OpaqueTopLeft = 0x0001, OpaqueTop = 0x0002, OpaqueTopRight = 0x0004,
    OpaqueLeft = 0x0008, OpaqueCenter = 0x0010, OpaqueRight = 0x0020,
    OpaqueBottomLeft = 0x0040, OpaqueBottom = 0x0080, OpaqueBottomRight = 0x0100, OpaqueCorners = opaqueTopLeft or
        opaqueTopRight or opaqueBottomLeft or opaqueBottomRight,
    OpaqueEdges = opaqueTop or opaqueLeft or opaqueRight or opaqueBottom,
    OpaqueFrame = opaqueCorners or opaqueEdges,
    OpaqueAll = opaqueCenter or opaqueFrame
type
  QErrorMessage* {.importcpp: "QErrorMessage", header: "qerrormessage.h", bycopy.} = object of QDialog
type
  QFileDialog* {.importcpp: "QFileDialog", header: "qfiledialog.h", bycopy.} = object of QDialog
    options* {.importc: "Options".}: Q_Flag
  QFileDialogViewMode* {.size: sizeof(cint), importcpp: "QFileDialog::ViewMode",
                        header: "qfiledialog.h".} = enum
    Detail, List
type
  QFileDialogFileMode* {.size: sizeof(cint), importcpp: "QFileDialog::FileMode",
                        header: "qfiledialog.h".} = enum
    AnyFile, ExistingFile, Directory, ExistingFiles
type
  QFileDialogAcceptMode* {.size: sizeof(cint),
                          importcpp: "QFileDialog::AcceptMode",
                          header: "qfiledialog.h".} = enum
    AcceptOpen, AcceptSave
type
  QFileDialogDialogLabel* {.size: sizeof(cint),
                           importcpp: "QFileDialog::DialogLabel",
                           header: "qfiledialog.h".} = enum
    LookIn, FileName, FileType, Accept, Reject
type
  QFileDialogOption* {.size: sizeof(cint), importcpp: "QFileDialog::Option",
                      header: "qfiledialog.h".} = enum
    ShowDirsOnly = 0x00000001, DontResolveSymlinks = 0x00000002,
    DontConfirmOverwrite = 0x00000004, DontUseNativeDialog = 0x00000008,
    ReadOnly = 0x00000010, HideNameFilterDetails = 0x00000020,
    DontUseCustomDirectoryIcons = 0x00000040
type
  QFileIconProvider* {.importcpp: "QFileIconProvider",
                      header: "qfileiconprovider.h", bycopy.} = object of QAbstractFileIconProvider
type
  QFocusFrame* {.importcpp: "QFocusFrame", header: "qfocusframe.h", bycopy.} = object of QWidget
type
  QFontComboBox* {.importcpp: "QFontComboBox", header: "qfontcombobox.h", bycopy.} = object of QComboBox
    fontFilters* {.importc: "FontFilters".}: Q_Flag
type
  QFontComboBoxFontFilter* {.size: sizeof(cint),
                            importcpp: "QFontComboBox::FontFilter",
                            header: "qfontcombobox.h".} = enum
    AllFonts = 0, ScalableFonts = 0x1, NonScalableFonts = 0x2, MonospacedFonts = 0x4,
    ProportionalFonts = 0x8
type
  QFontDialog* {.importcpp: "QFontDialog", header: "qfontdialog.h", bycopy.} = object of QDialog
  QFontDialogFontDialogOption* {.size: sizeof(cint),
                                importcpp: "QFontDialog::FontDialogOption",
                                header: "qfontdialog.h".} = enum
    NoButtons = 0x00000001, DontUseNativeDialog = 0x00000002,
    ScalableFonts = 0x00000004, NonScalableFonts = 0x00000008,
    MonospacedFonts = 0x00000010, ProportionalFonts = 0x00000020
type
  QFormLayout* {.importcpp: "QFormLayout", header: "qformlayout.h", bycopy.} = object of QLayout
  QFormLayoutFieldGrowthPolicy* {.size: sizeof(cint),
                                 importcpp: "QFormLayout::FieldGrowthPolicy",
                                 header: "qformlayout.h".} = enum
    FieldsStayAtSizeHint, ExpandingFieldsGrow, AllNonFixedFieldsGrow
type
  QFormLayoutRowWrapPolicy* {.size: sizeof(cint),
                             importcpp: "QFormLayout::RowWrapPolicy",
                             header: "qformlayout.h".} = enum
    DontWrapRows, WrapLongRows, WrapAllRows
type
  QFormLayoutItemRole* {.size: sizeof(cint), importcpp: "QFormLayout::ItemRole",
                        header: "qformlayout.h".} = enum
    LabelRole = 0, FieldRole = 1, SpanningRole = 2
type
  QFormLayoutTakeRowResult* {.importcpp: "QFormLayout::TakeRowResult",
                             header: "qformlayout.h", bycopy.} = object
    labelItem* {.importc: "labelItem".}: ptr QLayoutItem
    fieldItem* {.importc: "fieldItem".}: ptr QLayoutItem
type
  QFrame* {.importcpp: "QFrame", header: "qframe.h", bycopy.} = object of QWidget
type
  QFrameShape* {.size: sizeof(cint), importcpp: "QFrame::Shape", header: "qframe.h".} = enum
    NoFrame = 0,                ##  no frame
    Box = 0x0001,               ##  rectangular box
    Panel = 0x0002,             ##  rectangular panel
    WinPanel = 0x0003,          ##  rectangular panel (Windows)
    HLine = 0x0004,             ##  horizontal line
    VLine = 0x0005,             ##  vertical line
    StyledPanel = 0x0006
type
  QFrameShadow* {.size: sizeof(cint), importcpp: "QFrame::Shadow", header: "qframe.h".} = enum
    Plain = 0x0010,             ##  plain line
    Raised = 0x0020,            ##  raised shadow effect
    Sunken = 0x0030
type
  QFrameStyleMask* {.size: sizeof(cint), importcpp: "QFrame::StyleMask",
                    header: "qframe.h".} = enum
    ShapeMask = 0x000f, ShadowMask = 0x00f0 ##  mask for the shadow
type
  QGesture* {.importcpp: "QGesture", header: "qgesture.h", bycopy.} = object of QObject
type
  QGestureGestureCancelPolicy* {.size: sizeof(cint),
                                importcpp: "QGesture::GestureCancelPolicy",
                                header: "qgesture.h".} = enum
    CancelNone = 0, CancelAllInContext
type
  QPanGesture* {.importcpp: "QPanGesture", header: "qgesture.h", bycopy.} = object of QGesture
type
  QPinchGesture* {.importcpp: "QPinchGesture", header: "qgesture.h", bycopy.} = object of QGesture
    changeFlags* {.importc: "ChangeFlags".}: Q_Flag
  QPinchGestureChangeFlag* {.size: sizeof(cint),
                            importcpp: "QPinchGesture::ChangeFlag",
                            header: "qgesture.h".} = enum
    ScaleFactorChanged = 0x1, RotationAngleChanged = 0x2, CenterPointChanged = 0x4
type
  QSwipeGesture* {.importcpp: "QSwipeGesture", header: "qgesture.h", bycopy.} = object of QGesture
  QSwipeGestureSwipeDirection* {.size: sizeof(cint),
                                importcpp: "QSwipeGesture::SwipeDirection",
                                header: "qgesture.h".} = enum
    NoDirection, Left, Right, Up, Down
type
  QTapGesture* {.importcpp: "QTapGesture", header: "qgesture.h", bycopy.} = object of QGesture
type
  QTapAndHoldGesture* {.importcpp: "QTapAndHoldGesture", header: "qgesture.h", bycopy.} = object of QGesture
type
  QGestureEvent* {.importcpp: "QGestureEvent", header: "qgesture.h", bycopy.} = object of QEvent
type
  QGestureRecognizer* {.importcpp: "QGestureRecognizer",
                       header: "qgesturerecognizer.h", bycopy.} = object
  QGestureRecognizerResultFlag* {.size: sizeof(cint),
                                 importcpp: "QGestureRecognizer::ResultFlag",
                                 header: "qgesturerecognizer.h".} = enum
    Ignore = 0x0001, MayBeGesture = 0x0002, TriggerGesture = 0x0004,
    FinishGesture = 0x0008, CancelGesture = 0x0010, ResultStateMask = 0x00ff, ConsumeEventHint = 0x0100, ##  StoreEventHint          = 0x0200,
                                                                                             ##  ReplayStoredEventsHint  = 0x0400,
                                                                                             ##  DiscardStoredEventsHint = 0x0800,
    ResultHintMask = 0xff00
type
  QGraphicsAnchor* {.importcpp: "QGraphicsAnchor",
                    header: "qgraphicsanchorlayout.h", bycopy.} = object of QObject
type
  QGraphicsAnchorLayout* {.importcpp: "QGraphicsAnchorLayout",
                          header: "qgraphicsanchorlayout.h", bycopy.} = object of QGraphicsLayout
type
  QGraphicsEffect* {.importcpp: "QGraphicsEffect", header: "qgraphicseffect.h",
                    bycopy.} = object of QObject
    changeFlags* {.importc: "ChangeFlags".}: Q_Flag
  QGraphicsEffectChangeFlag* {.size: sizeof(cint),
                              importcpp: "QGraphicsEffect::ChangeFlag",
                              header: "qgraphicseffect.h".} = enum
    SourceAttached = 0x1, SourceDetached = 0x2, SourceBoundingRectChanged = 0x4,
    SourceInvalidated = 0x8
type
  QGraphicsEffectPixmapPadMode* {.size: sizeof(cint),
                                 importcpp: "QGraphicsEffect::PixmapPadMode",
                                 header: "qgraphicseffect.h".} = enum
    NoPad, PadToTransparentBorder, PadToEffectiveBoundingRect
type
  QGraphicsColorizeEffect* {.importcpp: "QGraphicsColorizeEffect",
                            header: "qgraphicseffect.h", bycopy.} = object of QGraphicsEffect
type
  QGraphicsBlurEffect* {.importcpp: "QGraphicsBlurEffect",
                        header: "qgraphicseffect.h", bycopy.} = object of QGraphicsEffect
    blurHints* {.importc: "BlurHints".}: Q_Flag
  QGraphicsBlurEffectBlurHint* {.size: sizeof(cint),
                                importcpp: "QGraphicsBlurEffect::BlurHint",
                                header: "qgraphicseffect.h".} = enum
    PerformanceHint = 0x00, QualityHint = 0x01, AnimationHint = 0x02
type
  QGraphicsDropShadowEffect* {.importcpp: "QGraphicsDropShadowEffect",
                              header: "qgraphicseffect.h", bycopy.} = object of QGraphicsEffect
type
  QGraphicsOpacityEffect* {.importcpp: "QGraphicsOpacityEffect",
                           header: "qgraphicseffect.h", bycopy.} = object of QGraphicsEffect
type
  QGraphicsGridLayout* {.importcpp: "QGraphicsGridLayout",
                        header: "qgraphicsgridlayout.h", bycopy.} = object of QGraphicsLayout
type
  QGraphicsItem* {.importcpp: "QGraphicsItem", header: "qgraphicsitem.h", bycopy.} = object
  QGraphicsItemGraphicsItemFlag* {.size: sizeof(cint),
                                  importcpp: "QGraphicsItem::GraphicsItemFlag",
                                  header: "qgraphicsitem.h".} = enum
    ItemIsMovable = 0x1, ItemIsSelectable = 0x2, ItemIsFocusable = 0x4,
    ItemClipsToShape = 0x8, ItemClipsChildrenToShape = 0x10,
    ItemIgnoresTransformations = 0x20, ItemIgnoresParentOpacity = 0x40,
    ItemDoesntPropagateOpacityToChildren = 0x80, ItemStacksBehindParent = 0x100,
    ItemUsesExtendedStyleOption = 0x200, ItemHasNoContents = 0x400,
    ItemSendsGeometryChanges = 0x800, ItemAcceptsInputMethod = 0x1000,
    ItemNegativeZStacksBehindParent = 0x2000, ItemIsPanel = 0x4000, ItemIsFocusScope = 0x8000, ##  internal
    ItemSendsScenePositionChanges = 0x10000,
    ItemStopsClickFocusPropagation = 0x20000, ItemStopsFocusHandling = 0x40000,
    ItemContainsChildrenInShape = 0x80000
type
  QGraphicsItemGraphicsItemChange* {.size: sizeof(cint), importcpp: "QGraphicsItem::GraphicsItemChange",
                                    header: "qgraphicsitem.h".} = enum
    ItemPositionChange, ItemVisibleChange = 2, ItemEnabledChange, ItemSelectedChange,
    ItemParentChange, ItemChildAddedChange, ItemChildRemovedChange,
    ItemTransformChange, ItemPositionHasChanged, ItemTransformHasChanged,
    ItemSceneChange, ItemVisibleHasChanged, ItemEnabledHasChanged,
    ItemSelectedHasChanged, ItemParentHasChanged, ItemSceneHasChanged,
    ItemCursorChange, ItemCursorHasChanged, ItemToolTipChange,
    ItemToolTipHasChanged, ItemFlagsChange, ItemFlagsHaveChanged, ItemZValueChange,
    ItemZValueHasChanged, ItemOpacityChange, ItemOpacityHasChanged,
    ItemScenePositionHasChanged, ItemRotationChange, ItemRotationHasChanged,
    ItemScaleChange, ItemScaleHasChanged, ItemTransformOriginPointChange,
    ItemTransformOriginPointHasChanged
type
  QGraphicsItemCacheMode* {.size: sizeof(cint),
                           importcpp: "QGraphicsItem::CacheMode",
                           header: "qgraphicsitem.h".} = enum
    NoCache, ItemCoordinateCache, DeviceCoordinateCache
type
  QGraphicsItemPanelModality* {.size: sizeof(cint),
                               importcpp: "QGraphicsItem::PanelModality",
                               header: "qgraphicsitem.h".} = enum
    NonModal, PanelModal, SceneModal
type
  QGraphicsObject* {.importcpp: "QGraphicsObject", header: "qgraphicsitem.h", bycopy.} = object of QObject
type
  QAbstractGraphicsShapeItem* {.importcpp: "QAbstractGraphicsShapeItem",
                               header: "qgraphicsitem.h", bycopy.} = object of QGraphicsItem
type
  QGraphicsPathItem* {.importcpp: "QGraphicsPathItem", header: "qgraphicsitem.h",
                      bycopy.} = object of QAbstractGraphicsShapeItem
type
  QGraphicsRectItem* {.importcpp: "QGraphicsRectItem", header: "qgraphicsitem.h",
                      bycopy.} = object of QAbstractGraphicsShapeItem
type
  QGraphicsEllipseItem* {.importcpp: "QGraphicsEllipseItem",
                         header: "qgraphicsitem.h", bycopy.} = object of QAbstractGraphicsShapeItem
type
  QGraphicsPolygonItem* {.importcpp: "QGraphicsPolygonItem",
                         header: "qgraphicsitem.h", bycopy.} = object of QAbstractGraphicsShapeItem
type
  QGraphicsLineItem* {.importcpp: "QGraphicsLineItem", header: "qgraphicsitem.h",
                      bycopy.} = object of QGraphicsItem
type
  QGraphicsPixmapItem* {.importcpp: "QGraphicsPixmapItem",
                        header: "qgraphicsitem.h", bycopy.} = object of QGraphicsItem
  QGraphicsPixmapItemShapeMode* {.size: sizeof(cint),
                                 importcpp: "QGraphicsPixmapItem::ShapeMode",
                                 header: "qgraphicsitem.h".} = enum
    MaskShape, BoundingRectShape, HeuristicMaskShape
type
  QGraphicsTextItem* {.importcpp: "QGraphicsTextItem", header: "qgraphicsitem.h",
                      bycopy.} = object of QGraphicsObject
type
  QGraphicsSimpleTextItem* {.importcpp: "QGraphicsSimpleTextItem",
                            header: "qgraphicsitem.h", bycopy.} = object of QAbstractGraphicsShapeItem
type
  QGraphicsItemGroup* {.importcpp: "QGraphicsItemGroup", header: "qgraphicsitem.h",
                       bycopy.} = object of QGraphicsItem
type
  QGraphicsItemAnimation* {.importcpp: "QGraphicsItemAnimation",
                           header: "qgraphicsitemanimation.h", bycopy.} = object of QObject
type
  QGraphicsLayout* {.importcpp: "QGraphicsLayout", header: "qgraphicslayout.h",
                    bycopy.} = object of QGraphicsLayoutItem
type
  QGraphicsLayoutItem* {.importcpp: "QGraphicsLayoutItem",
                        header: "qgraphicslayoutitem.h", bycopy.} = object
type
  QGraphicsLinearLayout* {.importcpp: "QGraphicsLinearLayout",
                          header: "qgraphicslinearlayout.h", bycopy.} = object of QGraphicsLayout
type
  QGraphicsProxyWidget* {.importcpp: "QGraphicsProxyWidget",
                         header: "qgraphicsproxywidget.h", bycopy.} = object of QGraphicsWidget
type
  QGraphicsScene* {.importcpp: "QGraphicsScene", header: "qgraphicsscene.h", bycopy.} = object of QObject
  QGraphicsSceneItemIndexMethod* {.size: sizeof(cint),
                                  importcpp: "QGraphicsScene::ItemIndexMethod",
                                  header: "qgraphicsscene.h".} = enum
    NoIndex = -1, BspTreeIndex
type
  QGraphicsSceneSceneLayer* {.size: sizeof(cint),
                             importcpp: "QGraphicsScene::SceneLayer",
                             header: "qgraphicsscene.h".} = enum
    ItemLayer = 0x1, BackgroundLayer = 0x2, ForegroundLayer = 0x4, AllLayers = 0xffff
type
  QGraphicsSceneEvent* {.importcpp: "QGraphicsSceneEvent",
                        header: "qgraphicssceneevent.h", bycopy.} = object of QEvent
type
  QGraphicsSceneMouseEvent* {.importcpp: "QGraphicsSceneMouseEvent",
                             header: "qgraphicssceneevent.h", bycopy.} = object of QGraphicsSceneEvent
type
  QGraphicsSceneWheelEvent* {.importcpp: "QGraphicsSceneWheelEvent",
                             header: "qgraphicssceneevent.h", bycopy.} = object of QGraphicsSceneEvent
type
  QGraphicsSceneContextMenuEvent* {.importcpp: "QGraphicsSceneContextMenuEvent",
                                   header: "qgraphicssceneevent.h", bycopy.} = object of QGraphicsSceneEvent
  QGraphicsSceneContextMenuEventReason* {.size: sizeof(cint),
      importcpp: "QGraphicsSceneContextMenuEvent::Reason",
      header: "qgraphicssceneevent.h".} = enum
    Mouse, Keyboard, Other
type
  QGraphicsSceneHoverEvent* {.importcpp: "QGraphicsSceneHoverEvent",
                             header: "qgraphicssceneevent.h", bycopy.} = object of QGraphicsSceneEvent
type
  QGraphicsSceneHelpEvent* {.importcpp: "QGraphicsSceneHelpEvent",
                            header: "qgraphicssceneevent.h", bycopy.} = object of QGraphicsSceneEvent
type
  QGraphicsSceneDragDropEvent* {.importcpp: "QGraphicsSceneDragDropEvent",
                                header: "qgraphicssceneevent.h", bycopy.} = object of QGraphicsSceneEvent
type
  QGraphicsSceneResizeEvent* {.importcpp: "QGraphicsSceneResizeEvent",
                              header: "qgraphicssceneevent.h", bycopy.} = object of QGraphicsSceneEvent
type
  QGraphicsSceneMoveEvent* {.importcpp: "QGraphicsSceneMoveEvent",
                            header: "qgraphicssceneevent.h", bycopy.} = object of QGraphicsSceneEvent
type
  QGraphicsTransform* {.importcpp: "QGraphicsTransform",
                       header: "qgraphicstransform.h", bycopy.} = object of QObject
type
  QGraphicsScale* {.importcpp: "QGraphicsScale", header: "qgraphicstransform.h",
                   bycopy.} = object of QGraphicsTransform
type
  QGraphicsRotation* {.importcpp: "QGraphicsRotation",
                      header: "qgraphicstransform.h", bycopy.} = object of QGraphicsTransform
type
  QGraphicsView* {.importcpp: "QGraphicsView", header: "qgraphicsview.h", bycopy.} = object of QAbstractScrollArea
  QGraphicsViewViewportAnchor* {.size: sizeof(cint),
                                importcpp: "QGraphicsView::ViewportAnchor",
                                header: "qgraphicsview.h".} = enum
    NoAnchor, AnchorViewCenter, AnchorUnderMouse
type
  QGraphicsViewCacheModeFlag* {.size: sizeof(cint),
                               importcpp: "QGraphicsView::CacheModeFlag",
                               header: "qgraphicsview.h".} = enum
    CacheNone = 0x0, CacheBackground = 0x1
type
  QGraphicsViewDragMode* {.size: sizeof(cint),
                          importcpp: "QGraphicsView::DragMode",
                          header: "qgraphicsview.h".} = enum
    NoDrag, ScrollHandDrag, RubberBandDrag
type
  QGraphicsViewViewportUpdateMode* {.size: sizeof(cint), importcpp: "QGraphicsView::ViewportUpdateMode",
                                    header: "qgraphicsview.h".} = enum
    FullViewportUpdate, MinimalViewportUpdate, SmartViewportUpdate,
    NoViewportUpdate, BoundingRectViewportUpdate
type
  QGraphicsViewOptimizationFlag* {.size: sizeof(cint),
                                  importcpp: "QGraphicsView::OptimizationFlag",
                                  header: "qgraphicsview.h".} = enum
    DontSavePainterState = 0x1, DontAdjustForAntialiasing = 0x2,
    IndirectPainting = 0x4
type
  QGraphicsWidget* {.importcpp: "QGraphicsWidget", header: "qgraphicswidget.h",
                    bycopy.} = object of QGraphicsObject
type
  QGridLayout* {.importcpp: "QGridLayout", header: "qgridlayout.h", bycopy.} = object of QLayout
type
  QGroupBox* {.importcpp: "QGroupBox", header: "qgroupbox.h", bycopy.} = object of QWidget
type
  QHeaderView* {.importcpp: "QHeaderView", header: "qheaderview.h", bycopy.} = object of QAbstractItemView
  QHeaderViewResizeMode* {.size: sizeof(cint),
                          importcpp: "QHeaderView::ResizeMode",
                          header: "qheaderview.h".} = enum
    Interactive, Stretch, Fixed, ResizeToContents, Custom = fixed
type
  QInputDialog* {.importcpp: "QInputDialog", header: "qinputdialog.h", bycopy.} = object of QDialog
  QInputDialogInputDialogOption* {.size: sizeof(cint),
                                  importcpp: "QInputDialog::InputDialogOption",
                                  header: "qinputdialog.h".} = enum
    NoButtons = 0x00000001, UseListViewForComboBoxItems = 0x00000002,
    UsePlainTextEditForTextInput = 0x00000004
type
  QInputDialogInputMode* {.size: sizeof(cint),
                          importcpp: "QInputDialog::InputMode",
                          header: "qinputdialog.h".} = enum
    TextInput, IntInput, DoubleInput
type
  QItemDelegate* {.importcpp: "QItemDelegate", header: "qitemdelegate.h", bycopy.} = object of QAbstractItemDelegate
type
  QItemEditorCreatorBase* {.importcpp: "QItemEditorCreatorBase",
                           header: "qitemeditorfactory.h", bycopy.} = object
type
  QItemEditorCreator*[T] {.importcpp: "QItemEditorCreator<\'0>",
                          header: "qitemeditorfactory.h", bycopy.} = object of QItemEditorCreatorBase
type
  QStandardItemEditorCreator*[T] {.importcpp: "QStandardItemEditorCreator<\'0>",
                                  header: "qitemeditorfactory.h", bycopy.} = object of QItemEditorCreatorBase
type
  QItemEditorFactory* {.importcpp: "QItemEditorFactory",
                       header: "qitemeditorfactory.h", bycopy.} = object
type
  QKeySequenceEdit* {.importcpp: "QKeySequenceEdit", header: "qkeysequenceedit.h",
                     bycopy.} = object of QWidget
type
  QLabel* {.importcpp: "QLabel", header: "qlabel.h", bycopy.} = object of QFrame
type
  QLayout* {.importcpp: "QLayout", header: "qlayout.h", bycopy.} = object of QObject
  QLayoutSizeConstraint* {.size: sizeof(cint),
                          importcpp: "QLayout::SizeConstraint",
                          header: "qlayout.h".} = enum
    SetDefaultConstraint, SetNoConstraint, SetMinimumSize, SetFixedSize,
    SetMaximumSize, SetMinAndMaxSize
type
  QLayoutItem* {.importcpp: "QLayoutItem", header: "qlayoutitem.h", bycopy.} = object
type
  QSpacerItem* {.importcpp: "QSpacerItem", header: "qlayoutitem.h", bycopy.} = object of QLayoutItem
type
  QWidgetItem* {.importcpp: "QWidgetItem", header: "qlayoutitem.h", bycopy.} = object of QLayoutItem
type
  QWidgetItemV2* {.importcpp: "QWidgetItemV2", header: "qlayoutitem.h", bycopy.} = object of QWidgetItem
type
  QLCDNumber* {.importcpp: "QLCDNumber", header: "qlcdnumber.h", bycopy.} = object of QFrame ##  LCD number widget
type
  QLCDNumberMode* {.size: sizeof(cint), importcpp: "QLCDNumber::Mode",
                   header: "qlcdnumber.h".} = enum
    Hex, Dec, Oct, Bin
type
  QLCDNumberSegmentStyle* {.size: sizeof(cint),
                           importcpp: "QLCDNumber::SegmentStyle",
                           header: "qlcdnumber.h".} = enum
    Outline, Filled, Flat
type
  QLineEdit* {.importcpp: "QLineEdit", header: "qlineedit.h", bycopy.} = object of QWidget
  QLineEditActionPosition* {.size: sizeof(cint),
                            importcpp: "QLineEdit::ActionPosition",
                            header: "qlineedit.h".} = enum
    LeadingPosition, TrailingPosition
type
  QLineEditEchoMode* {.size: sizeof(cint), importcpp: "QLineEdit::EchoMode",
                      header: "qlineedit.h".} = enum
    Normal, NoEcho, Password, PasswordEchoOnEdit
type
  QListView* {.importcpp: "QListView", header: "qlistview.h", bycopy.} = object of QAbstractItemView
  QListViewMovement* {.size: sizeof(cint), importcpp: "QListView::Movement",
                      header: "qlistview.h".} = enum
    Static, Free, Snap
type
  QListViewFlow* {.size: sizeof(cint), importcpp: "QListView::Flow",
                  header: "qlistview.h".} = enum
    LeftToRight, TopToBottom
type
  QListViewResizeMode* {.size: sizeof(cint), importcpp: "QListView::ResizeMode",
                        header: "qlistview.h".} = enum
    Fixed, Adjust
type
  QListViewLayoutMode* {.size: sizeof(cint), importcpp: "QListView::LayoutMode",
                        header: "qlistview.h".} = enum
    SinglePass, Batched
type
  QListViewViewMode* {.size: sizeof(cint), importcpp: "QListView::ViewMode",
                      header: "qlistview.h".} = enum
    ListMode, IconMode
type
  QListWidgetItem* {.importcpp: "QListWidgetItem", header: "qlistwidget.h", bycopy.} = object
  QListWidgetItemItemType* {.size: sizeof(cint),
                            importcpp: "QListWidgetItem::ItemType",
                            header: "qlistwidget.h".} = enum
    Type = 0, UserType = 1000
type
  QListWidget* {.importcpp: "QListWidget", header: "qlistwidget.h", bycopy.} = object of QListView
type
  QMainWindow* {.importcpp: "QMainWindow", header: "qmainwindow.h", bycopy.} = object of QWidget ##  #if QT_CONFIG(dockwidget)
                                                                                       ##      Q_PROPERTY(bool animated READ isAnimated WRITE setAnimated)
                                                                                       ##  #if QT_CONFIG(tabbar)
                                                                                       ##      Q_PROPERTY(bool documentMode READ documentMode WRITE setDocumentMode)
                                                                                       ##  #endif // QT_CONFIG(tabbar)
                                                                                       ##  #if QT_CONFIG(tabwidget)
                                                                                       ##      Q_PROPERTY(QTabWidget::TabShape tabShape READ tabShape WRITE setTabShape)
                                                                                       ##  #endif // QT_CONFIG(tabwidget)
                                                                                       ##      Q_PROPERTY(bool dockNestingEnabled READ isDockNestingEnabled WRITE setDockNestingEnabled)
                                                                                       ##  #endif // QT_CONFIG(dockwidget)
                                                                                       ##      Q_PROPERTY(DockOptions dockOptions READ dockOptions WRITE setDockOptions)
                                                                                       ##  #if QT_CONFIG(toolbar)
                                                                                       ##      Q_PROPERTY(bool unifiedTitleAndToolBarOnMac READ unifiedTitleAndToolBarOnMac
                                                                                       ##                 WRITE setUnifiedTitleAndToolBarOnMac)
                                                                                       ##  #endif
    dockOptions* {.importc: "DockOptions".}: Q_Flag
  QMainWindowDockOption* {.size: sizeof(cint),
                          importcpp: "QMainWindow::DockOption",
                          header: "qmainwindow.h".} = enum
    AnimatedDocks = 0x01, AllowNestedDocks = 0x02, AllowTabbedDocks = 0x04, ForceTabbedDocks = 0x08, ##  implies AllowTabbedDocks, !AllowNestedDocks
    VerticalTabs = 0x10,        ##  implies AllowTabbedDocks
    GroupedDragging = 0x20
type
  QMdiArea* {.importcpp: "QMdiArea", header: "qmdiarea.h", bycopy.} = object of QAbstractScrollArea
  QMdiAreaAreaOption* {.size: sizeof(cint), importcpp: "QMdiArea::AreaOption",
                       header: "qmdiarea.h".} = enum
    DontMaximizeSubWindowOnActivation = 0x1
type
  QMdiAreaWindowOrder* {.size: sizeof(cint), importcpp: "QMdiArea::WindowOrder",
                        header: "qmdiarea.h".} = enum
    CreationOrder, StackingOrder, ActivationHistoryOrder
type
  QMdiAreaViewMode* {.size: sizeof(cint), importcpp: "QMdiArea::ViewMode",
                     header: "qmdiarea.h".} = enum
    SubWindowView, TabbedView
type
  QMdiSubWindow* {.importcpp: "QMdiSubWindow", header: "qmdisubwindow.h", bycopy.} = object of QWidget
  QMdiSubWindowSubWindowOption* {.size: sizeof(cint),
                                 importcpp: "QMdiSubWindow::SubWindowOption",
                                 header: "qmdisubwindow.h".} = enum
    AllowOutsideAreaHorizontally = 0x1, ##  internal
    AllowOutsideAreaVertically = 0x2, ##  internal
    RubberBandResize = 0x4, RubberBandMove = 0x8
type
  QMenu* {.importcpp: "QMenu", header: "qmenu.h", bycopy.} = object of QWidget
type
  QMenuBar* {.importcpp: "QMenuBar", header: "qmenubar.h", bycopy.} = object of QWidget
type
  QMessageBox* {.importcpp: "QMessageBox", header: "qmessagebox.h", bycopy.} = object of QDialog
    standardButtons* {.importc: "StandardButtons".}: Q_Flag
  QMessageBoxIcon* {.size: sizeof(cint), importcpp: "QMessageBox::Icon",
                    header: "qmessagebox.h".} = enum ##  keep this in sync with QMessageDialogOptions::Icon
    NoIcon = 0, Information = 1, Warning = 2, Critical = 3, Question = 4
type
  QMessageBoxButtonRole* {.size: sizeof(cint),
                          importcpp: "QMessageBox::ButtonRole",
                          header: "qmessagebox.h".} = enum ##  keep this in sync with QDialogButtonBox::ButtonRole and QPlatformDialogHelper::ButtonRole
    InvalidRole = -1, AcceptRole, RejectRole, DestructiveRole, ActionRole, HelpRole,
    YesRole, NoRole, ResetRole, ApplyRole, NRoles
type
  QMessageBoxStandardButton* {.size: sizeof(cint),
                              importcpp: "QMessageBox::StandardButton",
                              header: "qmessagebox.h".} = enum ##  keep this in sync with QDialogButtonBox::StandardButton and QPlatformDialogHelper::StandardButton
    NoButton = 0x00000000, Default = 0x00000100, ##  obsolete
    Escape = 0x00000200,        ##  obsolete
    FlagMask = 0x00000300,      ##  obsolete
    ButtonMask = not flagMask, Ok = 0x00000400, Save = 0x00000800, SaveAll = 0x00001000,
    Open = 0x00002000, Yes = 0x00004000, YesToAll = 0x00008000, No = 0x00010000,
    NoToAll = 0x00020000, Abort = 0x00040000, Retry = 0x00080000, Ignore = 0x00100000,
    Close = 0x00200000, Cancel = 0x00400000, Discard = 0x00800000, Help = 0x01000000,
    Apply = 0x02000000, Reset = 0x04000000, RestoreDefaults = 0x08000000, FirstButton = ok, ##  internal
    LastButton = restoreDefaults, ##  internal
    YesAll = yesToAll,          ##  obsolete
    NoAll = noToAll             ##  obsolete
type
  QPlainTextEdit* {.importcpp: "QPlainTextEdit", header: "qplaintextedit.h", bycopy.} = object of QAbstractScrollArea
  QPlainTextEditLineWrapMode* {.size: sizeof(cint),
                               importcpp: "QPlainTextEdit::LineWrapMode",
                               header: "qplaintextedit.h".} = enum
    NoWrap, WidgetWidth
type
  QPlainTextDocumentLayout* {.importcpp: "QPlainTextDocumentLayout",
                             header: "qplaintextedit.h", bycopy.} = object of QAbstractTextDocumentLayout
type
  QProgressBar* {.importcpp: "QProgressBar", header: "qprogressbar.h", bycopy.} = object of QWidget
  QProgressBarDirection* {.size: sizeof(cint),
                          importcpp: "QProgressBar::Direction",
                          header: "qprogressbar.h".} = enum
    TopToBottom, BottomToTop
type
  QProgressDialog* {.importcpp: "QProgressDialog", header: "qprogressdialog.h",
                    bycopy.} = object of QDialog
type
  QPushButton* {.importcpp: "QPushButton", header: "qpushbutton.h", bycopy.} = object of QAbstractButton
type
  QRadioButton* {.importcpp: "QRadioButton", header: "qradiobutton.h", bycopy.} = object of QAbstractButton
type
  QRubberBand* {.importcpp: "QRubberBand", header: "qrubberband.h", bycopy.} = object of QWidget
  QRubberBandShape* {.size: sizeof(cint), importcpp: "QRubberBand::Shape",
                     header: "qrubberband.h".} = enum
    Line, Rectangle
type
  QScrollArea* {.importcpp: "QScrollArea", header: "qscrollarea.h", bycopy.} = object of QAbstractScrollArea
type
  QScrollBar* {.importcpp: "QScrollBar", header: "qscrollbar.h", bycopy.} = object of QAbstractSlider
type
  QScroller* {.importcpp: "QScroller", header: "qscroller.h", bycopy.} = object of QObject
  QScrollerState* {.size: sizeof(cint), importcpp: "QScroller::State",
                   header: "qscroller.h".} = enum
    Inactive, Pressed, Dragging, Scrolling
type
  QScrollerScrollerGestureType* {.size: sizeof(cint),
                                 importcpp: "QScroller::ScrollerGestureType",
                                 header: "qscroller.h".} = enum
    TouchGesture, LeftMouseButtonGesture, RightMouseButtonGesture,
    MiddleMouseButtonGesture
type
  QScrollerInput* {.size: sizeof(cint), importcpp: "QScroller::Input",
                   header: "qscroller.h".} = enum
    InputPress = 1, InputMove, InputRelease
type
  QScrollerProperties* {.importcpp: "QScrollerProperties",
                        header: "qscrollerproperties.h", bycopy.} = object
type
  QScrollerPropertiesOvershootPolicy* {.size: sizeof(cint), importcpp: "QScrollerProperties::OvershootPolicy",
                                       header: "qscrollerproperties.h".} = enum
    OvershootWhenScrollable, OvershootAlwaysOff, OvershootAlwaysOn
type
  QScrollerPropertiesFrameRates* {.size: sizeof(cint),
                                  importcpp: "QScrollerProperties::FrameRates",
                                  header: "qscrollerproperties.h".} = enum
    Standard, Fps60, Fps30, Fps20
type
  QScrollerPropertiesScrollMetric* {.size: sizeof(cint), importcpp: "QScrollerProperties::ScrollMetric",
                                    header: "qscrollerproperties.h".} = enum
    MousePressEventDelay,     ##  qreal [s]
    DragStartDistance,        ##  qreal [m]
    DragVelocitySmoothingFactor, ##  qreal [0..1/s]  (complex calculation involving time) v = v_new* DASF + v_old * (1-DASF)
    AxisLockThreshold,        ##  qreal [0..1] atan(|min(dx,dy)|/|max(dx,dy)|)
    ScrollingCurve,           ##  QEasingCurve
    DecelerationFactor,       ##  slope of the curve
    MinimumVelocity,          ##  qreal [m/s]
    MaximumVelocity,          ##  qreal [m/s]
    MaximumClickThroughVelocity, ##  qreal [m/s]
    AcceleratingFlickMaximumTime, ##  qreal [s]
    AcceleratingFlickSpeedupFactor, ##  qreal [1..]
    SnapPositionRatio,        ##  qreal [0..1]
    SnapTime,                 ##  qreal [s]
    OvershootDragResistanceFactor, ##  qreal [0..1]
    OvershootDragDistanceFactor, ##  qreal [0..1]
    OvershootScrollDistanceFactor, ##  qreal [0..1]
    OvershootScrollTime,      ##  qreal [s]
    HorizontalOvershootPolicy, ##  enum OvershootPolicy
    VerticalOvershootPolicy,  ##  enum OvershootPolicy
    FrameRate,                ##  enum FrameRates
    ScrollMetricCount
type
  QSizeGrip* {.importcpp: "QSizeGrip", header: "qsizegrip.h", bycopy.} = object of QWidget
type
  QSizePolicy* {.importcpp: "QSizePolicy", header: "qsizepolicy.h", bycopy.} = object
  QSizePolicyPolicyFlag* {.size: sizeof(cint),
                          importcpp: "QSizePolicy::PolicyFlag",
                          header: "qsizepolicy.h".} = enum
    GrowFlag = 1, ExpandFlag = 2, ShrinkFlag = 4, IgnoreFlag = 8
type
  QSizePolicyPolicy* {.size: sizeof(cint), importcpp: "QSizePolicy::Policy",
                      header: "qsizepolicy.h".} = enum
    Fixed = 0, Minimum = growFlag, Maximum = shrinkFlag,
    Preferred = growFlag or shrinkFlag, MinimumExpanding = growFlag or expandFlag,
    Expanding = growFlag or shrinkFlag or expandFlag,
    Ignored = shrinkFlag or growFlag or ignoreFlag
type
  QSizePolicyControlType* {.size: sizeof(cint),
                           importcpp: "QSizePolicy::ControlType",
                           header: "qsizepolicy.h".} = enum
    DefaultType = 0x00000001, ButtonBox = 0x00000002, CheckBox = 0x00000004,
    ComboBox = 0x00000008, Frame = 0x00000010, GroupBox = 0x00000020, Label = 0x00000040,
    Line = 0x00000080, LineEdit = 0x00000100, PushButton = 0x00000200,
    RadioButton = 0x00000400, Slider = 0x00000800, SpinBox = 0x00001000,
    TabWidget = 0x00002000, ToolButton = 0x00004000
type
  QSlider* {.importcpp: "QSlider", header: "qslider.h", bycopy.} = object of QAbstractSlider
  QSliderTickPosition* {.size: sizeof(cint), importcpp: "QSlider::TickPosition",
                        header: "qslider.h".} = enum
    NoTicks = 0, TicksAbove = 1, TicksLeft = ticksAbove, TicksBelow = 2,
    TicksRight = ticksBelow, TicksBothSides = 3
type
  QSpinBox* {.importcpp: "QSpinBox", header: "qspinbox.h", bycopy.} = object of QAbstractSpinBox
type
  QDoubleSpinBox* {.importcpp: "QDoubleSpinBox", header: "qspinbox.h", bycopy.} = object of QAbstractSpinBox
type
  QSplashScreen* {.importcpp: "QSplashScreen", header: "qsplashscreen.h", bycopy.} = object of QWidget
type
  QSplitter* {.importcpp: "QSplitter", header: "qsplitter.h", bycopy.} = object of QFrame
type
  QSplitterHandle* {.importcpp: "QSplitterHandle", header: "qsplitter.h", bycopy.} = object of QWidget
type
  QStackedLayout* {.importcpp: "QStackedLayout", header: "qstackedlayout.h", bycopy.} = object of QLayout
  QStackedLayoutStackingMode* {.size: sizeof(cint),
                               importcpp: "QStackedLayout::StackingMode",
                               header: "qstackedlayout.h".} = enum
    StackOne, StackAll
type
  QStackedWidget* {.importcpp: "QStackedWidget", header: "qstackedwidget.h", bycopy.} = object of QFrame
type
  QStatusBar* {.importcpp: "QStatusBar", header: "qstatusbar.h", bycopy.} = object of QWidget
type
  QStyle* {.importcpp: "QStyle", header: "qstyle.h", bycopy.} = object of QObject
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
type
  QStyleContentsType* {.size: sizeof(cint), importcpp: "QStyle::ContentsType",
                       header: "qstyle.h".} = enum
    CT_PushButton, CT_CheckBox, CT_RadioButton, CT_ToolButton, CT_ComboBox,
    CT_Splitter, CT_ProgressBar, CT_MenuItem, CT_MenuBarItem, CT_MenuBar, CT_Menu,
    CT_TabBarTab, CT_Slider, CT_ScrollBar, CT_LineEdit, CT_SpinBox, CT_SizeGrip,
    CT_TabWidget, CT_DialogButtons, CT_HeaderSection, CT_GroupBox, CT_MdiControls, CT_ItemViewItem, ##  do not add any values below/greater than this
    CT_CustomBase = 0xf0000000
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
type
  QStyledItemDelegate* {.importcpp: "QStyledItemDelegate",
                        header: "qstyleditemdelegate.h", bycopy.} = object of QAbstractItemDelegate
type
  QStyleFactory* {.importcpp: "QStyleFactory", header: "qstylefactory.h", bycopy.} = object
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
type
  QStylePainter* {.importcpp: "QStylePainter", header: "qstylepainter.h", bycopy.} = object of QPainter
type
  QStylePlugin* {.importcpp: "QStylePlugin", header: "qstyleplugin.h", bycopy.} = object of QObject
type
  QTabBar* {.importcpp: "QTabBar", header: "qtabbar.h", bycopy.} = object of QWidget
type
  QTabBarShape* {.size: sizeof(cint), importcpp: "QTabBar::Shape",
                 header: "qtabbar.h".} = enum
    RoundedNorth, RoundedSouth, RoundedWest, RoundedEast, TriangularNorth,
    TriangularSouth, TriangularWest, TriangularEast
type
  QTabBarButtonPosition* {.size: sizeof(cint),
                          importcpp: "QTabBar::ButtonPosition",
                          header: "qtabbar.h".} = enum
    LeftSide, RightSide
type
  QTabBarSelectionBehavior* {.size: sizeof(cint),
                             importcpp: "QTabBar::SelectionBehavior",
                             header: "qtabbar.h".} = enum
    SelectLeftTab, SelectRightTab, SelectPreviousTab
type
  QTableView* {.importcpp: "QTableView", header: "qtableview.h", bycopy.} = object of QAbstractItemView
type
  QTableWidgetSelectionRange* {.importcpp: "QTableWidgetSelectionRange",
                               header: "qtablewidget.h", bycopy.} = object
type
  QTableWidgetItem* {.importcpp: "QTableWidgetItem", header: "qtablewidget.h", bycopy.} = object
  QTableWidgetItemItemType* {.size: sizeof(cint),
                             importcpp: "QTableWidgetItem::ItemType",
                             header: "qtablewidget.h".} = enum
    Type = 0, UserType = 1000
type
  QTableWidget* {.importcpp: "QTableWidget", header: "qtablewidget.h", bycopy.} = object of QTableView
type
  QTabWidget* {.importcpp: "QTabWidget", header: "qtabwidget.h", bycopy.} = object of QWidget
type
  QTabWidgetTabPosition* {.size: sizeof(cint),
                          importcpp: "QTabWidget::TabPosition",
                          header: "qtabwidget.h".} = enum
    North, South, West, East
type
  QTabWidgetTabShape* {.size: sizeof(cint), importcpp: "QTabWidget::TabShape",
                       header: "qtabwidget.h".} = enum
    Rounded, Triangular
type
  QTouchEventWidgetSequence* {.importcpp: "QTest::QTouchEventWidgetSequence",
                              header: "qtestsupport_widgets.h", bycopy.} = object of QTouchEventSequence
type
  QTextBrowser* {.importcpp: "QTextBrowser", header: "qtextbrowser.h", bycopy.} = object of QTextEdit
type
  QTextEdit* {.importcpp: "QTextEdit", header: "qtextedit.h", bycopy.} = object of QAbstractScrollArea
    autoFormatting* {.importc: "AutoFormatting".}: Q_Flag
  QTextEditLineWrapMode* {.size: sizeof(cint),
                          importcpp: "QTextEdit::LineWrapMode",
                          header: "qtextedit.h".} = enum
    NoWrap, WidgetWidth, FixedPixelWidth, FixedColumnWidth
type
  QTextEditAutoFormattingFlag* {.size: sizeof(cint),
                                importcpp: "QTextEdit::AutoFormattingFlag",
                                header: "qtextedit.h".} = enum
    AutoNone = 0, AutoBulletList = 0x00000001, AutoAll = 0xffffffff
type
  QTextEditExtraSelection* {.importcpp: "QTextEdit::ExtraSelection",
                            header: "qtextedit.h", bycopy.} = object
    cursor* {.importc: "cursor".}: QTextCursor
    format* {.importc: "format".}: QTextCharFormat
type
  QToolBar* {.importcpp: "QToolBar", header: "qtoolbar.h", bycopy.} = object of QWidget
type
  QToolBox* {.importcpp: "QToolBox", header: "qtoolbox.h", bycopy.} = object of QFrame
type
  QToolButton* {.importcpp: "QToolButton", header: "qtoolbutton.h", bycopy.} = object of QAbstractButton
  QToolButtonToolButtonPopupMode* {.size: sizeof(cint), importcpp: "QToolButton::ToolButtonPopupMode",
                                   header: "qtoolbutton.h".} = enum
    DelayedPopup, MenuButtonPopup, InstantPopup
type
  QToolTip* {.importcpp: "QToolTip", header: "qtooltip.h", bycopy.} = object
type
  QTreeView* {.importcpp: "QTreeView", header: "qtreeview.h", bycopy.} = object of QAbstractItemView
type
  QTreeWidgetItem* {.importcpp: "QTreeWidgetItem", header: "qtreewidget.h", bycopy.} = object
    ##  One item has a vector of column entries. Each column has a vector of (role, value) pairs.
    ##  ### Qt7: Move children to d-pointer and replace QList by a suitable data structure.
    ##           to fix QTBUG-94546
  QTreeWidgetItemItemType* {.size: sizeof(cint),
                            importcpp: "QTreeWidgetItem::ItemType",
                            header: "qtreewidget.h".} = enum
    Type = 0, UserType = 1000
type
  QTreeWidgetItemChildIndicatorPolicy* {.size: sizeof(cint), importcpp: "QTreeWidgetItem::ChildIndicatorPolicy",
                                        header: "qtreewidget.h".} = enum
    ShowIndicator, DontShowIndicator, DontShowIndicatorWhenChildless
type
  QTreeWidget* {.importcpp: "QTreeWidget", header: "qtreewidget.h", bycopy.} = object of QTreeView
type
  QTreeWidgetItemIterator* {.importcpp: "QTreeWidgetItemIterator",
                            header: "qtreewidgetitemiterator.h", bycopy.} = object
  QTreeWidgetItemIteratorIteratorFlag* {.size: sizeof(cint), importcpp: "QTreeWidgetItemIterator::IteratorFlag",
                                        header: "qtreewidgetitemiterator.h".} = enum
    All = 0x00000000, Hidden = 0x00000001, NotHidden = 0x00000002, Selected = 0x00000004,
    Unselected = 0x00000008, Selectable = 0x00000010, NotSelectable = 0x00000020,
    DragEnabled = 0x00000040, DragDisabled = 0x00000080, DropEnabled = 0x00000100,
    DropDisabled = 0x00000200, HasChildren = 0x00000400, NoChildren = 0x00000800,
    Checked = 0x00001000, NotChecked = 0x00002000, Enabled = 0x00004000,
    Disabled = 0x00008000, Editable = 0x00010000, NotEditable = 0x00020000,
    UserFlag = 0x01000000
type
  QUndoView* {.importcpp: "QUndoView", header: "qundoview.h", bycopy.} = object of QListView
type
  QWhatsThis* {.importcpp: "QWhatsThis", header: "qwhatsthis.h", bycopy.} = object
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
type
  QWidget* {.importcpp: "QWidget", header: "qwidget.h", bycopy.} = object of QObject ##  Widget management functions
                                                                           ##  Event handlers
  QWidgetRenderFlag* {.size: sizeof(cint), importcpp: "QWidget::RenderFlag",
                      header: "qwidget.h".} = enum
    DrawWindowBackground = 0x1, DrawChildren = 0x2, IgnoreMask = 0x4
type
  QWidgetAction* {.importcpp: "QWidgetAction", header: "qwidgetaction.h", bycopy.} = object of QAction
type
  QWizard* {.importcpp: "QWizard", header: "qwizard.h", bycopy.} = object of QDialog
    wizardOptions* {.importc: "WizardOptions".}: Q_Flag
  QWizardWizardButton* {.size: sizeof(cint), importcpp: "QWizard::WizardButton",
                        header: "qwizard.h".} = enum
    NoButton = -1, BackButton, NextButton, CommitButton, FinishButton, CancelButton,
    HelpButton, CustomButton1, CustomButton2, CustomButton3, Stretch
type
  QWizardWizardPixmap* {.size: sizeof(cint), importcpp: "QWizard::WizardPixmap",
                        header: "qwizard.h".} = enum
    WatermarkPixmap, LogoPixmap, BannerPixmap, BackgroundPixmap, NPixmaps
type
  QWizardWizardStyle* {.size: sizeof(cint), importcpp: "QWizard::WizardStyle",
                       header: "qwizard.h".} = enum
    ClassicStyle, ModernStyle, MacStyle, AeroStyle, NStyles
type
  QWizardWizardOption* {.size: sizeof(cint), importcpp: "QWizard::WizardOption",
                        header: "qwizard.h".} = enum
    IndependentPages = 0x00000001, IgnoreSubTitles = 0x00000002,
    ExtendedWatermarkPixmap = 0x00000004, NoDefaultButton = 0x00000008,
    NoBackButtonOnStartPage = 0x00000010, NoBackButtonOnLastPage = 0x00000020,
    DisabledBackButtonOnLastPage = 0x00000040,
    HaveNextButtonOnLastPage = 0x00000080,
    HaveFinishButtonOnEarlyPages = 0x00000100, NoCancelButton = 0x00000200,
    CancelButtonOnLeft = 0x00000400, HaveHelpButton = 0x00000800,
    HelpButtonOnRight = 0x00001000, HaveCustomButton1 = 0x00002000,
    HaveCustomButton2 = 0x00004000, HaveCustomButton3 = 0x00008000,
    NoCancelButtonOnLastPage = 0x00010000
type
  QWizardPage* {.importcpp: "QWizardPage", header: "qwizard.h", bycopy.} = object of QWidget
