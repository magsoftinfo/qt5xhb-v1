/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QButtonGroupSlots.h"

QButtonGroupSlots::QButtonGroupSlots(QObject *parent) : QObject(parent)
{
}

QButtonGroupSlots::~QButtonGroupSlots()
{
}
void QButtonGroupSlots::buttonClicked( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonClicked(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBUTTONGROUP" );
    PHB_ITEM pbutton = Signals_return_qobject( (QObject *) button, "QABSTRACTBUTTON" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}
void QButtonGroupSlots::buttonClicked( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBUTTONGROUP" );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}
void QButtonGroupSlots::buttonPressed( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonPressed(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBUTTONGROUP" );
    PHB_ITEM pbutton = Signals_return_qobject( (QObject *) button, "QABSTRACTBUTTON" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}
void QButtonGroupSlots::buttonPressed( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonPressed(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBUTTONGROUP" );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}
void QButtonGroupSlots::buttonReleased( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonReleased(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBUTTONGROUP" );
    PHB_ITEM pbutton = Signals_return_qobject( (QObject *) button, "QABSTRACTBUTTON" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}
void QButtonGroupSlots::buttonReleased( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonReleased(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBUTTONGROUP" );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void QButtonGroupSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QButtonGroupSlots * s = QCoreApplication::instance()->findChild<QButtonGroupSlots *>();

    if( s == NULL )
    {
      s = new QButtonGroupSlots();
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
