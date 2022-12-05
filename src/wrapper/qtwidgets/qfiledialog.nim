##  Copyright (C) 2016 The Qt Company Ltd.
##  SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

qt_Require_Config(filedialog)
discard "forward decl of QModelIndex"
discard "forward decl of QItemSelection"
discard "forward decl of QFileDialogArgs"
discard "forward decl of QFileDialogPrivate"
discard "forward decl of QAbstractFileIconProvider"
discard "forward decl of QAbstractItemDelegate"
discard "forward decl of QAbstractProxyModel"
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


proc constructQFileDialog*(parent: ptr QWidget; f: WindowFlags): QFileDialog {.
    constructor, importcpp: "QFileDialog(@)", header: "qfiledialog.h".}
proc constructQFileDialog*(parent: ptr QWidget = nil; caption: QString = qString();
                          directory: QString = qString();
                          filter: QString = qString()): QFileDialog {.constructor,
    importcpp: "QFileDialog(@)", header: "qfiledialog.h".}
proc destroyQFileDialog*(this: var QFileDialog) {.importcpp: "#.~QFileDialog()",
    header: "qfiledialog.h".}
proc setDirectory*(this: var QFileDialog; directory: QString) {.
    importcpp: "setDirectory", header: "qfiledialog.h".}
proc setDirectory*(this: var QFileDialog; directory: QDir) {.
    importcpp: "setDirectory", header: "qfiledialog.h".}
proc directory*(this: QFileDialog): QDir {.noSideEffect, importcpp: "directory",
                                       header: "qfiledialog.h".}
proc setDirectoryUrl*(this: var QFileDialog; directory: QUrl) {.
    importcpp: "setDirectoryUrl", header: "qfiledialog.h".}
proc directoryUrl*(this: QFileDialog): QUrl {.noSideEffect,
    importcpp: "directoryUrl", header: "qfiledialog.h".}
proc selectFile*(this: var QFileDialog; filename: QString) {.importcpp: "selectFile",
    header: "qfiledialog.h".}
proc selectedFiles*(this: QFileDialog): QStringList {.noSideEffect,
    importcpp: "selectedFiles", header: "qfiledialog.h".}
proc selectUrl*(this: var QFileDialog; url: QUrl) {.importcpp: "selectUrl",
    header: "qfiledialog.h".}
proc selectedUrls*(this: QFileDialog): QList[QUrl] {.noSideEffect,
    importcpp: "selectedUrls", header: "qfiledialog.h".}
proc setNameFilter*(this: var QFileDialog; filter: QString) {.
    importcpp: "setNameFilter", header: "qfiledialog.h".}
proc setNameFilters*(this: var QFileDialog; filters: QStringList) {.
    importcpp: "setNameFilters", header: "qfiledialog.h".}
proc nameFilters*(this: QFileDialog): QStringList {.noSideEffect,
    importcpp: "nameFilters", header: "qfiledialog.h".}
proc selectNameFilter*(this: var QFileDialog; filter: QString) {.
    importcpp: "selectNameFilter", header: "qfiledialog.h".}
proc selectedMimeTypeFilter*(this: QFileDialog): QString {.noSideEffect,
    importcpp: "selectedMimeTypeFilter", header: "qfiledialog.h".}
proc selectedNameFilter*(this: QFileDialog): QString {.noSideEffect,
    importcpp: "selectedNameFilter", header: "qfiledialog.h".}
proc setMimeTypeFilters*(this: var QFileDialog; filters: QStringList) {.
    importcpp: "setMimeTypeFilters", header: "qfiledialog.h".}
proc mimeTypeFilters*(this: QFileDialog): QStringList {.noSideEffect,
    importcpp: "mimeTypeFilters", header: "qfiledialog.h".}
proc selectMimeTypeFilter*(this: var QFileDialog; filter: QString) {.
    importcpp: "selectMimeTypeFilter", header: "qfiledialog.h".}
proc filter*(this: QFileDialog): Filters {.noSideEffect, importcpp: "filter",
                                       header: "qfiledialog.h".}
proc setFilter*(this: var QFileDialog; filters: Filters) {.importcpp: "setFilter",
    header: "qfiledialog.h".}
