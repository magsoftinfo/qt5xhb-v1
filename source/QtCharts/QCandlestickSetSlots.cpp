/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCandlestickSetSlots.h"

QCandlestickSetSlots::QCandlestickSetSlots(QObject *parent) : QObject(parent)
{
}

QCandlestickSetSlots::~QCandlestickSetSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::brushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "brushChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::clicked()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::closeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "closeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::doubleClicked()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::highChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::hovered( bool status )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    PHB_ITEM pstatus = hb_itemPutL( NULL, status );
    hb_vmEvalBlockV( cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::lowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::openChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "openChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::penChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "penChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::pressed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::released()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSetSlots::timestampChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "timestampChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCANDLESTICKSET" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif

void QCandlestickSetSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSet * obj = (QCandlestickSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QCandlestickSetSlots * s = QCoreApplication::instance()->findChild<QCandlestickSetSlots *>();

    if( s == NULL )
    {
      s = new QCandlestickSetSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
