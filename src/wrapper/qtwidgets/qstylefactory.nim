import qtwidgets_types

##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

discard "forward decl of QStyle"


proc keys*(): QStringList {.importcpp: "QStyleFactory::keys(@)",
                         header: "qstylefactory.h".}
proc create*(a1: QString): ptr QStyle {.importcpp: "QStyleFactory::create(@)",
                                   header: "qstylefactory.h".}
