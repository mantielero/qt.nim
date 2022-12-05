##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(treewidget)
discard "forward decl of QTreeWidget"
discard "forward decl of QTreeWidgetItem"
discard "forward decl of QTreeModel"
discard "forward decl of QTreeWidgetItemIteratorPrivate"
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


proc constructQTreeWidgetItemIterator*(it: QTreeWidgetItemIterator): QTreeWidgetItemIterator {.
    constructor, importcpp: "QTreeWidgetItemIterator(@)",
    header: "qtreewidgetitemiterator.h".}
proc constructQTreeWidgetItemIterator*(widget: ptr QTreeWidget;
                                      flags: IteratorFlags = all): QTreeWidgetItemIterator {.
    constructor, importcpp: "QTreeWidgetItemIterator(@)",
    header: "qtreewidgetitemiterator.h".}
proc constructQTreeWidgetItemIterator*(item: ptr QTreeWidgetItem;
                                      flags: IteratorFlags = all): QTreeWidgetItemIterator {.
    constructor, importcpp: "QTreeWidgetItemIterator(@)",
    header: "qtreewidgetitemiterator.h".}
proc destroyQTreeWidgetItemIterator*(this: var QTreeWidgetItemIterator) {.
    importcpp: "#.~QTreeWidgetItemIterator()", header: "qtreewidgetitemiterator.h".}
proc `++`*(this: var QTreeWidgetItemIterator): var QTreeWidgetItemIterator {.
    importcpp: "(++ #)", header: "qtreewidgetitemiterator.h".}
proc `++`*(this: var QTreeWidgetItemIterator; a2: cint): QTreeWidgetItemIterator {.
    importcpp: "(++ #)", header: "qtreewidgetitemiterator.h".}
proc `+=`*(this: var QTreeWidgetItemIterator; n: cint) {.importcpp: "(# += #)",
    header: "qtreewidgetitemiterator.h".}
proc `--`*(this: var QTreeWidgetItemIterator): var QTreeWidgetItemIterator {.
    importcpp: "(-- #)", header: "qtreewidgetitemiterator.h".}
proc `--`*(this: var QTreeWidgetItemIterator; a2: cint): QTreeWidgetItemIterator {.
    importcpp: "(-- #)", header: "qtreewidgetitemiterator.h".}
proc `-=`*(this: var QTreeWidgetItemIterator; n: cint) {.importcpp: "(# -= #)",
    header: "qtreewidgetitemiterator.h".}
proc `*`*(this: QTreeWidgetItemIterator): ptr QTreeWidgetItem {.noSideEffect,
    importcpp: "(* #)", header: "qtreewidgetitemiterator.h".}
##  inline const QTreeWidgetItemIterator QTreeWidgetItemIterator::operator++(int)
##  {
##      QTreeWidgetItemIterator it = *this;
##      ++(*this);
##      return it;
##  }
##
##  inline const QTreeWidgetItemIterator QTreeWidgetItemIterator::operator--(int)
##  {
##      QTreeWidgetItemIterator it = *this;
##      --(*this);
##      return it;
##  }
##
##  inline QTreeWidgetItemIterator &QTreeWidgetItemIterator::operator+=(int n)
##  {
##      if (n < 0)
##          return (*this) -= (-n);
##      while (current && n--)
##          ++(*this);
##      return *this;
##  }
##
##  inline QTreeWidgetItemIterator &QTreeWidgetItemIterator::operator-=(int n)
##  {
##      if (n < 0)
##          return (*this) += (-n);
##      while (current && n--)
##          --(*this);
##      return *this;
##  }
##
##  inline QTreeWidgetItem *QTreeWidgetItemIterator::operator*() const
##  {
##      return current;
##  }
