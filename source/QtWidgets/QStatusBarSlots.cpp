/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStatusBarSlots.h"

QStatusBarSlots::QStatusBarSlots(QObject *parent) : QObject(parent)
{
}

QStatusBarSlots::~QStatusBarSlots()
{
}
void QStatusBarSlots::messageChanged( const QString & message )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "messageChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSTATUSBAR" );
    PHB_ITEM pmessage = hb_itemPutC( NULL, QSTRINGTOSTRING(message) );
    hb_vmEvalBlockV( cb, 2, psender, pmessage );
    hb_itemRelease( psender );
    hb_itemRelease( pmessage );
  }
}

void QStatusBarSlots_connect_signal( const QString & signal, const QString & slot )
{
  QStatusBar * obj = (QStatusBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QStatusBarSlots * s = QCoreApplication::instance()->findChild<QStatusBarSlots *>();

    if( s == NULL )
    {
      s = new QStatusBarSlots();
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
