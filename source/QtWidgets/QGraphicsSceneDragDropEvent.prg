/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QPOINTF
REQUEST QPOINT
REQUEST QWIDGET
#endif

CLASS QGraphicsSceneDragDropEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD acceptProposedAction
   METHOD buttons
   METHOD dropAction
   METHOD mimeData
   METHOD modifiers
   METHOD pos
   METHOD possibleActions
   METHOD proposedAction
   METHOD scenePos
   METHOD screenPos
   METHOD setDropAction
   METHOD source

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneDragDropEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsSceneDragDropEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsSceneDragDropEvent>
#endif

#include <QMimeData>

HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_DELETE )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
void acceptProposedAction ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_ACCEPTPROPOSEDACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->acceptProposedAction ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_BUTTONS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::DropAction dropAction () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_DROPACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->dropAction () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QMimeData * mimeData () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_MIMEDATA )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      const QMimeData * ptr = obj->mimeData ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QMIMEDATA" );
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
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_MODIFIERS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_POS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::DropActions possibleActions () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_POSSIBLEACTIONS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->possibleActions () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::DropAction proposedAction () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_PROPOSEDACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->proposedAction () );
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
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SCENEPOS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SCREENPOS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
void setDropAction ( Qt::DropAction action )
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SETDROPACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDropAction ( (Qt::DropAction) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * source () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SOURCE )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->source ();
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
