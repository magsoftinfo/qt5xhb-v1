/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneMouseEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD button
   METHOD buttonDownPos
   METHOD buttonDownScenePos
   METHOD buttonDownScreenPos
   METHOD buttons
   METHOD lastPos
   METHOD lastScenePos
   METHOD lastScreenPos
   METHOD modifiers
   METHOD pos
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneMouseEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsSceneMouseEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsSceneMouseEvent>
#endif

HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_DELETE )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTON )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->button () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF buttonDownPos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QPointF * ptr = new QPointF( obj->buttonDownPos ( (Qt::MouseButton) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF buttonDownScenePos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNSCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QPointF * ptr = new QPointF( obj->buttonDownScenePos ( (Qt::MouseButton) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint buttonDownScreenPos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNSCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QPoint * ptr = new QPoint( obj->buttonDownScreenPos ( (Qt::MouseButton) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttons () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF lastPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPointF * ptr = new QPointF( obj->lastPos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF lastScenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTSCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPointF * ptr = new QPointF( obj->lastScenePos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint lastScreenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTSCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPoint * ptr = new QPoint( obj->lastScreenPos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_MODIFIERS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->modifiers () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_POS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPointF * ptr = new QPointF( obj->pos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_SCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPointF * ptr = new QPointF( obj->scenePos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_SCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPoint * ptr = new QPoint( obj->screenPos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
