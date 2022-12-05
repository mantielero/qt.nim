##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QVariant"
discard "forward decl of QSizePolicy"
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


q_Declare_Typeinfo(constructQSizePolicy, q_Primitive_Type)
##  #ifndef QT_NO_DATASTREAM
##  Q_WIDGETS_EXPORT QDataStream &operator<<(QDataStream &, const QSizePolicy &);
##  Q_WIDGETS_EXPORT QDataStream &operator>>(QDataStream &, QSizePolicy &);
##  #endif
##
##  #ifndef QT_NO_DEBUG_STREAM
##  Q_WIDGETS_EXPORT QDebug operator<<(QDebug dbg, const QSizePolicy &);
##  #endif
