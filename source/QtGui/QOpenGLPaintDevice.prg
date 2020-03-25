/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOPENGLCONTEXT
REQUEST QPAINTENGINE
REQUEST QSIZE
#endif

CLASS QOpenGLPaintDevice INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD devType
   METHOD paintEngine
   METHOD context
   METHOD size
   METHOD setSize
   METHOD setDevicePixelRatio
   METHOD dotsPerMeterX
   METHOD dotsPerMeterY
   METHOD setDotsPerMeterX
   METHOD setDotsPerMeterY
   METHOD setPaintFlipped
   METHOD paintFlipped
   METHOD ensureActiveTarget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOpenGLPaintDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLPaintDevice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLPaintDevice>
#endif

/*
QOpenGLPaintDevice()
*/
void QOpenGLPaintDevice_new1()
{
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice();
  _qt5xhb_returnNewObject( o, false );
}

/*
QOpenGLPaintDevice(const QSize &size)
*/
void QOpenGLPaintDevice_new2()
{
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice( *PQSIZE(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QOpenGLPaintDevice(int width, int height)
*/
void QOpenGLPaintDevice_new3()
{
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice( PINT(1), PINT(2) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QOpenGLPaintDevice()
//[2]QOpenGLPaintDevice(const QSize &size)
//[3]QOpenGLPaintDevice(int width, int height)

HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLPaintDevice_new1();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QOpenGLPaintDevice_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QOpenGLPaintDevice_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DELETE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

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
int devType() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DEVTYPE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->devType() );
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
QPaintEngine *paintEngine() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_PAINTENGINE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPaintEngine * ptr = obj->paintEngine();
      _qt5xhb_createReturnClass( ptr, "QPAINTENGINE", false );
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
QOpenGLContext *context() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_CONTEXT )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QOpenGLContext * ptr = obj->context();
      _qt5xhb_createReturnQObjectClass( ptr, "QOPENGLCONTEXT" );
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
QSize size() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SIZE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->size() );
      _qt5xhb_createReturnClass( ptr, "QSIZE", true );
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
void setSize(const QSize &size)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETSIZE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setSize( *PQSIZE(1) );
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
void setDevicePixelRatio(qreal devicePixelRatio)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDEVICEPIXELRATIO )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDevicePixelRatio( PQREAL(1) );
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
qreal dotsPerMeterX() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DOTSPERMETERX )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dotsPerMeterX() );
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
qreal dotsPerMeterY() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DOTSPERMETERY )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dotsPerMeterY() );
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
void setDotsPerMeterX(qreal)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDOTSPERMETERX )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDotsPerMeterX( PQREAL(1) );
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
void setDotsPerMeterY(qreal)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDOTSPERMETERY )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDotsPerMeterY( PQREAL(1) );
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
void setPaintFlipped(bool flipped)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETPAINTFLIPPED )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setPaintFlipped( PBOOL(1) );
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
bool paintFlipped() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_PAINTFLIPPED )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->paintFlipped() );
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
virtual void ensureActiveTarget()
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_ENSUREACTIVETARGET )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->ensureActiveTarget();
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
