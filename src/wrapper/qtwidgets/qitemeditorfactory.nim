##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(itemviews)
discard "forward decl of QWidget"
type
  QItemEditorCreatorBase* {.importcpp: "QItemEditorCreatorBase",
                           header: "qitemeditorfactory.h", bycopy.} = object


proc destroyQItemEditorCreatorBase*(this: var QItemEditorCreatorBase) {.
    importcpp: "#.~QItemEditorCreatorBase()", header: "qitemeditorfactory.h".}
proc createWidget*(this: QItemEditorCreatorBase; parent: ptr QWidget): ptr QWidget {.
    noSideEffect, importcpp: "createWidget", header: "qitemeditorfactory.h".}
proc valuePropertyName*(this: QItemEditorCreatorBase): QByteArray {.noSideEffect,
    importcpp: "valuePropertyName", header: "qitemeditorfactory.h".}
type
  QItemEditorCreator*[T] {.importcpp: "QItemEditorCreator<\'0>",
                          header: "qitemeditorfactory.h", bycopy.} = object of QItemEditorCreatorBase


proc constructQItemEditorCreator*[T](valuePropertyName: QByteArray): QItemEditorCreator[
    T] {.constructor, importcpp: "QItemEditorCreator<\'*0>(@)",
        header: "qitemeditorfactory.h".}
proc createWidget*[T](this: QItemEditorCreator[T]; parent: ptr QWidget): ptr QWidget {.
    noSideEffect, importcpp: "createWidget", header: "qitemeditorfactory.h".}
proc valuePropertyName*[T](this: QItemEditorCreator[T]): QByteArray {.noSideEffect,
    importcpp: "valuePropertyName", header: "qitemeditorfactory.h".}
type
  QStandardItemEditorCreator*[T] {.importcpp: "QStandardItemEditorCreator<\'0>",
                                  header: "qitemeditorfactory.h", bycopy.} = object of QItemEditorCreatorBase


proc constructQStandardItemEditorCreator*[T](): QStandardItemEditorCreator[T] {.
    constructor, importcpp: "QStandardItemEditorCreator<\'*0>(@)",
    header: "qitemeditorfactory.h".}
proc createWidget*[T](this: QStandardItemEditorCreator[T]; parent: ptr QWidget): ptr QWidget {.
    noSideEffect, importcpp: "createWidget", header: "qitemeditorfactory.h".}
proc valuePropertyName*[T](this: QStandardItemEditorCreator[T]): QByteArray {.
    noSideEffect, importcpp: "valuePropertyName", header: "qitemeditorfactory.h".}
##  template <class T>
##  Q_INLINE_TEMPLATE QItemEditorCreator<T>::QItemEditorCreator(const QByteArray &avaluePropertyName)
##      : propertyName(avaluePropertyName) {}

type
  QItemEditorFactory* {.importcpp: "QItemEditorFactory",
                       header: "qitemeditorfactory.h", bycopy.} = object


proc constructQItemEditorFactory*(): QItemEditorFactory {.constructor,
    importcpp: "QItemEditorFactory(@)", header: "qitemeditorfactory.h".}
proc destroyQItemEditorFactory*(this: var QItemEditorFactory) {.
    importcpp: "#.~QItemEditorFactory()", header: "qitemeditorfactory.h".}
proc createEditor*(this: QItemEditorFactory; userType: cint; parent: ptr QWidget): ptr QWidget {.
    noSideEffect, importcpp: "createEditor", header: "qitemeditorfactory.h".}
proc valuePropertyName*(this: QItemEditorFactory; userType: cint): QByteArray {.
    noSideEffect, importcpp: "valuePropertyName", header: "qitemeditorfactory.h".}
proc registerEditor*(this: var QItemEditorFactory; userType: cint;
                    creator: ptr QItemEditorCreatorBase) {.
    importcpp: "registerEditor", header: "qitemeditorfactory.h".}
proc defaultFactory*(): ptr QItemEditorFactory {.
    importcpp: "QItemEditorFactory::defaultFactory(@)",
    header: "qitemeditorfactory.h".}
proc setDefaultFactory*(factory: ptr QItemEditorFactory) {.
    importcpp: "QItemEditorFactory::setDefaultFactory(@)",
    header: "qitemeditorfactory.h".}