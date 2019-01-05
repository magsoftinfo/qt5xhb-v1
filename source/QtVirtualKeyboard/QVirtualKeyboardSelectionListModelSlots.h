/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVIRTUALKEYBOARDSELECTIONLISTMODELSLOTS_H
#define QVIRTUALKEYBOARDSELECTIONLISTMODELSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QVirtualKeyboardSelectionListModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QVirtualKeyboardSelectionListModelSlots: public QObject
{
  Q_OBJECT
  public:
  QVirtualKeyboardSelectionListModelSlots(QObject *parent = 0);
  ~QVirtualKeyboardSelectionListModelSlots();
  public slots:
  void countChanged();
  void activeItemChanged( int index );
  void itemSelected( int index );
};

#endif /* QVIRTUALKEYBOARDSELECTIONLISTMODELSLOTS_H */
