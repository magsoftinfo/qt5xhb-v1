/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCANDLESTICKSET
REQUEST QCOLOR
REQUEST QPEN
#endif

CLASS QCandlestickSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete
   METHOD count
   METHOD maximumColumnWidth
   METHOD setMaximumColumnWidth
   METHOD minimumColumnWidth
   METHOD setMinimumColumnWidth
   METHOD bodyWidth
   METHOD setBodyWidth
   METHOD bodyOutlineVisible
   METHOD setBodyOutlineVisible
   METHOD capsWidth
   METHOD setCapsWidth
   METHOD capsVisible
   METHOD setCapsVisible
   METHOD increasingColor
   METHOD setIncreasingColor
   METHOD decreasingColor
   METHOD setDecreasingColor
   METHOD brush
   METHOD setBrush
   METHOD pen
   METHOD setPen
   METHOD append
   METHOD remove
   METHOD insert
   METHOD take
   METHOD clear
   METHOD sets
   METHOD type

   METHOD onBodyOutlineVisibilityChanged
   METHOD onBodyWidthChanged
   METHOD onBrushChanged
   METHOD onCandlestickSetsAdded
   METHOD onCandlestickSetsRemoved
   METHOD onCapsVisibilityChanged
   METHOD onCapsWidthChanged
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDecreasingColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onIncreasingColorChanged
   METHOD onMaximumColumnWidthChanged
   METHOD onMinimumColumnWidthChanged
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCandlestickSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QCandlestickSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QCandlestickSeries>
#endif
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
QCandlestickSeries( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QCandlestickSeries * obj = new QCandlestickSeries( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
~QCandlestickSeries()
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
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
int count() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
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
qreal maximumColumnWidth() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_MAXIMUMCOLUMNWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->maximumColumnWidth() );
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
void setMaximumColumnWidth( qreal maximumColumnWidth )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETMAXIMUMCOLUMNWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMaximumColumnWidth( PQREAL(1) );
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
qreal minimumColumnWidth() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_MINIMUMCOLUMNWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->minimumColumnWidth() );
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
void setMinimumColumnWidth( qreal minimumColumnWidth )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETMINIMUMCOLUMNWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMinimumColumnWidth( PQREAL(1) );
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
qreal bodyWidth() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_BODYWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->bodyWidth() );
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
void setBodyWidth( qreal bodyWidth )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETBODYWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBodyWidth( PQREAL(1) );
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
bool bodyOutlineVisible() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_BODYOUTLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->bodyOutlineVisible() );
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
void setBodyOutlineVisible( bool bodyOutlineVisible )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETBODYOUTLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setBodyOutlineVisible( PBOOL(1) );
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
qreal capsWidth() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_CAPSWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->capsWidth() );
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
void setCapsWidth( qreal capsWidth )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETCAPSWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCapsWidth( PQREAL(1) );
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
bool capsVisible() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_CAPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->capsVisible() );
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
void setCapsVisible( bool capsVisible )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETCAPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setCapsVisible( PBOOL(1) );
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
QColor increasingColor() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_INCREASINGCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->increasingColor() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setIncreasingColor( const QColor & increasingColor )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETINCREASINGCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setIncreasingColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
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
QColor decreasingColor() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_DECREASINGCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->decreasingColor() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setDecreasingColor( const QColor & decreasingColor )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETDECREASINGCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setDecreasingColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
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
QBrush brush() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush() );
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
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
void setBrush( const QBrush & brush )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush( *PQBRUSH(1) );
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
QPen pen() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen() );
      Qt5xHb::createReturnClass(ptr, "QPEN", true);
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
void setPen( const QPen & pen )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen( *PQPEN(1) );
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
bool append( QCandlestickSet * set )
*/
void QCandlestickSeries_append1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->append( PQCANDLESTICKSET(1) ) );
  }
#endif
}

/*
bool append( const QList<QCandlestickSet *> & sets )
*/
void QCandlestickSeries_append2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QCandlestickSet *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QCandlestickSet *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    RBOOL( obj->append( par1 ) );
  }
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQCANDLESTICKSET(1) )
  {
    QCandlestickSeries_append1();
  }
  else if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    QCandlestickSeries_append2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool remove( QCandlestickSet * set )
*/
void QCandlestickSeries_remove1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->remove( PQCANDLESTICKSET(1) ) );
  }
#endif
}

/*
bool remove( const QList<QCandlestickSet *> & sets )
*/
void QCandlestickSeries_remove2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QCandlestickSet *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QCandlestickSet *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    RBOOL( obj->remove( par1 ) );
  }
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_REMOVE )
{
  if( ISNUMPAR(1) && ISQCANDLESTICKSET(1) )
  {
    QCandlestickSeries_remove1();
  }
  else if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    QCandlestickSeries_remove2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool insert( int index, QCandlestickSet * set )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQCANDLESTICKSET(2) )
    {
#endif
      RBOOL( obj->insert( PINT(1), PQCANDLESTICKSET(2) ) );
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
bool take( QCandlestickSet * set )
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_TAKE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCANDLESTICKSET(1) )
    {
#endif
      RBOOL( obj->take( PQCANDLESTICKSET(1) ) );
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
void clear()
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
QList<QCandlestickSet *> sets() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_SETS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QCandlestickSet *> list = obj->sets();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCANDLESTICKSET" );
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
          hb_itemPutPtr( pItem, (QCandlestickSet *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCANDLESTICKSET", HB_ERR_ARGS_BASEPARAMS );
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

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QCANDLESTICKSERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeries * obj = (QCandlestickSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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

void QCandlestickSeriesSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONBODYOUTLINEVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "bodyOutlineVisibilityChanged()", "bodyOutlineVisibilityChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONBODYWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "bodyWidthChanged()", "bodyWidthChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "brushChanged()", "brushChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONCANDLESTICKSETSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "candlestickSetsAdded(QList<QCandlestickSet*>)", "candlestickSetsAdded(QList<QCandlestickSet*>)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONCANDLESTICKSETSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "candlestickSetsRemoved(QList<QCandlestickSet*>)", "candlestickSetsRemoved(QList<QCandlestickSet*>)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONCAPSVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "capsVisibilityChanged()", "capsVisibilityChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONCAPSWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "capsWidthChanged()", "capsWidthChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "clicked(QCandlestickSet*)", "clicked(QCandlestickSet*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "countChanged()", "countChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONDECREASINGCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "decreasingColorChanged()", "decreasingColorChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "doubleClicked(QCandlestickSet*)", "doubleClicked(QCandlestickSet*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "hovered(bool,QCandlestickSet*)", "hovered(bool,QCandlestickSet*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONINCREASINGCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "increasingColorChanged()", "increasingColorChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONMAXIMUMCOLUMNWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "maximumColumnWidthChanged()", "maximumColumnWidthChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONMINIMUMCOLUMNWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "minimumColumnWidthChanged()", "minimumColumnWidthChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "penChanged()", "penChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "pressed(QCandlestickSet*)", "pressed(QCandlestickSet*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickSeriesSlots_connect_signal( "released(QCandlestickSet*)", "released(QCandlestickSet*)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
