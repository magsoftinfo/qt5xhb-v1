/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSQLTABLEMODELSLOTS_H
#define QSQLTABLEMODELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtSql/QSqlTableModel>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QSqlTableModelSlots: public QObject
{
  Q_OBJECT
  public:
  QSqlTableModelSlots( QObject *parent = 0 );
  ~QSqlTableModelSlots();
  public slots:
  void beforeDelete( int row );
  void beforeInsert( QSqlRecord & record );
  void beforeUpdate( int row, QSqlRecord & record );
  void primeInsert( int row, QSqlRecord & record );
};

#endif /* QSQLTABLEMODELSLOTS_H */
