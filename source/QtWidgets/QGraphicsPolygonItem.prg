/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTERPATH
REQUEST QPOLYGONF
REQUEST QRECTF
#endif

CLASS QGraphicsPolygonItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD fillRule
   METHOD polygon
   METHOD setFillRule
   METHOD setPolygon
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsPolygonItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsPolygonItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsPolygonItem>
#endif

/*
QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsPolygonItem_new1 ()
{
  QGraphicsPolygonItem * o = new QGraphicsPolygonItem ( ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )
*/
void QGraphicsPolygonItem_new2 ()
{
  QGraphicsPolygonItem * o = new QGraphicsPolygonItem ( *PQPOLYGONF(1), ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPolygonItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPolygonItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_DELETE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::FillRule fillRule () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_FILLRULE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->fillRule () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPolygonF polygon () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_POLYGON )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPolygonF * ptr = new QPolygonF( obj->polygon () );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFillRule ( Qt::FillRule rule )
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_SETFILLRULE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFillRule ( (Qt::FillRule) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPolygon ( const QPolygonF & polygon )
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_SETPOLYGON )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
      obj->setPolygon ( *PQPOLYGONF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_BOUNDINGRECT )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->boundingRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_CONTAINS )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
      RBOOL( obj->contains ( *PQPOINTF(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_ISOBSCUREDBY )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
    {
      RBOOL( obj->isObscuredBy ( PQGRAPHICSITEM(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_OPAQUEAREA )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_PAINT )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
      obj->paint ( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_SHAPE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPainterPath * ptr = new QPainterPath( obj->shape () );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_TYPE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
