/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
REQUEST QGEORECTANGLE
REQUEST QGEOROUTEREQUEST
REQUEST QGEOROUTESEGMENT
#endif

CLASS QGeoRoute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setRouteId
   METHOD routeId
   METHOD setRequest
   METHOD request
   METHOD setBounds
   METHOD bounds
   METHOD setFirstRouteSegment
   METHOD firstRouteSegment
   METHOD setTravelTime
   METHOD travelTime
   METHOD setDistance
   METHOD distance
   METHOD setTravelMode
   METHOD travelMode
   METHOD setPath
   METHOD path

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoRoute
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoRoute>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoRoute>
#endif
#endif

#include <QtPositioning/QGeoRectangle>
#include <QtLocation/QGeoRouteSegment>

HB_FUNC_STATIC( QGEOROUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QGeoRoute()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    QGeoRoute * obj = new QGeoRoute();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQGEOMANEUVER(1) )
  {
    /*
    QGeoRoute( const QGeoRoute & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    QGeoRoute * obj = new QGeoRoute( *PQGEOROUTE(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QGEOROUTE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
void setRouteId( const QString & id )
*/
HB_FUNC_STATIC( QGEOROUTE_SETROUTEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setRouteId( PQSTRING(1) );
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
QString routeId() const
*/
HB_FUNC_STATIC( QGEOROUTE_ROUTEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->routeId() );
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
void setRequest( const QGeoRouteRequest & request )
*/
HB_FUNC_STATIC( QGEOROUTE_SETREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOROUTEREQUEST(1) )
    {
#endif
      obj->setRequest( *PQGEOROUTEREQUEST(1) );
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
QGeoRouteRequest request() const
*/
HB_FUNC_STATIC( QGEOROUTE_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoRouteRequest * ptr = new QGeoRouteRequest( obj->request() );
      Qt5xHb::createReturnClass(ptr, "QGEOROUTEREQUEST", true);
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
void setBounds( const QGeoRectangle & bounds )
*/
HB_FUNC_STATIC( QGEOROUTE_SETBOUNDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
#endif
      obj->setBounds( *PQGEORECTANGLE(1) );
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
QGeoRectangle bounds() const
*/
HB_FUNC_STATIC( QGEOROUTE_BOUNDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoRectangle * ptr = new QGeoRectangle( obj->bounds() );
      Qt5xHb::createReturnClass(ptr, "QGEORECTANGLE", true);
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
void setFirstRouteSegment( const QGeoRouteSegment & routeSegment )
*/
HB_FUNC_STATIC( QGEOROUTE_SETFIRSTROUTESEGMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOROUTESEGMENT(1) )
    {
#endif
      obj->setFirstRouteSegment( *PQGEOROUTESEGMENT(1) );
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
QGeoRouteSegment firstRouteSegment() const
*/
HB_FUNC_STATIC( QGEOROUTE_FIRSTROUTESEGMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoRouteSegment * ptr = new QGeoRouteSegment( obj->firstRouteSegment() );
      Qt5xHb::createReturnClass(ptr, "QGEOROUTESEGMENT", true);
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
void setTravelTime( int secs )
*/
HB_FUNC_STATIC( QGEOROUTE_SETTRAVELTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTravelTime( PINT(1) );
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
int travelTime() const
*/
HB_FUNC_STATIC( QGEOROUTE_TRAVELTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->travelTime() );
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
void setDistance( qreal distance )
*/
HB_FUNC_STATIC( QGEOROUTE_SETDISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setDistance( PQREAL(1) );
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
qreal distance() const
*/
HB_FUNC_STATIC( QGEOROUTE_DISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->distance() );
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
void setTravelMode( QGeoRouteRequest::TravelMode mode )
*/
HB_FUNC_STATIC( QGEOROUTE_SETTRAVELMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTravelMode( (QGeoRouteRequest::TravelMode) hb_parni(1) );
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
QGeoRouteRequest::TravelMode travelMode() const
*/
HB_FUNC_STATIC( QGEOROUTE_TRAVELMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->travelMode() );
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
void setPath( const QList<QGeoCoordinate> & path )
*/
HB_FUNC_STATIC( QGEOROUTE_SETPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QGeoCoordinate> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setPath( par1 );
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
QList<QGeoCoordinate> path() const
*/
HB_FUNC_STATIC( QGEOROUTE_PATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QGeoCoordinate> list = obj->path();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QGEOCOORDINATE" );
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
          PHB_ITEM pItem = hb_itemPutPtr( NULL, new QGeoCoordinate( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemPutL( NULL, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGEOCOORDINATE", HB_ERR_ARGS_BASEPARAMS );
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

HB_FUNC_STATIC( QGEOROUTE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
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

HB_FUNC_STATIC( QGEOROUTE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOROUTE_NEWFROM );
}

HB_FUNC_STATIC( QGEOROUTE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOROUTE_NEWFROM );
}

HB_FUNC_STATIC( QGEOROUTE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QGEOROUTE_SETSELFDESTRUCTION )
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
