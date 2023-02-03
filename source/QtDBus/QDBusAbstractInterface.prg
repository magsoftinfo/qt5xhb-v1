/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSCONNECTION
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
REQUEST QDBUSPENDINGCALL
#endif

CLASS QDBusAbstractInterface INHERIT QDBusAbstractInterfaceBase

   METHOD delete
   METHOD isValid
   METHOD connection
   METHOD service
   METHOD path
   METHOD interface
   METHOD lastError
   METHOD setTimeout
   METHOD timeout
   METHOD call
   METHOD callWithArgumentList
   METHOD callWithCallback
   METHOD asyncCall
   METHOD asyncCallWithArgumentList

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusAbstractInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusAbstractInterface>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusAbstractInterface>
#endif

#include <QtDBus/QDBusPendingCall>

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_DELETE )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_ISVALID )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
QDBusConnection connection() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CONNECTION )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDBusConnection * ptr = new QDBusConnection( obj->connection() );
      Qt5xHb::createReturnClass(ptr, "QDBUSCONNECTION", true);
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
QString service() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_SERVICE )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->service() );
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
QString path() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_PATH )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->path() );
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
QString interface() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_INTERFACE )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->interface() );
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
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_LASTERROR )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDBusError * ptr = new QDBusError( obj->lastError() );
      Qt5xHb::createReturnClass(ptr, "QDBUSERROR", true);
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
void setTimeout( int timeout )
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_SETTIMEOUT )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTimeout( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int timeout() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_TIMEOUT )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->timeout() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALL )
{
  if( ISBETWEEN(1,9) && HB_ISCHAR(1) && (ISQVARIANT(2)||HB_ISNIL(2)) && (ISQVARIANT(3)||HB_ISNIL(3)) && (ISQVARIANT(4)||HB_ISNIL(4)) && (ISQVARIANT(5)||HB_ISNIL(5)) && (ISQVARIANT(6)||HB_ISNIL(6)) && (ISQVARIANT(7)||HB_ISNIL(7)) && (ISQVARIANT(8)||HB_ISNIL(8)) && (ISQVARIANT(9)||HB_ISNIL(9)) )
  {
    /*
    QDBusMessage call( const QString & method, const QVariant & arg1 = QVariant(), const QVariant & arg2 = QVariant(), const QVariant & arg3 = QVariant(), const QVariant & arg4 = QVariant(), const QVariant & arg5 = QVariant(), const QVariant & arg6 = QVariant(), const QVariant & arg7 = QVariant(), const QVariant & arg8 = QVariant() )
    */
    QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QDBusMessage * ptr = new QDBusMessage( obj->call( PQSTRING(1), HB_ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2), HB_ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), HB_ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), HB_ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), HB_ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), HB_ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), HB_ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), HB_ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9) ) );
      Qt5xHb::createReturnClass(ptr, "QDBUSMESSAGE", true);
    }
  }
  else if( ISBETWEEN(2,10) && HB_ISNUM(1) && HB_ISCHAR(2) && (ISQVARIANT(3)||HB_ISNIL(3)) && (ISQVARIANT(4)||HB_ISNIL(4)) && (ISQVARIANT(5)||HB_ISNIL(5)) && (ISQVARIANT(6)||HB_ISNIL(6)) && (ISQVARIANT(7)||HB_ISNIL(7)) && (ISQVARIANT(8)||HB_ISNIL(8)) && (ISQVARIANT(9)||HB_ISNIL(9)) && (ISQVARIANT(10)||HB_ISNIL(10)) )
  {
    /*
    QDBusMessage call( QDBus::CallMode mode, const QString & method, const QVariant & arg1 = QVariant(), const QVariant & arg2 = QVariant(), const QVariant & arg3 = QVariant(), const QVariant & arg4 = QVariant(), const QVariant & arg5 = QVariant(), const QVariant & arg6 = QVariant(), const QVariant & arg7 = QVariant(), const QVariant & arg8 = QVariant() )
    */
    QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QDBusMessage * ptr = new QDBusMessage( obj->call( (QDBus::CallMode) hb_parni(1), PQSTRING(2), HB_ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), HB_ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), HB_ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), HB_ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), HB_ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), HB_ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), HB_ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9), HB_ISNIL(10)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(10) ) );
      Qt5xHb::createReturnClass(ptr, "QDBUSMESSAGE", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QDBusMessage callWithArgumentList( QDBus::CallMode mode, const QString & method, const QList<QVariant> & args )
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALLWITHARGUMENTLIST )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISARRAY(3) )
    {
#endif
      QList<QVariant> par3;
      PHB_ITEM aList3 = hb_param(3, HB_IT_ARRAY);
      int i3;
      int nLen3 = hb_arrayLen(aList3);
      for (i3=0;i3<nLen3;i3++)
      {
        par3 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList3, i3+1 ), "POINTER", 0 ) );
      }
      QDBusMessage * ptr = new QDBusMessage( obj->callWithArgumentList( (QDBus::CallMode) hb_parni(1), PQSTRING(2), par3 ) );
      Qt5xHb::createReturnClass(ptr, "QDBUSMESSAGE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALLWITHCALLBACK )
{
  if( ISNUMPAR(5) && HB_ISCHAR(1) && HB_ISARRAY(2) && ISQOBJECT(3) && HB_ISCHAR(4) && HB_ISCHAR(5) )
  {
    /*
    bool callWithCallback( const QString & method, const QList<QVariant> & args, QObject * receiver, const char * member, const char * errorSlot )
    */
    QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QList<QVariant> par2;
      PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
      int i2;
      int nLen2 = hb_arrayLen(aList2);
      for (i2=0;i2<nLen2;i2++)
      {
        par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
      }
      RBOOL( obj->callWithCallback( PQSTRING(1), par2, PQOBJECT(3), PCONSTCHAR(4), PCONSTCHAR(5) ) );
    }
  }
  else if( ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISARRAY(2) && ISQOBJECT(3) && HB_ISCHAR(4) )
  {
    /*
    bool callWithCallback( const QString & method, const QList<QVariant> & args, QObject * receiver, const char * member )
    */
    QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QList<QVariant> par2;
      PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
      int i2;
      int nLen2 = hb_arrayLen(aList2);
      for (i2=0;i2<nLen2;i2++)
      {
        par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
      }
      RBOOL( obj->callWithCallback( PQSTRING(1), par2, PQOBJECT(3), PCONSTCHAR(4) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QDBusPendingCall asyncCall( const QString & method, const QVariant & arg1 = QVariant(), const QVariant & arg2 = QVariant(), const QVariant & arg3 = QVariant(), const QVariant & arg4 = QVariant(), const QVariant & arg5 = QVariant(), const QVariant & arg6 = QVariant(), const QVariant & arg7 = QVariant(), const QVariant & arg8 = QVariant() )
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_ASYNCCALL )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,9) && HB_ISCHAR(1) && (ISQVARIANT(2)||HB_ISNIL(2)) && (ISQVARIANT(3)||HB_ISNIL(3)) && (ISQVARIANT(4)||HB_ISNIL(4)) && (ISQVARIANT(5)||HB_ISNIL(5)) && (ISQVARIANT(6)||HB_ISNIL(6)) && (ISQVARIANT(7)||HB_ISNIL(7)) && (ISQVARIANT(8)||HB_ISNIL(8)) && (ISQVARIANT(9)||HB_ISNIL(9)) )
    {
#endif
      QDBusPendingCall * ptr = new QDBusPendingCall( obj->asyncCall( PQSTRING(1), HB_ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2), HB_ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), HB_ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), HB_ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), HB_ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), HB_ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), HB_ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), HB_ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9) ) );
      Qt5xHb::createReturnClass(ptr, "QDBUSPENDINGCALL", true);
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
QDBusPendingCall asyncCallWithArgumentList( const QString & method, const QList<QVariant> & args )
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_ASYNCCALLWITHARGUMENTLIST )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
    {
#endif
      QList<QVariant> par2;
      PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
      int i2;
      int nLen2 = hb_arrayLen(aList2);
      for (i2=0;i2<nLen2;i2++)
      {
        par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
      }
      QDBusPendingCall * ptr = new QDBusPendingCall( obj->asyncCallWithArgumentList( PQSTRING(1), par2 ) );
      Qt5xHb::createReturnClass(ptr, "QDBUSPENDINGCALL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
