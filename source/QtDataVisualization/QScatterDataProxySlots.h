/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSCATTERDATAPROXYSLOTS_H
#define QSCATTERDATAPROXYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtDataVisualization/QScatter3DSeries>

#include <QtDataVisualization/QScatterDataProxy>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QScatterDataProxySlots: public QObject
{
  Q_OBJECT
  public:
  QScatterDataProxySlots( QObject *parent = 0 );
  ~QScatterDataProxySlots();
  public slots:
  void arrayReset();
  void itemCountChanged( int count );
  void itemsAdded( int startIndex, int count );
  void itemsChanged( int startIndex, int count );
  void itemsInserted( int startIndex, int count );
  void itemsRemoved( int startIndex, int count );
  void seriesChanged( QScatter3DSeries * series );
};

#endif /* QSCATTERDATAPROXYSLOTS_H */
