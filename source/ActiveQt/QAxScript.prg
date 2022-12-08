/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXSCRIPTENGINE
REQUEST QVARIANT
#endif

CLASS QAxScript INHERIT QObject

   METHOD new
   METHOD delete
   METHOD call
   METHOD functions
   METHOD load
   METHOD scriptCode
   METHOD scriptEngine
   METHOD scriptName

   METHOD onEntered
   METHOD onError
   METHOD onFinished1
   METHOD onFinished2
   METHOD onFinished3
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxScript
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxScript>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxScript>
#endif

#include <QtCore/QStringList>

/*
QAxScript( const QString & name, QAxScriptManager * manager )
*/
HB_FUNC_STATIC( QAXSCRIPT_NEW )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQAXSCRIPTMANAGER(2) )
  {
    QAxScript * obj = new QAxScript( PQSTRING(1), PQAXSCRIPTMANAGER(2) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QAXSCRIPT_DELETE )
{
  QAxScript * obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QVariant call( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxScript_call1()
{
  QAxScript * obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->call( PQSTRING(1), HB_ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2), HB_ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), HB_ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), HB_ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), HB_ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), HB_ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), HB_ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), HB_ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9) ) );
    Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
  }
}

/*
QVariant call( const QString & function, QList<QVariant> & arguments )
*/
void QAxScript_call2()
{
  QAxScript * obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->call( PQSTRING(1), PQVARIANTLIST(2) ) );
    Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
  }
}

HB_FUNC_STATIC( QAXSCRIPT_CALL )
{
  if( ISBETWEEN(1,9) && HB_ISCHAR(1) && (ISQVARIANT(2)||HB_ISNIL(2)) && (ISQVARIANT(3)||HB_ISNIL(3)) && (ISQVARIANT(4)||HB_ISNIL(4)) && (ISQVARIANT(5)||HB_ISNIL(5)) && (ISQVARIANT(6)||HB_ISNIL(6)) && (ISQVARIANT(7)||HB_ISNIL(7)) && (ISQVARIANT(8)||HB_ISNIL(8)) && (ISQVARIANT(9)||HB_ISNIL(9)) )
  {
    QAxScript_call1();
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
  {
    QAxScript_call2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStringList functions( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const
*/
HB_FUNC_STATIC( QAXSCRIPT_FUNCTIONS )
{
  QAxScript * obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      RQSTRINGLIST( obj->functions( HB_ISNIL(1)? (QAxScript::FunctionFlags) QAxScript::FunctionNames : (QAxScript::FunctionFlags) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool load( const QString & code, const QString & language = QString() )
*/
HB_FUNC_STATIC( QAXSCRIPT_LOAD )
{
  QAxScript * obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISCHAR(1) && (HB_ISCHAR(2)||HB_ISNIL(2)) )
    {
#endif
      RBOOL( obj->load( PQSTRING(1), OPQSTRING(2,QString()) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString scriptCode() const
*/
HB_FUNC_STATIC( QAXSCRIPT_SCRIPTCODE )
{
  QAxScript * obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->scriptCode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAxScriptEngine * scriptEngine() const
*/
HB_FUNC_STATIC( QAXSCRIPT_SCRIPTENGINE )
{
  QAxScript * obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAxScriptEngine * ptr = obj->scriptEngine();
      Qt5xHb::createReturnQObjectClass( ptr, "QAXSCRIPTENGINE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString scriptName() const
*/
HB_FUNC_STATIC( QAXSCRIPT_SCRIPTNAME )
{
  QAxScript * obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->scriptName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QAxScriptSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAXSCRIPT_ONENTERED )
{
  QAxScriptSlots_connect_signal( "entered()", "entered()" );
}

HB_FUNC_STATIC( QAXSCRIPT_ONERROR )
{
  QAxScriptSlots_connect_signal( "error(int,QString,int,QString)", "error(int,QString,int,QString)" );
}

HB_FUNC_STATIC( QAXSCRIPT_ONFINISHED1 )
{
  QAxScriptSlots_connect_signal( "finished()", "finished()" );
}

HB_FUNC_STATIC( QAXSCRIPT_ONFINISHED2 )
{
  QAxScriptSlots_connect_signal( "finished(QVariant)", "finished(QVariant)" );
}

HB_FUNC_STATIC( QAXSCRIPT_ONFINISHED3 )
{
  QAxScriptSlots_connect_signal( "finished(int,QString,QString,QString)", "finished(int,QString,QString,QString)" );
}

HB_FUNC_STATIC( QAXSCRIPT_ONSTATECHANGED )
{
  QAxScriptSlots_connect_signal( "stateChanged(int)", "stateChanged(int)" );
}

#pragma ENDDUMP
