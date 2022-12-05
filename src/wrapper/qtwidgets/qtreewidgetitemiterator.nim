import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(treewidget)
discard "forward decl of QTreeWidget"
discard "forward decl of QTreeWidgetItem"
discard "forward decl of QTreeModel"
discard "forward decl of QTreeWidgetItemIteratorPrivate"



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

