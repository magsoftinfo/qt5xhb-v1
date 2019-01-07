/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QApplicationSlots.h"

QApplicationSlots::QApplicationSlots(QObject *parent) : QObject(parent)
{
}

QApplicationSlots::~QApplicationSlots()
{
}
void QApplicationSlots::aboutToReleaseGpuResources()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToReleaseGpuResources()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAPPLICATION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QApplicationSlots::aboutToUseGpuResources()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToUseGpuResources()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAPPLICATION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QApplicationSlots::commitDataRequest( QSessionManager & manager )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "commitDataRequest(QSessionManager)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAPPLICATION" );
    PHB_ITEM pmanager = Signals_return_qobject( (QObject *) &manager, "QSESSIONMANAGER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmanager );
    hb_itemRelease( psender );
    hb_itemRelease( pmanager );
  }
}
void QApplicationSlots::focusChanged( QWidget * old, QWidget * now )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusChanged(QWidget*,QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAPPLICATION" );
    PHB_ITEM pold = Signals_return_qobject( (QObject *) old, "QWIDGET" );
    PHB_ITEM pnow = Signals_return_qobject( (QObject *) now, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pold, pnow );
    hb_itemRelease( psender );
    hb_itemRelease( pold );
    hb_itemRelease( pnow );
  }
}
void QApplicationSlots::fontDatabaseChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fontDatabaseChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAPPLICATION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QApplicationSlots::lastWindowClosed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lastWindowClosed()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAPPLICATION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QApplicationSlots::saveStateRequest( QSessionManager & manager )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "saveStateRequest(QSessionManager)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAPPLICATION" );
    PHB_ITEM pmanager = Signals_return_qobject( (QObject *) &manager, "QSESSIONMANAGER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmanager );
    hb_itemRelease( psender );
    hb_itemRelease( pmanager );
  }
}

void QApplicationSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QApplication * obj = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QApplicationSlots * s = QCoreApplication::instance()->findChild<QApplicationSlots *>();

    if( s == NULL )
    {
      s = new QApplicationSlots();
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
