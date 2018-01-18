/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QQmlApplicationEngine INHERIT QQmlEngine

   METHOD new
   METHOD delete
   METHOD rootObjects
   METHOD load
   METHOD loadData

   METHOD onObjectCreated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlApplicationEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QQmlApplicationEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QQmlApplicationEngine>
#endif
#endif

/*
QQmlApplicationEngine(QObject *parent=0)
*/
void QQmlApplicationEngine_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QQmlApplicationEngine * o = new QQmlApplicationEngine ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QQmlApplicationEngine(const QUrl &url, QObject *parent=0)
*/
void QQmlApplicationEngine_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QQmlApplicationEngine * o = new QQmlApplicationEngine ( *PQURL(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QQmlApplicationEngine(const QString &filePath, QObject *parent=0)
*/
void QQmlApplicationEngine_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QQmlApplicationEngine * o = new QQmlApplicationEngine ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]QQmlApplicationEngine(QObject *parent=0)
//[2]QQmlApplicationEngine(const QUrl &url, QObject *parent=0)
//[3]QQmlApplicationEngine(const QString &filePath, QObject *parent=0)

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QQmlApplicationEngine_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QQmlApplicationEngine_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QQmlApplicationEngine_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QQmlApplicationEngine * obj = (QQmlApplicationEngine *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QList<QObject*> rootObjects()
*/
HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_ROOTOBJECTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QQmlApplicationEngine * obj = (QQmlApplicationEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QObject *> list = obj->rootObjects ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QOBJECT" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QObject *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QOBJECT", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void load(const QUrl &url)
*/
void QQmlApplicationEngine_load1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QQmlApplicationEngine * obj = (QQmlApplicationEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( *PQURL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void load(const QString &filePath)
*/
void QQmlApplicationEngine_load2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QQmlApplicationEngine * obj = (QQmlApplicationEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void load(const QUrl &url)
//[2]void load(const QString &filePath)

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QQmlApplicationEngine_load1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QQmlApplicationEngine_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void loadData(const QByteArray &data, const QUrl &url = QUrl())
*/
HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_LOADDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QQmlApplicationEngine * obj = (QQmlApplicationEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
    {
      obj->loadData ( *PQBYTEARRAY(1), ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
