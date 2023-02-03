/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSqlDriverSlots.hpp"

QSqlDriverSlots::QSqlDriverSlots( QObject *parent ) : QObject( parent )
{
}

QSqlDriverSlots::~QSqlDriverSlots()
{
}

void QSqlDriverSlots::notification( const QString & name )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "notification(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSQLDRIVER");
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );

    hb_vmEvalBlockV(cb, 2, psender, pname);

    hb_itemRelease(psender);
    hb_itemRelease( pname );
  }
}

void QSqlDriverSlots::notification( const QString & name, QSqlDriver::NotificationSource source, const QVariant & payload )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "notification(QString,QSqlDriver::NotificationSource,QVariant)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSQLDRIVER");
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM psource = hb_itemPutNI( NULL, static_cast<int>(source) );
    PHB_ITEM ppayload = Qt5xHb::Signals_return_object( (void *) &payload, "QVARIANT");

    hb_vmEvalBlockV(cb, 4, psender, pname, psource, ppayload);

    hb_itemRelease(psender);
    hb_itemRelease( pname );
    hb_itemRelease( psource );
    hb_itemRelease( ppayload );
  }
}

void QSqlDriverSlots_connect_signal(const QString & signal, const QString & slot)
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QSqlDriverSlots * s = QCoreApplication::instance()->findChild<QSqlDriverSlots*>();

    if( s == NULL )
    {
      s = new QSqlDriverSlots();
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
