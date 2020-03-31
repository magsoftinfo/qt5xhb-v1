/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsDropShadowEffectSlots.h"

QGraphicsDropShadowEffectSlots::QGraphicsDropShadowEffectSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsDropShadowEffectSlots::~QGraphicsDropShadowEffectSlots()
{
}
void QGraphicsDropShadowEffectSlots::blurRadiusChanged( qreal blurRadius )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurRadiusChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGRAPHICSDROPSHADOWEFFECT" );
    PHB_ITEM pblurRadius = hb_itemPutND( NULL, blurRadius );
    hb_vmEvalBlockV( cb, 2, psender, pblurRadius );
    hb_itemRelease( psender );
    hb_itemRelease( pblurRadius );
  }
}
void QGraphicsDropShadowEffectSlots::colorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGRAPHICSDROPSHADOWEFFECT" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
void QGraphicsDropShadowEffectSlots::offsetChanged( const QPointF & offset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "offsetChanged(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGRAPHICSDROPSHADOWEFFECT" );
    PHB_ITEM poffset = Signals_return_object( (void *) &offset, "QPOINTF" );
    hb_vmEvalBlockV( cb, 2, psender, poffset );
    hb_itemRelease( psender );
    hb_itemRelease( poffset );
  }
}

void QGraphicsDropShadowEffectSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsDropShadowEffectSlots * s = QCoreApplication::instance()->findChild<QGraphicsDropShadowEffectSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsDropShadowEffectSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
