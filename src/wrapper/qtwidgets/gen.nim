# nim c -r gen  2>&1 | grep Error
import ed
import std/os
import strformat, strutils, sequtils
import npeg
#import compiler/parser # https://stackoverflow.com/questions/32487507/nim-code-parser

iterator getFileList(folder, startsWith:string):string =
  var pattern = folder  / startsWith & &"*.h"
  for i in walkFiles(pattern):
    yield i





#=====================================================

let folder = "/usr/include/qt6/QtWidgets"
let packageName = "qtwidgets"
let c2nimFile = packageName & ".c2nim"




# --------------------------------------
# 1. Print the filenames to be processed
# --------------------------------------
# Equivalent to something like: # ls /usr/include/opencascade/Aspect*.hxx | cut -c 26-
# for fname in getFileList( folder, "q"):
#   echo fname.rsplit('/',1)[1]

# --------------------
# 2. Bindings creation
# --------------------








var 
  name:string
  header:Header
  binding:Binding
  headers:seq[tuple[name:string, header:Header, binding:Binding]]


name = "qabstractbutton.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qabstractitemdelegate.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qabstractitemview.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qabstractscrollarea.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qabstractslider.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qabstractspinbox.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qaccessiblewidget.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qaction.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
headers &= (name, header, binding)
binding.save

name = "qactiongroup.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qapplication.h"
header = newHeader(folder, name, c2nimFile )
#header.commentIF("QT_DEPRECATED_SINCE(6,0)")
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

#----
name = "qboxlayout.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qbuttongroup.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcalendarwidget.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcheckbox.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcolordialog.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcolormap.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcolumnview.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcombobox.h"
header = newHeader(folder, name, c2nimFile )
header.comment(197,198)  # TODO: FIXME
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcommandlinkbutton.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcommonstyle.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qcompleter.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

#-----
name = "qdatawidgetmapper.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qdatetimeedit.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qdial.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qdialog.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qdialogbuttonbox.h"
header = newHeader(folder, name, c2nimFile )
header.comment(65,65)
header.comment(68,68)
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qdockwidget.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qdrawutil.h"
header = newHeader(folder, name, c2nimFile )
header.comment(118,118)
header.comment(120,120)
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qerrormessage.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

#--------
name = "qfiledialog.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qfileiconprovider.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qfilesystemmodel.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qfocusframe.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qfontcombobox.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qfontdialog.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qformlayout.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qframe.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

#-----
name = "qgesture.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgesturerecognizer.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicsanchorlayout.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicseffect.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicsgridlayout.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicsitem.h" # TODO: FIXME<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
header = newHeader(folder, name, c2nimFile )
header.comment("""#if QT_CONFIG(graphicseffect)
    // Effect
    QGraphicsEffect *graphicsEffect() const;
    void setGraphicsEffect(QGraphicsEffect *effect);
#endif // QT_CONFIG(graphicseffect)""") # TODO: FIXME
header.comment("""#ifndef Q_CLANG_QDOC
Q_DECLARE_INTERFACE(QGraphicsItem, "org.qt-project.Qt.QGraphicsItem")
#endif""") # TODO: FIXME
#header.comment("""    Q_PRIVATE_PROPERTY(QGraphicsItem::d_func(), QDeclarativeListProperty<QGraphicsObject> children
#                       READ childrenList DESIGNABLE false NOTIFY childrenChanged)""") # TODO: FIXME
header.comment(972,984)
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicsitemanimation.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicslayout.h"
header = newHeader(folder, name, c2nimFile )
# header.comment("""#ifndef Q_CLANG_QDOC
# Q_DECLARE_INTERFACE(QGraphicsLayout, "org.qt-project.Qt.QGraphicsLayout")
# #endif""")
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicslayoutitem.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicslinearlayout.h"
header = newHeader(folder, name, c2nimFile )
header.comment("""#if 0 // ###
    Q5SizePolicy::ControlTypes controlTypes(LayoutSide side) const;
#endif""")

binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicsproxywidget.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicsscene.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicssceneevent.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicstransform.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicsview.h"
header = newHeader(folder, name, c2nimFile )
header.comment("""#if QT_CONFIG(rubberband)
Q_SIGNALS:
    void rubberBandChanged(QRect viewportRect, QPointF fromScenePoint, QPointF toScenePoint);
#endif""")

binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgraphicswidget.h"
header = newHeader(folder, name, c2nimFile )
header.comment(113,113)
header.comment(121,121)
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgridlayout.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save

name = "qgroupbox.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
headers &= (name, header, binding)
binding.save
#==========

name = "qheaderview.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qinputdialog.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qitemdelegate.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qitemeditorfactory.h"
header = newHeader(folder, name, c2nimFile )
header.comment("""template <class T>
Q_INLINE_TEMPLATE QItemEditorCreator<T>::QItemEditorCreator(const QByteArray &avaluePropertyName)
    : propertyName(avaluePropertyName) {}""")
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qkeysequenceedit.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qlabel.h"
header = newHeader(folder, name, c2nimFile )
header.comment("""#ifndef QT_NO_PICTURE
#if QT_DEPRECATED_SINCE(6,6)
    QPicture picture(Qt::ReturnByValueConstant) const { return picture(); }
#endif""")
header.comment(53, 53)
header.comment(125, 127)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qlayout.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qlayoutitem.h"
header = newHeader(folder, name, c2nimFile )
header.comment("""inline QLayoutItem::QLayoutItem(Qt::Alignment aalignment)
    : align(aalignment) { }""")
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qlcdnumber.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qlineedit.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qlistview.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qlistwidget.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qmainwindow.h"
header = newHeader(folder, name, c2nimFile )
header.comment(30,44)
header.comment(130,147)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qmdiarea.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qmdisubwindow.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qmenu.h"
header = newHeader(folder, name, c2nimFile )
header.comment(46,50)
header.comment(43,51)
header.comment(53,111)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qmenubar.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qmessagebox.h"
header = newHeader(folder, name, c2nimFile )
header.commentIF("""QT_VERSION < QT_VERSION_CHECK(7, 0, 0) // needed as long as we have int overloads""")
header.replace("    QT_DEPRECATED_VERSION_X_6_2", "//     QT_DEPRECATED_VERSION_X_6_2")
header.comment(195, 195)
header.comment(259, 259)
header.comment(272, 272)
header.comment(275, 275)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qplaintextedit.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qprogressbar.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qprogressdialog.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qproxystyle.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qpushbutton.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qradiobutton.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qrubberband.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qscrollarea.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qscrollbar.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qscroller.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qscrollerproperties.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qshortcut.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qsizegrip.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qsizepolicy.h"
header = newHeader(folder, name, c2nimFile )
header.comment("constexpr QSizePolicy() noexcept : data(0) { }")
header.comment("""    constexpr QSizePolicy(Policy horizontal, Policy vertical, ControlType type = DefaultType) noexcept
        : bits{0, 0, quint32(horizontal), quint32(vertical),
               type == DefaultType ? 0 : toControlTypeFieldValue(type), 0, 0, 0}
    {}""")
header.comment("    constexpr Policy horizontalPolicy() const noexcept { return static_cast<Policy>(bits.horPolicy); }")
header.comment("    constexpr Policy verticalPolicy() const noexcept { return static_cast<Policy>(bits.verPolicy); }")
header.comment("    ControlType controlType() const noexcept;")
header.comment("    constexpr void setHorizontalPolicy(Policy d) noexcept { bits.horPolicy = d; }")
header.comment("    constexpr void setVerticalPolicy(Policy d) noexcept { bits.verPolicy = d; }")
header.comment("    void setControlType(ControlType type) noexcept;")
header.comment("""    constexpr Qt::Orientations expandingDirections() const noexcept {
        return ( (verticalPolicy()   & static_cast<Policy>(ExpandFlag)) ? Qt::Vertical   : Qt::Orientations() )
             | ( (horizontalPolicy() & static_cast<Policy>(ExpandFlag)) ? Qt::Horizontal : Qt::Orientations() ) ;
    }""")
header.comment("""    Q_DECLARE_FLAGS(ControlTypes, ControlType)
    Q_FLAG(ControlTypes)""")
