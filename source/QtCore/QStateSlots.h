/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSTATESLOTS_H
#define QSTATESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QState>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QStateSlots: public QObject
{
  Q_OBJECT
  public:
  QStateSlots(QObject *parent = 0);
  ~QStateSlots();
  public slots:
  void finished();
  void propertiesAssigned();
};

#endif /* QSTATESLOTS_H */
