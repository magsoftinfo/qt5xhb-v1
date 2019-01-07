/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QModbusClient INHERIT QModbusDevice

   METHOD delete

   METHOD onTimeoutChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QModbusClient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(,8,0))
#include <QModbusClient>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(,8,0))
#include <QModbusClient>
#endif
#endif

/*
explicit QModbusClient(QObject *parent = nullptr)
*/
/*
QModbusClient(QModbusClientPrivate &dd, QObject *parent = nullptr) [protected]
*/

/*
~QModbusClient()
*/
HB_FUNC_STATIC( QMODBUSCLIENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClient * obj = (QModbusClient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int timeout() const
*/
/*
void setTimeout(int newTimeout)
*/

/*
QModbusReply *sendReadRequest(const QModbusDataUnit &read, int serverAddress)
*/
/*
QModbusReply *sendWriteRequest(const QModbusDataUnit &write, int serverAddress)
*/
/*
QModbusReply *sendReadWriteRequest(const QModbusDataUnit &read, const QModbusDataUnit &write, int serverAddress)
*/
/*
QModbusReply *sendRawRequest(const QModbusRequest &request, int serverAddress)
*/
/*
int numberOfRetries() const
*/
/*
void setNumberOfRetries(int number)
*/
/*
virtual bool processResponse(const QModbusResponse &response, QModbusDataUnit *data) [protected]
*/
/*
virtual bool processPrivateResponse(const QModbusResponse &response, QModbusDataUnit *data) [protected]
*/

void QModbusClientSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMODBUSCLIENT_ONTIMEOUTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClientSlots_connect_signal( "timeoutChanged(int)", "timeoutChanged(int)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
