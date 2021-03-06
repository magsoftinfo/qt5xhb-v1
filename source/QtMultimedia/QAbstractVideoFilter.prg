/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVIDEOFILTERRUNNABLE
#endif

CLASS QAbstractVideoFilter INHERIT QObject

   METHOD delete
   METHOD isActive
   METHOD setActive
   METHOD createFilterRunnable

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractVideoFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QtMultimedia/QAbstractVideoFilter>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QtMultimedia/QAbstractVideoFilter>
#endif
#endif

/*
explicit QAbstractVideoFilter(QObject *parent = Q_NULLPTR) (abstract)
*/

/*
~QAbstractVideoFilter()
*/
HB_FUNC_STATIC( QABSTRACTVIDEOFILTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QAbstractVideoFilter * obj = (QAbstractVideoFilter *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isActive() const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOFILTER_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QAbstractVideoFilter * obj = (QAbstractVideoFilter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
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
void setActive(bool v)
*/
HB_FUNC_STATIC( QABSTRACTVIDEOFILTER_SETACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QAbstractVideoFilter * obj = (QAbstractVideoFilter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setActive( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual QVideoFilterRunnable *createFilterRunnable() = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOFILTER_CREATEFILTERRUNNABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QAbstractVideoFilter * obj = (QAbstractVideoFilter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVideoFilterRunnable * ptr = obj->createFilterRunnable();
      Qt5xHb::createReturnClass( ptr, "QVIDEOFILTERRUNNABLE", false );
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

