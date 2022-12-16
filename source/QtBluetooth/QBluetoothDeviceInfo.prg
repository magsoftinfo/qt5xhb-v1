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
REQUEST QBLUETOOTHUUID
REQUEST QBYTEARRAY
#endif

CLASS QBluetoothDeviceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD isCached
   METHOD setCached
   METHOD address
   METHOD name
   METHOD serviceClasses
   METHOD majorDeviceClass
   METHOD minorDeviceClass
   METHOD rssi
   METHOD setRssi
   METHOD setServiceUuids
   METHOD serviceUuidsCompleteness
   METHOD coreConfigurations
   METHOD setCoreConfigurations
   METHOD deviceUuid
   METHOD setDeviceUuid
   METHOD manufacturerData
   METHOD setManufacturerData
   METHOD manufacturerIds

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothDeviceInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothDeviceInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothDeviceInfo>
#endif
#endif

#include <QtBluetooth/QBluetoothAddress>
#include <QtBluetooth/QBluetoothUuid>

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QBluetoothDeviceInfo()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QBluetoothDeviceInfo * obj = new QBluetoothDeviceInfo();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(3) && ISQBLUETOOTHADDRESS(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
  {
    /*
    QBluetoothDeviceInfo( const QBluetoothAddress & address, const QString & name, quint32 classOfDevice )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QBluetoothDeviceInfo * obj = new QBluetoothDeviceInfo( *PQBLUETOOTHADDRESS(1), PQSTRING(2), PQUINT32(3) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  else if( ISNUMPAR(3) && ISQBLUETOOTHUUID(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
  {
    /*
    QBluetoothDeviceInfo( const QBluetoothUuid & uuid, const QString & name, quint32 classOfDevice )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    QBluetoothDeviceInfo * obj = new QBluetoothDeviceInfo( *PQBLUETOOTHUUID(1), PQSTRING(2), PQUINT32(3) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
#endif
  else if( ISNUMPAR(1) && ISQBLUETOOTHDEVICEINFO(1) )
  {
    /*
    QBluetoothDeviceInfo( const QBluetoothDeviceInfo & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QBluetoothDeviceInfo * obj = new QBluetoothDeviceInfo( *PQBLUETOOTHDEVICEINFO(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isValid() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
bool isCached() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_ISCACHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCached() );
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
void setCached( bool cached )
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETCACHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setCached( PBOOL(1) );
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
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

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

/*
QString name() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
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
QBluetoothDeviceInfo::ServiceClasses serviceClasses() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SERVICECLASSES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->serviceClasses() );
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
QBluetoothDeviceInfo::MajorDeviceClass majorDeviceClass() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_MAJORDEVICECLASS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->majorDeviceClass() );
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
quint8 minorDeviceClass() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_MINORDEVICECLASS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT8( obj->minorDeviceClass() );
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
qint16 rssi() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_RSSI )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT16( obj->rssi() );
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
void setRssi( qint16 signal )
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETRSSI )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setRssi( PQINT16(1) );
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
void setServiceUuids( const QList<QBluetoothUuid> & uuids, QBluetoothDeviceInfo::DataCompleteness completeness )
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETSERVICEUUIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISARRAY(1) && HB_ISNUM(2) )
    {
#endif
      QList<QBluetoothUuid> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QBluetoothUuid *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setServiceUuids( par1, (QBluetoothDeviceInfo::DataCompleteness) hb_parni(2) );
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
QBluetoothDeviceInfo::DataCompleteness serviceUuidsCompleteness() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SERVICEUUIDSCOMPLETENESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->serviceUuidsCompleteness() );
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
QBluetoothDeviceInfo::CoreConfigurations coreConfigurations() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_CORECONFIGURATIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->coreConfigurations() );
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
void setCoreConfigurations( QBluetoothDeviceInfo::CoreConfigurations coreConfigs )
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETCORECONFIGURATIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCoreConfigurations( (QBluetoothDeviceInfo::CoreConfigurations) hb_parni(1) );
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
QBluetoothUuid deviceUuid() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_DEVICEUUID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBluetoothUuid * ptr = new QBluetoothUuid( obj->deviceUuid() );
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHUUID", true);
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
void setDeviceUuid( const QBluetoothUuid & uuid )
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETDEVICEUUID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
    {
#endif
      obj->setDeviceUuid( *PQBLUETOOTHUUID(1) );
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
QByteArray manufacturerData( quint16 manufacturerId ) const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_MANUFACTURERDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->manufacturerData( PQUINT16(1) ) );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
bool setManufacturerData( quint16 manufacturerId, const QByteArray & data )
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETMANUFACTURERDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQBYTEARRAY(2) )
    {
#endif
      RBOOL( obj->setManufacturerData( PQUINT16(1), *PQBYTEARRAY(2) ) );
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
QVector<quint16> manufacturerIds() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_MANUFACTURERIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<quint16> list = obj->manufacturerIds();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEWFROM )
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

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBLUETOOTHDEVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBLUETOOTHDEVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SELFDESTRUCTION )
{
  hb_retl((bool) hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETSELFDESTRUCTION )
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
