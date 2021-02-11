/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAndroidJniObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD callObjectMethod
   METHOD getObjectField1
   METHOD getObjectField2
   METHOD getObjectField
   METHOD toString
   METHOD isValid
   METHOD callStaticObjectMethod1
   METHOD callStaticObjectMethod
   METHOD fromLocalRef
   METHOD fromString
   METHOD getStaticObjectField1
   METHOD getStaticObjectField2
   METHOD getStaticObjectField
   METHOD isClassAvailable

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidJniObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtAndroidExtras/QAndroidJniObject>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtAndroidExtras/QAndroidJniObject>
#endif
#endif

/*
QAndroidJniObject()
*/
void QAndroidJniObject_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = new QAndroidJniObject();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QAndroidJniObject(const char *className)
*/
void QAndroidJniObject_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = new QAndroidJniObject( PCONSTCHAR(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidJniObject_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QAndroidJniObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) Qt5xHb::itemGetPtrStackSelfItem();

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
QAndroidJniObject callObjectMethod(const char *methodName) const
*/
void QAndroidJniObject_callObjectMethod1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAndroidJniObject * ptr = new QAndroidJniObject( obj->callObjectMethod( PCONSTCHAR(1) ) );
    Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
  }
#endif
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLOBJECTMETHOD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QAndroidJniObject_callObjectMethod1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAndroidJniObject getObjectField(const char *fieldName) const
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETOBJECTFIELD1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QAndroidJniObject * ptr = new QAndroidJniObject( obj->getObjectField( PCONSTCHAR(1) ) );
      Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QAndroidJniObject getObjectField(const char *fieldName, const char *signature) const
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETOBJECTFIELD2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      QAndroidJniObject * ptr = new QAndroidJniObject( obj->getObjectField( PCONSTCHAR(1), PCONSTCHAR(2) ) );
      Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETOBJECTFIELD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QAndroidJniObject_getObjectField1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QAndroidJniObject_getObjectField2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toString() const
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
static QAndroidJniObject callStaticObjectMethod(const char *className, const char *methodName)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLSTATICOBJECTMETHOD1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
#endif
    QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::callStaticObjectMethod( PCONSTCHAR(1), PCONSTCHAR(2) ) );
    Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLSTATICOBJECTMETHOD )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_CALLSTATICOBJECTMETHOD1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QAndroidJniObject fromLocalRef(int localRef)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_FROMLOCALREF )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
    QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::fromLocalRef( PINT(1) ) );
    Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static QAndroidJniObject fromString(const QString &string)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_FROMSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::fromString( PQSTRING(1) ) );
    Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
#endif
    QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::getStaticObjectField( PCONSTCHAR(1), PCONSTCHAR(2) ) );
    Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName, const char *sig)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
#endif
    QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::getStaticObjectField( PCONSTCHAR(1), PCONSTCHAR(2), PCONSTCHAR(3) ) );
    Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isClassAvailable(const char *className)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_ISCLASSAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    RBOOL( QAndroidJniObject::isClassAvailable( PCONSTCHAR(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QANDROIDJNIOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QANDROIDJNIOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
