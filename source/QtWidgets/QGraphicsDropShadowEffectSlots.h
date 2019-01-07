/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSDROPSHADOWEFFECTSLOTS_H
#define QGRAPHICSDROPSHADOWEFFECTSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsDropShadowEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QGraphicsDropShadowEffectSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsDropShadowEffectSlots(QObject *parent = 0);
  ~QGraphicsDropShadowEffectSlots();
  public slots:
  void blurRadiusChanged( qreal blurRadius );
  void colorChanged( const QColor & color );
  void offsetChanged( const QPointF & offset );
};

#endif /* QGRAPHICSDROPSHADOWEFFECTSLOTS_H */
