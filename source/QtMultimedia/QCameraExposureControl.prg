/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraExposureControl INHERIT QMediaControl

   METHOD delete
   METHOD actualValue
   METHOD isParameterSupported
   METHOD requestedValue
   METHOD setValue
   METHOD supportedParameterRange

   METHOD onActualValueChanged
   METHOD onParameterRangeChanged
   METHOD onRequestedValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraExposureControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraExposureControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraExposureControl>
#endif

/*
~QCameraExposureControl()
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_DELETE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QVariant actualValue(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ACTUALVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->actualValue( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool isParameterSupported(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ISPARAMETERSUPPORTED )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isParameterSupported( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QVariant requestedValue(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_REQUESTEDVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->requestedValue( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool setValue(ExposureParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_SETVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      RBOOL( obj->setValue( (QCameraExposureControl::ExposureParameter) hb_parni(1), *PQVARIANT(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QVariantList supportedParameterRange(ExposureParameter parameter, bool * continuous) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_SUPPORTEDPARAMETERRANGE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2) )
    {
#endif
      bool par2;
      QVariantList list = obj->supportedParameterRange( (QCameraExposureControl::ExposureParameter) hb_parni(1), &par2 );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QVARIANT" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QVariant *) new QVariant( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QVARIANT", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
      hb_storl( par2, 2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QCameraExposureControlSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ONACTUALVALUECHANGED )
{
  QCameraExposureControlSlots_connect_signal( "actualValueChanged(int)", "actualValueChanged(int)" );
}

HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ONPARAMETERRANGECHANGED )
{
  QCameraExposureControlSlots_connect_signal( "parameterRangeChanged(int)", "parameterRangeChanged(int)" );
}

HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ONREQUESTEDVALUECHANGED )
{
  QCameraExposureControlSlots_connect_signal( "requestedValueChanged(int)", "requestedValueChanged(int)" );
}

#pragma ENDDUMP
