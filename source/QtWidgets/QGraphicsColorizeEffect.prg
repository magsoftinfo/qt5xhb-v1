/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength

   METHOD onColorChanged
   METHOD onStrengthChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsColorizeEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsColorizeEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsColorizeEffect>
#endif

/*
QGraphicsColorizeEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QGraphicsColorizeEffect * o = new QGraphicsColorizeEffect( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_DELETE )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) Qt5xHb::itemGetPtrStackSelfItem();

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
QColor color () const
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_COLOR )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->color() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
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
qreal strength () const
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_STRENGTH )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->strength() );
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
void setColor ( const QColor & c )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_SETCOLOR )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setColor( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
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
void setStrength ( qreal strength )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_SETSTRENGTH )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setStrength( PQREAL(1) );
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

void QGraphicsColorizeEffectSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_ONCOLORCHANGED )
{
  QGraphicsColorizeEffectSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
}

HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_ONSTRENGTHCHANGED )
{
  QGraphicsColorizeEffectSlots_connect_signal( "strengthChanged(qreal)", "strengthChanged(qreal)" );
}

#pragma ENDDUMP
