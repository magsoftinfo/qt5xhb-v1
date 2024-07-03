//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QVIRTUALKEYBOARDABSTRACTINPUTMETHODSLOTS_H
#define QVIRTUALKEYBOARDABSTRACTINPUTMETHODSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QVirtualKeyboardAbstractInputMethodSlots : public QObject
{
  Q_OBJECT
public:
  QVirtualKeyboardAbstractInputMethodSlots(QObject *parent = 0);
  ~QVirtualKeyboardAbstractInputMethodSlots();
public slots:
  void selectionListChanged(QVirtualKeyboardSelectionListModel::Type type);
  void selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type type, int index);
  void selectionListsChanged();
};

#endif // QVIRTUALKEYBOARDABSTRACTINPUTMETHODSLOTS_H
