/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLCDNUMBERSLOTS_H
#define QLCDNUMBERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QLCDNumber>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QLCDNumberSlots: public QObject
{
  Q_OBJECT
  public:
  QLCDNumberSlots( QObject *parent = 0 );
  ~QLCDNumberSlots();
  public slots:
  void overflow();
};

#endif /* QLCDNUMBERSLOTS_H */
