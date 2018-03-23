/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpSearchEngineSlots.h"

QHelpSearchEngineSlots::QHelpSearchEngineSlots(QObject *parent) : QObject(parent)
{
}

QHelpSearchEngineSlots::~QHelpSearchEngineSlots()
{
}
void QHelpSearchEngineSlots::indexingFinished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexingFinished()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHELPSEARCHENGINE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QHelpSearchEngineSlots::indexingStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexingStarted()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHELPSEARCHENGINE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QHelpSearchEngineSlots::searchingFinished( int hits )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "searchingFinished(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHELPSEARCHENGINE" );
    PHB_ITEM phits = hb_itemPutNI( NULL, hits );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, phits );
    hb_itemRelease( psender );
    hb_itemRelease( phits );
  }
}
void QHelpSearchEngineSlots::searchingStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "searchingStarted()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHELPSEARCHENGINE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QHelpSearchEngineSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QHelpSearchEngineSlots * s = QCoreApplication::instance()->findChild<QHelpSearchEngineSlots *>();

    if( s == NULL )
    {
      s = new QHelpSearchEngineSlots();
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
