/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QObjectSlots.h"

QObjectSlots::QObjectSlots(QObject *parent) : QObject(parent)
{
}

QObjectSlots::~QObjectSlots()
{
}
void QObjectSlots::destroyed( QObject * obj )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "destroyed(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QOBJECT" );
    PHB_ITEM pobj = Signals_return_qobject( (QObject *) obj, "QOBJECT" );
    hb_vmEvalBlockV( cb, 2, psender, pobj );
    hb_itemRelease( psender );
    hb_itemRelease( pobj );
    Signals_disconnect_signal( object, "destroyed(QObject*)" );
  }
}
void QObjectSlots::objectNameChanged( const QString & objectName )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "objectNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QOBJECT" );
    PHB_ITEM pobjectName = hb_itemPutC( NULL, QSTRINGTOSTRING(objectName) );
    hb_vmEvalBlockV( cb, 2, psender, pobjectName );
    hb_itemRelease( psender );
    hb_itemRelease( pobjectName );
  }
}

void QObjectSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QObjectSlots * s = QCoreApplication::instance()->findChild<QObjectSlots *>();

    if( s == NULL )
    {
      s = new QObjectSlots();
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
