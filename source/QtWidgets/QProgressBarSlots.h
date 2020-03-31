/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPROGRESSBARSLOTS_H
#define QPROGRESSBARSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QProgressBar>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QProgressBarSlots: public QObject
{
  Q_OBJECT
  public:
  QProgressBarSlots(QObject *parent = 0);
  ~QProgressBarSlots();
  public slots:
  void valueChanged( int value );
};

#endif /* QPROGRESSBARSLOTS_H */
