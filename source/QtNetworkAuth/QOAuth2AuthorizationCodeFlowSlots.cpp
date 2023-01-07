/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QOAuth2AuthorizationCodeFlowSlots.h"

QOAuth2AuthorizationCodeFlowSlots::QOAuth2AuthorizationCodeFlowSlots( QObject *parent ) : QObject( parent )
{
}

QOAuth2AuthorizationCodeFlowSlots::~QOAuth2AuthorizationCodeFlowSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QOAuth2AuthorizationCodeFlowSlots::accessTokenUrlChanged( const QUrl & accessTokenUrl )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "accessTokenUrlChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QOAUTH2AUTHORIZATIONCODEFLOW");
    PHB_ITEM paccessTokenUrl = Qt5xHb::Signals_return_object( (void *) &accessTokenUrl, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, paccessTokenUrl );

    hb_itemRelease( psender );
    hb_itemRelease( paccessTokenUrl );
  }
}
#endif

void QOAuth2AuthorizationCodeFlowSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QOAuth2AuthorizationCodeFlowSlots * s = QCoreApplication::instance()->findChild<QOAuth2AuthorizationCodeFlowSlots *>();

    if( s == NULL )
    {
      s = new QOAuth2AuthorizationCodeFlowSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
