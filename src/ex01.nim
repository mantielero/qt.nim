{.passC:"-std=c++17 -fPIC -I/usr/include/qt6"}
{.passL:"-lQt6Core -lQt6Gui -lQt6Widgets"}
# g++ -fPIC -I/path/to/Qt/include -I/path/to/Qt/include/QtCore .... main.cpp foo.coo bar.cpp -lQt6Core -lQt6Gui ..
# /usr/include/qt6/QtWidgets/QApplication
# /usr/include/qt6/QtWidgets/qapplication.h
import std/os

type
  QApplication {.importcpp:"QApplication", header:"<QtWidgets/QApplication>".} = object
  QPushButton {.importcpp:"QPushButton", header:"<QtWidgets/QPushButton>".} = object

proc newQApplication*(arc:cint; argv:cstringArray):QApplication {.constructor, importcpp:"QApplication(@)".}

proc newQApplication*():QApplication {.constructor, importcpp:"QApplication(0,[])".}

proc newQPushButton*(txt:cstring):QPushButton {.constructor, importcpp:"QPushButton(@)".}

proc show*(this:QPushButton) {.constructor, importcpp:"#.show()".}

proc exec*(this:QApplication):int {.constructor, importcpp:"#.exec()".}

proc main() =
  var params = commandLineParams()
  #var tmp:seq[cstring]
  #for i in params:
  #  tmp &= i.cstring
  var n:cint = params.len.cint
  var cdata: cstringArray = params.allocCStringArray()
  #main(5, cdata) 
  var app    = newQApplication(n, cdata)
  cdata.deallocCStringArray()     
  var button = newQPushButton("Hello world!")
  button.show()
  discard app.exec()

main()
#proc app*(argc:cint; argv:)

#[
#include <QApplication>
#include <QPushButton>

int main(int argc, char **argv)
{
 QApplication app (argc, argv);

 QPushButton button ("Hello world !");
 button.show();

 return app.exec();
}
]#