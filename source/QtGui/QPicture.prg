/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QPicture INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD data
   METHOD isNull
   METHOD load
   METHOD play
   METHOD save
   METHOD setBoundingRect
   METHOD setData
   METHOD size
   METHOD swap

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPicture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPicture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QPicture>
#endif

/*
QPicture( int formatVersion = -1 )
*/
void QPicture_new1()
{
  QPicture * obj = new QPicture( OPINT(1,-1) );
  Qt5xHb::returnNewObject(obj, true);
}

/*
QPicture( const QPicture & pic )
*/
void QPicture_new2()
{
  QPicture * obj = new QPicture( *PQPICTURE(1) );
  Qt5xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC( QPICTURE_NEW )
{
  if( ISBETWEEN(0,1) && ( HB_ISNUM(1)||HB_ISNIL(1)) )
  {
    QPicture_new1();
  }
  else if( ISNUMPAR(1) && ISQPICTURE(1) )
  {
    QPicture_new2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPICTURE_DELETE )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QRect boundingRect() const
*/
HB_FUNC_STATIC( QPICTURE_BOUNDINGRECT )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->boundingRect() );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
const char * data() const
*/
HB_FUNC_STATIC( QPICTURE_DATA )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( (const char *) obj->data() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QPICTURE_ISNULL )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool load( const QString & fileName, const char * format = 0 )
*/
void QPicture_load1()
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load( PQSTRING(1), OPCONSTCHAR(2,0) ) );
  }
}

/*
bool load( QIODevice * dev, const char * format = 0 )
*/
void QPicture_load2()
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load( PQIODEVICE(1), OPCONSTCHAR(2,0) ) );
  }
}

HB_FUNC_STATIC( QPICTURE_LOAD )
{
  if( ISBETWEEN(1,2) && HB_ISCHAR(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) )
  {
    QPicture_load1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) )
  {
    QPicture_load2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool play( QPainter * painter )
*/
HB_FUNC_STATIC( QPICTURE_PLAY )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTER(1) )
    {
#endif
      RBOOL( obj->play( PQPAINTER(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool save( const QString & fileName, const char * format = 0 )
*/
void QPicture_save1()
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save( PQSTRING(1), OPCONSTCHAR(2,0) ) );
  }
}

/*
bool save( QIODevice * dev, const char * format = 0 )
*/
void QPicture_save2()
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save( PQIODEVICE(1), OPCONSTCHAR(2,0) ) );
  }
}

HB_FUNC_STATIC( QPICTURE_SAVE )
{
  if( ISBETWEEN(1,2) && HB_ISCHAR(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) )
  {
    QPicture_save1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) )
  {
    QPicture_save2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setBoundingRect( const QRect & r )
*/
HB_FUNC_STATIC( QPICTURE_SETBOUNDINGRECT )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      obj->setBoundingRect( *PQRECT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void setData( const char * data, uint size )
*/
HB_FUNC_STATIC( QPICTURE_SETDATA )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      obj->setData( PCONSTCHAR(1), PUINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
uint size() const
*/
HB_FUNC_STATIC( QPICTURE_SIZE )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUINT( obj->size() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void swap( QPicture & other )
*/
HB_FUNC_STATIC( QPICTURE_SWAP )
{
  QPicture * obj = (QPicture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPICTURE(1) )
    {
#endif
      obj->swap( *PQPICTURE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
