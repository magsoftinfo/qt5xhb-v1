/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QVARIANT
#endif

CLASS QBBSystemLocaleData INHERIT QObject

   METHOD new
   METHOD delete
   METHOD measurementSystem
   METHOD timeFormat
   METHOD dateTimeFormat
   METHOD languageLocale
   METHOD regionLocale
   METHOD installSocketNotifiers
   METHOD readLanguageLocale
   METHOD readRegionLocale
   METHOD readMeasurementSystem
   METHOD readHourFormat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBBSystemLocaleData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QBBSystemLocaleData>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QBBSystemLocaleData>
#endif

/*
QBBSystemLocaleData()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBBSystemLocaleData * o = new QBBSystemLocaleData ();
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_DELETE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
uint measurementSystem()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_MEASUREMENTSYSTEM )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUINT( obj->measurementSystem () );
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
QVariant timeFormat(QLocale::FormatType)
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_TIMEFORMAT )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->timeFormat ( (QLocale::FormatType) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
QVariant dateTimeFormat(QLocale::FormatType)
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_DATETIMEFORMAT )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->dateTimeFormat ( (QLocale::FormatType) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
QLocale languageLocale()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_LANGUAGELOCALE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLocale * ptr = new QLocale( obj->languageLocale () );
      _qt5xhb_createReturnClass ( ptr, "QLOCALE", true );
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
QLocale regionLocale()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_REGIONLOCALE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLocale * ptr = new QLocale( obj->regionLocale () );
      _qt5xhb_createReturnClass ( ptr, "QLOCALE", true );
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
void installSocketNotifiers()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_INSTALLSOCKETNOTIFIERS )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->installSocketNotifiers ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void readLanguageLocale()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_READLANGUAGELOCALE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->readLanguageLocale ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void readRegionLocale()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_READREGIONLOCALE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->readRegionLocale ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void readMeasurementSystem()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_READMEASUREMENTSYSTEM )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->readMeasurementSystem ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void readHourFormat()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_READHOURFORMAT )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->readHourFormat ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
