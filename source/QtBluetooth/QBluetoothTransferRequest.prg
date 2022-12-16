/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QVARIANT
#endif

CLASS QBluetoothTransferRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD attribute
   METHOD setAttribute
   METHOD address

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothTransferRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothTransferRequest>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothTransferRequest>
#endif
#endif

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQBLUETOOTHADDRESS(1)||HB_ISNIL(1)) )
  {
    /*
    QBluetoothTransferRequest( const QBluetoothAddress & address = QBluetoothAddress() )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QBluetoothTransferRequest * obj = new QBluetoothTransferRequest( HB_ISNIL(1)? QBluetoothAddress() : *(QBluetoothAddress *) Qt5xHb::itemGetPtr(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHTRANSFERREQUEST(1) )
  {
    /*
    QBluetoothTransferRequest( const QBluetoothTransferRequest & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QBluetoothTransferRequest * obj = new QBluetoothTransferRequest( *PQBLUETOOTHTRANSFERREQUEST(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferRequest * obj = (QBluetoothTransferRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QVariant attribute( QBluetoothTransferRequest::Attribute code, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_ATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferRequest * obj = (QBluetoothTransferRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (ISQVARIANT(2)||HB_ISNIL(2)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->attribute( (QBluetoothTransferRequest::Attribute) hb_parni(1), HB_ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setAttribute( QBluetoothTransferRequest::Attribute code, const QVariant & value )
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_SETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferRequest * obj = (QBluetoothTransferRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setAttribute( (QBluetoothTransferRequest::Attribute) hb_parni(1), *PQVARIANT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QBluetoothAddress address() const
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferRequest * obj = (QBluetoothTransferRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBluetoothAddress * ptr = new QBluetoothAddress( obj->address() );
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHADDRESS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBLUETOOTHTRANSFERREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBLUETOOTHTRANSFERREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_SELFDESTRUCTION )
{
  hb_retl((bool) hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
