/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSCOLORIZEEFFECTSLOTS_H
#define QGRAPHICSCOLORIZEEFFECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QGraphicsColorizeEffect>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QGraphicsColorizeEffectSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsColorizeEffectSlots( QObject *parent = 0 );
  ~QGraphicsColorizeEffectSlots();
  public slots:
  void colorChanged( const QColor & color );
  void strengthChanged( qreal strength );
};

#endif /* QGRAPHICSCOLORIZEEFFECTSLOTS_H */