header.comment("""    constexpr void setHeightForWidth(bool b) noexcept { bits.hfw = b;  }
    constexpr bool hasHeightForWidth() const noexcept { return bits.hfw; }
    constexpr void setWidthForHeight(bool b) noexcept { bits.wfh = b;  }
    constexpr bool hasWidthForHeight() const noexcept { return bits.wfh; }""")
header.comment("""    constexpr bool operator==(const QSizePolicy& s) const noexcept { return data == s.data; }
    constexpr bool operator!=(const QSizePolicy& s) const noexcept { return data != s.data; }

    friend Q_DECL_CONST_FUNCTION size_t qHash(QSizePolicy key, size_t seed = 0) noexcept { return qHash(key.data, seed); }

    operator QVariant() const;""")
header.comment("""    constexpr int horizontalStretch() const noexcept { return static_cast<int>(bits.horStretch); }
    constexpr int verticalStretch() const noexcept { return static_cast<int>(bits.verStretch); }
    constexpr void setHorizontalStretch(int stretchFactor) { bits.horStretch = static_cast<quint32>(qBound(0, stretchFactor, 255)); }
    constexpr void setVerticalStretch(int stretchFactor) { bits.verStretch = static_cast<quint32>(qBound(0, stretchFactor, 255)); }

    constexpr bool retainSizeWhenHidden() const noexcept { return bits.retainSizeWhenHidden; }
    constexpr void setRetainSizeWhenHidden(bool retainSize) noexcept { bits.retainSizeWhenHidden = retainSize; }

    constexpr void transpose() noexcept { *this = transposed(); }
    [[nodiscard]] constexpr QSizePolicy transposed() const noexcept
    {
        return QSizePolicy(bits.transposed());
    }""")
header.comment("    constexpr QSizePolicy(int i) noexcept : data(i) { }")
header.comment("    constexpr explicit QSizePolicy(Bits b) noexcept : bits(b) { }")
header.comment(114, 132)
header.comment(144, 154)
header.comment(167, 174)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qslider.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qspinbox.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qsplashscreen.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qsplitter.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstackedlayout.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstackedwidget.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstatusbar.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstyle.h"
header = newHeader(folder, name, c2nimFile )
header.comment(91,91)
header.comment(93,93)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstyleditemdelegate.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstylefactory.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstyleoption.h"
header = newHeader(folder, name, c2nimFile )
header.comment("QStyleOptionFocusRect &operator=(const QStyleOptionFocusRect &) = default;")
header.comment("    QStyleOptionFrame &operator=(const QStyleOptionFrame &) = default;")
header.comment(117,117)
header.comment(142, 142)
header.comment("    QStyleOptionTabWidgetFrame &operator=(const QStyleOptionTabWidgetFrame &) = default;")
header.comment("    QStyleOptionTabBarBase &operator=(const QStyleOptionTabBarBase &) = default;")
header.comment("    QStyleOptionHeader &operator=(const QStyleOptionHeader &) = default;")
header.comment("    QStyleOptionHeaderV2 &operator=(const QStyleOptionHeaderV2 &) = default;")
header.comment("    QStyleOptionButton &operator=(const QStyleOptionButton &) = default;")
header.comment("    QStyleOptionTab &operator=(const QStyleOptionTab &) = default;")
header.comment("    QStyleOptionToolBar &operator=(const QStyleOptionToolBar &) = default;")
header.comment("    QStyleOptionProgressBar &operator=(const QStyleOptionProgressBar &) = default;")
header.comment("    QStyleOptionMenuItem &operator=(const QStyleOptionMenuItem &) = default;")
header.comment("    QStyleOptionDockWidget &operator=(const QStyleOptionDockWidget &) = default;")
header.comment("    QStyleOptionViewItem &operator=(const QStyleOptionViewItem &) = default;")
header.comment("    QStyleOptionToolBox &operator=(const QStyleOptionToolBox &) = default;")
header.comment("    QStyleOptionRubberBand &operator=(const QStyleOptionRubberBand &) = default;")
header.comment("    QStyleOptionComplex &operator=(const QStyleOptionComplex &) = default;")
header.comment("    QStyleOptionSlider &operator=(const QStyleOptionSlider &) = default;")
header.comment("    QStyleOptionSpinBox &operator=(const QStyleOptionSpinBox &) = default;")
header.comment("    QStyleOptionToolButton &operator=(const QStyleOptionToolButton &) = default;")
header.comment("    QStyleOptionComboBox &operator=(const QStyleOptionComboBox &) = default;")
header.comment("    QStyleOptionTitleBar &operator=(const QStyleOptionTitleBar &) = default;")
header.comment("    QStyleOptionGroupBox &operator=(const QStyleOptionGroupBox &) = default;")
header.comment("    QStyleOptionSizeGrip &operator=(const QStyleOptionSizeGrip &) = default;")
header.comment("    QStyleOptionGraphicsItem &operator=(const QStyleOptionGraphicsItem &) = default;")
header.comment(663, 685)
header.comment(726, 744)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstylepainter.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qstyleplugin.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qsystemtrayicon.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtabbar.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtableview.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtablewidget.h"
header = newHeader(folder, name, c2nimFile )
header.comment("""    friend bool operator==(const QTableWidgetSelectionRange &lhs,
                           const QTableWidgetSelectionRange &rhs) noexcept
    { return lhs.m_top == rhs.m_top && lhs.m_left == rhs.m_left
          && lhs.m_bottom == rhs.m_bottom && lhs.m_right == rhs.m_right; };
    friend bool operator!=(const QTableWidgetSelectionRange &lhs,
                           const QTableWidgetSelectionRange &rhs) noexcept
    { return !(lhs == rhs); }""")
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtabwidget.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtestsupport_widgets.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtextbrowser.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtextedit.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtoolbar.h"
header = newHeader(folder, name, c2nimFile )

binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtoolbox.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtoolbutton.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtooltip.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtreeview.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtreewidget.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtreewidgetitemiterator.h"
header = newHeader(folder, name, c2nimFile )
header.comment(73,108)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtwidgets-config.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



# name = "qtwidgetsexports.h"
# header = newHeader(folder, name, c2nimFile )
# header.comment(9,17)
# binding = header.genBindings#(clean = false)
# binding.ignore = true
# headers &= (name, header, binding)
# binding.save



name = "qtwidgetsglobal.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qtwidgetsversion.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qundogroup.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qundostack.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qundoview.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qwhatsthis.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qwidget.h"
header = newHeader(folder, name, c2nimFile )
header.comment("""#if 0
    // ### TODO: make this work (requires SFINAE-friendly connect())
    template <typename...Args>
    using compatible_action_slot_args = std::void_t<
        decltype(QObject::connect(std::declval<QAction*>(), &QAction::triggered,
                                  std::declval<Args>()...))
    >;
#else
    // good-enough compromise for now
    template <typename...Args>
    using compatible_action_slot_args = std::enable_if_t<std::conjunction_v<
#if QT_CONFIG(shortcut)
            std::disjunction<
                std::is_same<Args, Qt::ConnectionType>,
                std::negation<std::is_convertible<Args, QKeySequence>>
            >...,
#endif
            std::negation<std::is_convertible<Args, QIcon>>...,
            std::negation<std::is_convertible<Args, const char*>>...,
            std::negation<std::is_convertible<Args, QString>>...
        >>;
#endif""")
header.comment(551,551) #  #ifndef QT_NO_ACTION
header.comment(607,607) #  #endif // QT_NO_ACTION
header.comment("template <typename...Args, typename = compatible_action_slot_args<Args...>>")
header.comment(570,572)
header.comment(567,580)
header.comment(582, 606)

header.comment(760, 760)
header.comment(763, 763)

header.comment(766, 766)
header.comment(768, 768)

header.comment(782, 793)
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qwidgetaction.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save



name = "qwizard.h"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings#(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save




# name = "qpushbutton.h"
# header = newHeader(folder, name, c2nimFile )
# binding = header.genBindings#(clean = false)
# #binding.ignore = true
# headers &= (name, header, binding)
# binding.save


# for fname in getFileList( folder, "q"):
#   var name = fname.rsplit('/',1)[1]
#   var tmp = &"""name = "{name}"
# header = newHeader(folder, name, c2nimFile )
# binding = header.genBindings#(clean = false)
# #binding.ignore = true
# headers &= (name, header, binding)
# binding.save


# """
#   echo tmp
  #echo fname.rsplit('/',1)[1]