proc setViewMode*(this: var QFileDialog; mode: QFileDialogViewMode) {.
    importcpp: "setViewMode", header: "qfiledialog.h".}
proc viewMode*(this: QFileDialog): QFileDialogViewMode {.noSideEffect,
    importcpp: "viewMode", header: "qfiledialog.h".}
proc setFileMode*(this: var QFileDialog; mode: QFileDialogFileMode) {.
    importcpp: "setFileMode", header: "qfiledialog.h".}
proc fileMode*(this: QFileDialog): QFileDialogFileMode {.noSideEffect,
    importcpp: "fileMode", header: "qfiledialog.h".}
proc setAcceptMode*(this: var QFileDialog; mode: QFileDialogAcceptMode) {.
    importcpp: "setAcceptMode", header: "qfiledialog.h".}
proc acceptMode*(this: QFileDialog): QFileDialogAcceptMode {.noSideEffect,
    importcpp: "acceptMode", header: "qfiledialog.h".}
proc setSidebarUrls*(this: var QFileDialog; urls: QList[QUrl]) {.
    importcpp: "setSidebarUrls", header: "qfiledialog.h".}
proc sidebarUrls*(this: QFileDialog): QList[QUrl] {.noSideEffect,
    importcpp: "sidebarUrls", header: "qfiledialog.h".}
proc saveState*(this: QFileDialog): QByteArray {.noSideEffect,
    importcpp: "saveState", header: "qfiledialog.h".}
proc restoreState*(this: var QFileDialog; state: QByteArray): bool {.
    importcpp: "restoreState", header: "qfiledialog.h".}
proc setDefaultSuffix*(this: var QFileDialog; suffix: QString) {.
    importcpp: "setDefaultSuffix", header: "qfiledialog.h".}
proc defaultSuffix*(this: QFileDialog): QString {.noSideEffect,
    importcpp: "defaultSuffix", header: "qfiledialog.h".}
proc setHistory*(this: var QFileDialog; paths: QStringList) {.importcpp: "setHistory",
    header: "qfiledialog.h".}
proc history*(this: QFileDialog): QStringList {.noSideEffect, importcpp: "history",
    header: "qfiledialog.h".}
proc setItemDelegate*(this: var QFileDialog; delegate: ptr QAbstractItemDelegate) {.
    importcpp: "setItemDelegate", header: "qfiledialog.h".}
proc itemDelegate*(this: QFileDialog): ptr QAbstractItemDelegate {.noSideEffect,
    importcpp: "itemDelegate", header: "qfiledialog.h".}
proc setIconProvider*(this: var QFileDialog; provider: ptr QAbstractFileIconProvider) {.
    importcpp: "setIconProvider", header: "qfiledialog.h".}
proc iconProvider*(this: QFileDialog): ptr QAbstractFileIconProvider {.noSideEffect,
    importcpp: "iconProvider", header: "qfiledialog.h".}
proc setLabelText*(this: var QFileDialog; label: QFileDialogDialogLabel; text: QString) {.
    importcpp: "setLabelText", header: "qfiledialog.h".}
proc labelText*(this: QFileDialog; label: QFileDialogDialogLabel): QString {.
    noSideEffect, importcpp: "labelText", header: "qfiledialog.h".}
proc setSupportedSchemes*(this: var QFileDialog; schemes: QStringList) {.
    importcpp: "setSupportedSchemes", header: "qfiledialog.h".}
proc supportedSchemes*(this: QFileDialog): QStringList {.noSideEffect,
    importcpp: "supportedSchemes", header: "qfiledialog.h".}
proc setProxyModel*(this: var QFileDialog; model: ptr QAbstractProxyModel) {.
    importcpp: "setProxyModel", header: "qfiledialog.h".}
proc proxyModel*(this: QFileDialog): ptr QAbstractProxyModel {.noSideEffect,
    importcpp: "proxyModel", header: "qfiledialog.h".}
proc setOption*(this: var QFileDialog; option: QFileDialogOption; on: bool = true) {.
    importcpp: "setOption", header: "qfiledialog.h".}
