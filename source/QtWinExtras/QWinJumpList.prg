/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINJUMPLISTCATEGORY
#endif

CLASS QWinJumpList INHERIT QObject

   METHOD new
   METHOD delete
   METHOD identifier
   METHOD setIdentifier
   METHOD recent
   METHOD frequent
   METHOD tasks
   METHOD categories
   METHOD addCategory
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWinJumpList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QWinJumpList>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QWinJumpList>
#endif
#endif

/*
QWinJumpList( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QWINJUMPLIST_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QWinJumpList * obj = new QWinJumpList( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QWINJUMPLIST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
QString identifier() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_IDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->identifier() );
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
void setIdentifier( const QString & identifier )
*/
HB_FUNC_STATIC( QWINJUMPLIST_SETIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setIdentifier( PQSTRING(1) );
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
QWinJumpListCategory * recent() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_RECENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWinJumpListCategory * ptr = obj->recent();
      Qt5xHb::createReturnClass(ptr, "QWINJUMPLISTCATEGORY", false);
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
QWinJumpListCategory * frequent() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_FREQUENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWinJumpListCategory * ptr = obj->frequent();
      Qt5xHb::createReturnClass(ptr, "QWINJUMPLISTCATEGORY", false);
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
QWinJumpListCategory * tasks() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_TASKS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWinJumpListCategory * ptr = obj->tasks();
      Qt5xHb::createReturnClass(ptr, "QWINJUMPLISTCATEGORY", false);
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
QList<QWinJumpListCategory*> categories() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_CATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QWinJumpListCategory*> list = obj->categories();
      PHB_DYNS pDynSym = hb_dynsymFindName("QWINJUMPLISTCATEGORY");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QWINJUMPLISTCATEGORY", HB_ERR_ARGS_BASEPARAMS);
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

HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY )
{
  if( ISNUMPAR(1) && ISQWINJUMPLISTCATEGORY(1) )
  {
    /*
    void addCategory( QWinJumpListCategory * category )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->addCategory( PQWINJUMPLISTCATEGORY(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QWINJUMPLIST_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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

#pragma ENDDUMP
