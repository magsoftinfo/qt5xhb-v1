/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsRotationSlots.hpp"

QGraphicsRotationSlots::QGraphicsRotationSlots( QObject *parent ) : QObject( parent )
{
}

QGraphicsRotationSlots::~QGraphicsRotationSlots()
{
}

void QGraphicsRotationSlots::angleChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "angleChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSROTATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsRotationSlots::axisChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "axisChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSROTATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsRotationSlots::originChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "originChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSROTATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGraphicsRotationSlots_connect_signal(const QString & signal, const QString & slot)
{
  QGraphicsRotation * obj = (QGraphicsRotation *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QGraphicsRotationSlots * s = QCoreApplication::instance()->findChild<QGraphicsRotationSlots*>();

    if( s == NULL )
    {
      s = new QGraphicsRotationSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
