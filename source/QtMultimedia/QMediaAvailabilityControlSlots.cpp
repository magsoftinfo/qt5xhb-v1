/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMediaAvailabilityControlSlots.h"

static QMediaAvailabilityControlSlots * s = NULL;

QMediaAvailabilityControlSlots::QMediaAvailabilityControlSlots(QObject *parent) : QObject(parent)
{
}

QMediaAvailabilityControlSlots::~QMediaAvailabilityControlSlots()
{
}
void QMediaAvailabilityControlSlots::availabilityChanged( QMultimedia::AvailabilityStatus availability )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availabilityChanged(QMultimedia::AvailabilityStatus)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QMEDIAAVAILABILITYCONTROL" );
    PHB_ITEM pavailability = hb_itemPutNI( NULL, (int) availability );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailability );
    hb_itemRelease( psender );
    hb_itemRelease( pavailability );
  }
}

void QMediaAvailabilityControlSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QMediaAvailabilityControlSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
