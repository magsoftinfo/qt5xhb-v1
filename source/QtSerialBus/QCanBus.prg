/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCANBUSDEVICE
REQUEST QCANBUSDEVICEINFO
#endif

CLASS QCanBus INHERIT QObject

   METHOD instance
   METHOD plugins
   METHOD availableDevices
   METHOD createDevice

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCanBus
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QCanBus>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QCanBus>
#endif
#endif

/*
QCanBus(QObject *parent = nullptr) [private]
*/

/*
static QCanBus *instance()
*/
HB_FUNC_STATIC( QCANBUS_INSTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QCanBus * ptr = QCanBus::instance ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QCANBUS" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
QStringList plugins() const
*/
HB_FUNC_STATIC( QCANBUS_PLUGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBus * obj = (QCanBus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->plugins () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QList<QCanBusDeviceInfo> availableDevices(const QString &plugin, QString *errorMessage = nullptr) const
*/
HB_FUNC_STATIC( QCANBUS_AVAILABLEDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QCanBus * obj = (QCanBus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
    {
#endif
      QList<QCanBusDeviceInfo> list = obj->availableDevices ( PQSTRING(1), NULL );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCANBUSDEVICEINFO" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCanBusDeviceInfo *) new QCanBusDeviceInfo ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCANBUSDEVICEINFO", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QCanBusDevice *createDevice(const QString &plugin, const QString &interfaceName, QString *errorMessage = nullptr) const
*/
HB_FUNC_STATIC( QCANBUS_CREATEDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBus * obj = (QCanBus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) )
    {
#endif
      QCanBusDevice * ptr = obj->createDevice ( PQSTRING(1), PQSTRING(2), NULL );
      _qt5xhb_createReturnQObjectClass ( ptr, "QCANBUSDEVICE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

#pragma ENDDUMP
