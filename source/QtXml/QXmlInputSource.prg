/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QXmlInputSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD data
   METHOD fetchData
   METHOD next
   METHOD reset
   METHOD setData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlInputSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlInputSource>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlInputSource>
#endif

/*
QXmlInputSource ()
*/
void QXmlInputSource_new1 ()
{
  QXmlInputSource * o = new QXmlInputSource ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QXmlInputSource ( QIODevice * dev )
*/
void QXmlInputSource_new2 ()
{
  QXmlInputSource * o = new QXmlInputSource ( PQIODEVICE(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QXmlInputSource ()
//[2]QXmlInputSource ( QIODevice * dev )

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlInputSource_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlInputSource_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_DELETE )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QString data () const
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_DATA )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->data () );
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
virtual void fetchData ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_FETCHDATA )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->fetchData ();
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
virtual QChar next ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_NEXT )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QChar * ptr = new QChar( obj->next () );
      _qt5xhb_createReturnClass ( ptr, "QCHAR", true );
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
virtual void reset ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_RESET )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset ();
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
virtual void setData ( const QString & dat )
*/
void QXmlInputSource_setData1 ()
{
  QXmlInputSource * obj = (QXmlInputSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setData ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setData ( const QByteArray & dat )
*/
void QXmlInputSource_setData2 ()
{
  QXmlInputSource * obj = (QXmlInputSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setData ( *PQBYTEARRAY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void setData ( const QString & dat )
//[2]virtual void setData ( const QByteArray & dat )

HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlInputSource_setData1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlInputSource_setData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLINPUTSOURCE_NEWFROM );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLINPUTSOURCE_NEWFROM );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