proc testOption*(this: QFileDialog; option: QFileDialogOption): bool {.noSideEffect,
    importcpp: "testOption", header: "qfiledialog.h".}
proc setOptions*(this: var QFileDialog; options: Options) {.importcpp: "setOptions",
    header: "qfiledialog.h".}
proc options*(this: QFileDialog): Options {.noSideEffect, importcpp: "options",
                                        header: "qfiledialog.h".}
## using statement

proc open*(this: var QFileDialog; receiver: ptr QObject; member: cstring) {.
    importcpp: "open", header: "qfiledialog.h".}
proc setVisible*(this: var QFileDialog; visible: bool) {.importcpp: "setVisible",
    header: "qfiledialog.h".}
proc getOpenFileName*(parent: ptr QWidget = nil; caption: QString = qString();
                     dir: QString = qString(); filter: QString = qString();
                     selectedFilter: ptr QString = nil; options: Options = options()): QString {.
    importcpp: "QFileDialog::getOpenFileName(@)", header: "qfiledialog.h".}
proc getOpenFileUrl*(parent: ptr QWidget = nil; caption: QString = qString();
                    dir: QUrl = qUrl(); filter: QString = qString();
                    selectedFilter: ptr QString = nil; options: Options = options();
                    supportedSchemes: QStringList = qStringList()): QUrl {.
    importcpp: "QFileDialog::getOpenFileUrl(@)", header: "qfiledialog.h".}
proc getSaveFileName*(parent: ptr QWidget = nil; caption: QString = qString();
                     dir: QString = qString(); filter: QString = qString();
                     selectedFilter: ptr QString = nil; options: Options = options()): QString {.
    importcpp: "QFileDialog::getSaveFileName(@)", header: "qfiledialog.h".}
proc getSaveFileUrl*(parent: ptr QWidget = nil; caption: QString = qString();
                    dir: QUrl = qUrl(); filter: QString = qString();
                    selectedFilter: ptr QString = nil; options: Options = options();
                    supportedSchemes: QStringList = qStringList()): QUrl {.
    importcpp: "QFileDialog::getSaveFileUrl(@)", header: "qfiledialog.h".}
proc getExistingDirectory*(parent: ptr QWidget = nil; caption: QString = qString();
                          dir: QString = qString(); options: Options = showDirsOnly): QString {.
    importcpp: "QFileDialog::getExistingDirectory(@)", header: "qfiledialog.h".}
proc getExistingDirectoryUrl*(parent: ptr QWidget = nil; caption: QString = qString();
                             dir: QUrl = qUrl(); options: Options = showDirsOnly;
                             supportedSchemes: QStringList = qStringList()): QUrl {.
    importcpp: "QFileDialog::getExistingDirectoryUrl(@)", header: "qfiledialog.h".}
proc getOpenFileNames*(parent: ptr QWidget = nil; caption: QString = qString();
                      dir: QString = qString(); filter: QString = qString();
                      selectedFilter: ptr QString = nil; options: Options = options()): QStringList {.
    importcpp: "QFileDialog::getOpenFileNames(@)", header: "qfiledialog.h".}
proc getOpenFileUrls*(parent: ptr QWidget = nil; caption: QString = qString();
                     dir: QUrl = qUrl(); filter: QString = qString();
                     selectedFilter: ptr QString = nil; options: Options = options();
                     supportedSchemes: QStringList = qStringList()): QList[QUrl] {.
    importcpp: "QFileDialog::getOpenFileUrls(@)", header: "qfiledialog.h".}
proc getOpenFileContent*(nameFilter: QString; fileContentsReady: Function[
    proc (a1: QString; a2: QByteArray)]) {.importcpp: "QFileDialog::getOpenFileContent(@)",
                                      header: "qfiledialog.h".}
proc saveFileContent*(fileContent: QByteArray; fileNameHint: QString = qString()) {.
    importcpp: "QFileDialog::saveFileContent(@)", header: "qfiledialog.h".}
proc setDirectory*(this: var QFileDialog; adirectory: QDir) {.
    importcpp: "setDirectory", header: "qfiledialog.h".}