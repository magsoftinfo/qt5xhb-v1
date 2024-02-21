/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBUTTONGROUPSLOTS_H
#define QBUTTONGROUPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtWidgets/QAbstractButton>

#include <QtWidgets/QButtonGroup>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QButtonGroupSlots: public QObject
{
  Q_OBJECT
  public:
  QButtonGroupSlots( QObject *parent = 0 );
  ~QButtonGroupSlots();
  public slots:
  void buttonClicked( QAbstractButton * button );
  void buttonClicked( int id );
  void buttonPressed( QAbstractButton * button );
  void buttonPressed( int id );
  void buttonReleased( QAbstractButton * button );
  void buttonReleased( int id );
};

#endif /* QBUTTONGROUPSLOTS_H */
