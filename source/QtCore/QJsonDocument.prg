/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QJSONARRAY
REQUEST QJSONOBJECT
REQUEST QVARIANT
#endif

CLASS QJsonDocument

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD array
   METHOD isArray
   METHOD isEmpty
   METHOD isNull
   METHOD isObject
   METHOD object
   METHOD rawData
   METHOD setArray
   METHOD setObject
   METHOD toBinaryData
   METHOD toJson
   METHOD toVariant
   METHOD fromBinaryData
   METHOD fromJson
   METHOD fromRawData
   METHOD fromVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QJsonDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QJsonDocument>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QJsonDocument>
#endif

#include <QtCore/QJsonArray>
#include <QtCore/QJsonObject>
#include <QtCore/QVariant>

/*
QJsonDocument()
*/
void QJsonDocument_new1 ()
{
  QJsonDocument * o = new QJsonDocument ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QJsonDocument(const QJsonObject & object)
*/
void QJsonDocument_new2 ()
{
  QJsonDocument * o = new QJsonDocument ( *PQJSONOBJECT(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QJsonDocument(const QJsonArray & array)
*/
void QJsonDocument_new3 ()
{
  QJsonDocument * o = new QJsonDocument ( *PQJSONARRAY(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QJsonDocument(const QJsonDocument & other)
*/
void QJsonDocument_new4 ()
{
  QJsonDocument * o = new QJsonDocument ( *PQJSONDOCUMENT(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QJsonDocument()
//[2]QJsonDocument(const QJsonObject & object)
//[3]QJsonDocument(const QJsonArray & array)
//[4]QJsonDocument(const QJsonDocument & other)

HB_FUNC_STATIC( QJSONDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonDocument_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonDocument_new2();
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonDocument_new3();
  }
  else if( ISNUMPAR(1) && ISQJSONDOCUMENT(1) )
  {
    QJsonDocument_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONDOCUMENT_DELETE )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

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
QJsonArray array() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QJsonArray * ptr = new QJsonArray( obj->array () );
      _qt5xhb_createReturnClass ( ptr, "QJSONARRAY", true );
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
bool isArray() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isArray () );
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISEMPTY )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty () );
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
bool isNull() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISNULL )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull () );
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
bool isObject() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISOBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isObject () );
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
QJsonObject object() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_OBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QJsonObject * ptr = new QJsonObject( obj->object () );
      _qt5xhb_createReturnClass ( ptr, "QJSONOBJECT", true );
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
const char * rawData(int * size) const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_RAWDATA )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      int par1;
      hb_retc( (const char *) obj->rawData ( &par1 ) );
      hb_storni( par1, 1 );
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
void setArray(const QJsonArray & array)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_SETARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQJSONARRAY(1) )
    {
#endif
      obj->setArray ( *PQJSONARRAY(1) );
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
void setObject(const QJsonObject & object)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_SETOBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
    {
#endif
      obj->setObject ( *PQJSONOBJECT(1) );
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
QByteArray toBinaryData() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOBINARYDATA )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toBinaryData () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
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
QByteArray toJson() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOJSON )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toJson () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
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
QVariant toVariant() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOVARIANT )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVariant * ptr = new QVariant( obj->toVariant () );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
static QJsonDocument fromBinaryData(const QByteArray & data, DataValidation validation = Validate)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMBINARYDATA )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
#endif
      QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromBinaryData ( *PQBYTEARRAY(1), ISNIL(2)? (QJsonDocument::DataValidation) QJsonDocument::Validate : (QJsonDocument::DataValidation) hb_parni(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONDOCUMENT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QJsonDocument fromJson(const QByteArray & json, QJsonParseError * error = 0)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMJSON )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQJSONPARSEERROR(2)||ISNIL(2)) )
  {
#endif
      QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromJson ( *PQBYTEARRAY(1), ISNIL(2)? 0 : (QJsonParseError *) _qt5xhb_itemGetPtr(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONDOCUMENT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QJsonDocument fromRawData(const char * data, int size, DataValidation validation = Validate)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMRAWDATA )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
#endif
      QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromRawData ( PCONSTCHAR(1), PINT(2), ISNIL(3)? (QJsonDocument::DataValidation) QJsonDocument::Validate : (QJsonDocument::DataValidation) hb_parni(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONDOCUMENT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QJsonDocument fromVariant(const QVariant & variant)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMVARIANT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
#endif
      QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromVariant ( *PQVARIANT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONDOCUMENT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QJSONDOCUMENT_NEWFROM )
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

HB_FUNC_STATIC( QJSONDOCUMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSONDOCUMENT_NEWFROM );
}

HB_FUNC_STATIC( QJSONDOCUMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSONDOCUMENT_NEWFROM );
}

HB_FUNC_STATIC( QJSONDOCUMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSONDOCUMENT_SETSELFDESTRUCTION )
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
