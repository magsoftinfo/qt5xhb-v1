/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QHelpIndexWidget INHERIT QListView

   METHOD delete
   METHOD activateCurrentItem
   METHOD filterIndices

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpIndexWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpIndexWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHelpIndexWidget>
#endif

HB_FUNC_STATIC( QHELPINDEXWIDGET_DELETE )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) _qt5xhb_itemGetPtrStackSelfItem();

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
void activateCurrentItem ()
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_ACTIVATECURRENTITEM )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->activateCurrentItem ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void filterIndices ( const QString & filter, const QString & wildcard = QString() )
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_FILTERINDICES )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
    {
      obj->filterIndices ( PQSTRING(1), OPQSTRING(2,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QHelpIndexWidgetSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHELPINDEXWIDGET_ONLINKACTIVATED )
{
  QHelpIndexWidgetSlots_connect_signal( "linkActivated(QUrl,QString)", "linkActivated(QUrl,QString)" );
}

#pragma ENDDUMP
