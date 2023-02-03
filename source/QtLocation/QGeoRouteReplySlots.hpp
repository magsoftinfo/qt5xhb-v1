/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGEOROUTEREPLYSLOTS_H
#define QGEOROUTEREPLYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoRouteReply>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QGeoRouteReplySlots: public QObject
{
  Q_OBJECT
  public:
  QGeoRouteReplySlots( QObject *parent = 0 );
  ~QGeoRouteReplySlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void finished();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void error( QGeoRouteReply::Error error, const QString & errorString = QString() );
#endif
};

#endif /* QGEOROUTEREPLYSLOTS_H */
