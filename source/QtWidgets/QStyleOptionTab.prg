/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QSIZE
#endif

CLASS QStyleOptionTab INHERIT QStyleOption

   METHOD new
   METHOD shape
   METHOD setShape
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD row
   METHOD setRow
   METHOD position
   METHOD setPosition
   METHOD selectedPosition
   METHOD setSelectedPosition
   METHOD cornerWidgets
   METHOD setCornerWidgets
   METHOD iconSize
   METHOD setIconSize
   METHOD documentMode
   METHOD setDocumentMode
   METHOD leftButtonSize
   METHOD setLeftButtonSize
   METHOD rightButtonSize
   METHOD setRightButtonSize
   METHOD features
   METHOD setFeatures

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionTab
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionTab>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionTab>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONTAB_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionTab()
    */
    QStyleOptionTab * obj = new QStyleOptionTab();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTAB(1) )
  {
    /*
    QStyleOptionTab( const QStyleOptionTab & other )
    */
    QStyleOptionTab * obj = new QStyleOptionTab( *PQSTYLEOPTIONTAB(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SHAPE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETSHAPE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->shape= (QTabBar::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_TEXT )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETTEXT )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
      obj->text= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_ICON )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      Qt5xHb::createReturnClass(ptr, "QICON", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETICON )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon= *PQICON(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int row
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_ROW )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->row );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETROW )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->row= PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
TabPosition position
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_POSITION )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->position );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETPOSITION )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->position= (QStyleOptionTab::TabPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
SelectedPosition selectedPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SELECTEDPOSITION )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->selectedPosition );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETSELECTEDPOSITION )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->selectedPosition= (QStyleOptionTab::SelectedPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
CornerWidgets cornerWidgets
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_CORNERWIDGETS )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->cornerWidgets );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETCORNERWIDGETS )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->cornerWidgets= (QStyleOptionTab::CornerWidgets) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize iconSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_ICONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->iconSize );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETICONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->iconSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool documentMode
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_DOCUMENTMODE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->documentMode );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETDOCUMENTMODE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
      obj->documentMode= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize leftButtonSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_LEFTBUTTONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->leftButtonSize );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETLEFTBUTTONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->leftButtonSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize rightButtonSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_RIGHTBUTTONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->rightButtonSize );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETRIGHTBUTTONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->rightButtonSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
TabFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_FEATURES )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETFEATURES )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->features= (QStyleOptionTab::TabFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
