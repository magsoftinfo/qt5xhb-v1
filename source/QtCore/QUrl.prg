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
#endif

CLASS QUrl

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD authority
   METHOD clear
   METHOD errorString
   METHOD fragment
   METHOD hasFragment
   METHOD hasQuery
   METHOD host
   METHOD isEmpty
   METHOD isLocalFile
   METHOD isParentOf
   METHOD isRelative
   METHOD isValid
   METHOD password
   METHOD path
   METHOD port
   METHOD resolved
   METHOD scheme
   METHOD setAuthority
   METHOD setFragment
   METHOD setHost
   METHOD setPassword
   METHOD setPath
   METHOD setPort
   METHOD setScheme
   METHOD setUrl
   METHOD setUserInfo
   METHOD setUserName
   METHOD swap
   METHOD toEncoded
   METHOD toLocalFile
   METHOD toString
   METHOD topLevelDomain
   METHOD userInfo
   METHOD userName
   METHOD fromAce
   METHOD fromEncoded
   METHOD fromLocalFile
   METHOD fromPercentEncoding
   METHOD fromUserInput
   METHOD setIdnWhitelist
   METHOD toAce
   METHOD toPercentEncoding

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUrl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QUrl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QUrl>
#endif

#include <QtCore/QStringList>

/*
QUrl ()
*/
void QUrl_new1()
{
  QUrl * o = new QUrl();
  Qt5xHb::returnNewObject( o, true );
}

/*
QUrl ( const QString & url )
*/
void QUrl_new2()
{
  QUrl * o = new QUrl( PQSTRING(1) );
  Qt5xHb::returnNewObject( o, true );
}

/*
QUrl ( const QUrl & other )
*/
void QUrl_new3()
{
  QUrl * o = new QUrl( *PQURL(1) );
  Qt5xHb::returnNewObject( o, true );
}

/*
QUrl ( const QString & url, ParsingMode parsingMode )
*/
void QUrl_new4()
{
  QUrl * o = new QUrl( PQSTRING(1), (QUrl::ParsingMode) hb_parni(2) );
  Qt5xHb::returnNewObject( o, true );
}

//[1]QUrl ()
//[2]QUrl ( const QString & url )
//[3]QUrl ( const QUrl & other )
//[4]QUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrl_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_new2();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QUrl_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QURL_DELETE )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

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
QString authority () const
*/
HB_FUNC_STATIC( QURL_AUTHORITY )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->authority() );
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
void clear ()
*/
HB_FUNC_STATIC( QURL_CLEAR )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString errorString () const
*/
HB_FUNC_STATIC( QURL_ERRORSTRING )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
QString fragment () const
*/
HB_FUNC_STATIC( QURL_FRAGMENT )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fragment() );
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
bool hasFragment () const
*/
HB_FUNC_STATIC( QURL_HASFRAGMENT )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasFragment() );
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
bool hasQuery () const
*/
HB_FUNC_STATIC( QURL_HASQUERY )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasQuery() );
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
QString host () const
*/
HB_FUNC_STATIC( QURL_HOST )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->host() );
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
bool isEmpty () const
*/
HB_FUNC_STATIC( QURL_ISEMPTY )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
bool isLocalFile () const
*/
HB_FUNC_STATIC( QURL_ISLOCALFILE )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLocalFile() );
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
bool isParentOf ( const QUrl & childUrl ) const
*/
HB_FUNC_STATIC( QURL_ISPARENTOF )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      RBOOL( obj->isParentOf( *PQURL(1) ) );
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
bool isRelative () const
*/
HB_FUNC_STATIC( QURL_ISRELATIVE )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRelative() );
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
bool isValid () const
*/
HB_FUNC_STATIC( QURL_ISVALID )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QString password () const
*/
HB_FUNC_STATIC( QURL_PASSWORD )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->password() );
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
QString path () const
*/
HB_FUNC_STATIC( QURL_PATH )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int port () const
*/
void QUrl_port1()
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->port() );
  }
}

/*
int port ( int defaultPort ) const
*/
void QUrl_port2()
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->port( PINT(1) ) );
  }
}

//[1]int port () const
//[2]int port ( int defaultPort ) const

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    QUrl_port1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QUrl_port2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QUrl resolved ( const QUrl & relative ) const
*/
HB_FUNC_STATIC( QURL_RESOLVED )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      QUrl * ptr = new QUrl( obj->resolved( *PQURL(1) ) );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
QString scheme () const
*/
HB_FUNC_STATIC( QURL_SCHEME )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->scheme() );
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
void setAuthority ( const QString & authority )
*/
HB_FUNC_STATIC( QURL_SETAUTHORITY )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setAuthority( PQSTRING(1) );
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
void setFragment ( const QString & fragment )
*/
HB_FUNC_STATIC( QURL_SETFRAGMENT )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setFragment( PQSTRING(1) );
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
void setHost ( const QString & host )
*/
HB_FUNC_STATIC( QURL_SETHOST )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setHost( PQSTRING(1) );
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
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QURL_SETPASSWORD )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setPassword( PQSTRING(1) );
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
void setPath ( const QString & path )
*/
HB_FUNC_STATIC( QURL_SETPATH )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setPath( PQSTRING(1) );
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
void setPort ( int port )
*/
HB_FUNC_STATIC( QURL_SETPORT )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPort( PINT(1) );
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
void setScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QURL_SETSCHEME )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setScheme( PQSTRING(1) );
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
void setUrl ( const QString & url )
*/
void QUrl_setUrl1()
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setUrl( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl ( const QString & url, ParsingMode parsingMode )
*/
void QUrl_setUrl2()
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setUrl( PQSTRING(1), (QUrl::ParsingMode) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setUrl ( const QString & url )
//[2]void setUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_setUrl1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_setUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUserInfo ( const QString & userInfo )
*/
HB_FUNC_STATIC( QURL_SETUSERINFO )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setUserInfo( PQSTRING(1) );
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
void setUserName ( const QString & userName )
*/
HB_FUNC_STATIC( QURL_SETUSERNAME )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setUserName( PQSTRING(1) );
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
void swap ( QUrl & other )
*/
HB_FUNC_STATIC( QURL_SWAP )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->swap( *PQURL(1) );
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
QByteArray toEncoded ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOENCODED )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toEncoded( ISNIL(1)? (QUrl::FormattingOptions) QUrl::None : (QUrl::FormattingOptions) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QString toLocalFile () const
*/
HB_FUNC_STATIC( QURL_TOLOCALFILE )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toLocalFile() );
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
QString toString ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOSTRING )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RQSTRING( obj->toString( ISNIL(1)? (QUrl::FormattingOptions) QUrl::None : (QUrl::FormattingOptions) hb_parni(1) ) );
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
QString topLevelDomain () const
*/
HB_FUNC_STATIC( QURL_TOPLEVELDOMAIN )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->topLevelDomain() );
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
QString userInfo () const
*/
HB_FUNC_STATIC( QURL_USERINFO )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->userInfo() );
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
QString userName () const
*/
HB_FUNC_STATIC( QURL_USERNAME )
{
  QUrl * obj = (QUrl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->userName() );
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
static QString fromAce ( const QByteArray & domain )
*/
HB_FUNC_STATIC( QURL_FROMACE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    RQSTRING( QUrl::fromAce( *PQBYTEARRAY(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QUrl fromEncoded ( const QByteArray & input )
*/
void QUrl_fromEncoded1()
{

  QUrl * ptr = new QUrl( QUrl::fromEncoded( *PQBYTEARRAY(1) ) );
  Qt5xHb::createReturnClass( ptr, "QURL", true );
}

/*
static QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/
void QUrl_fromEncoded2()
{

  QUrl * ptr = new QUrl( QUrl::fromEncoded( *PQBYTEARRAY(1), (QUrl::ParsingMode) hb_parni(2) ) );
  Qt5xHb::createReturnClass( ptr, "QURL", true );
}

//[1]QUrl fromEncoded ( const QByteArray & input )
//[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUrl_fromEncoded1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QUrl_fromEncoded2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUrl fromLocalFile ( const QString & localFile )
*/
HB_FUNC_STATIC( QURL_FROMLOCALFILE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QUrl * ptr = new QUrl( QUrl::fromLocalFile( PQSTRING(1) ) );
    Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString fromPercentEncoding ( const QByteArray & input )
*/
HB_FUNC_STATIC( QURL_FROMPERCENTENCODING )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    RQSTRING( QUrl::fromPercentEncoding( *PQBYTEARRAY(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QUrl fromUserInput ( const QString & userInput )
*/
HB_FUNC_STATIC( QURL_FROMUSERINPUT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QUrl * ptr = new QUrl( QUrl::fromUserInput( PQSTRING(1) ) );
    Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void setIdnWhitelist ( const QStringList & list )
*/
HB_FUNC_STATIC( QURL_SETIDNWHITELIST )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
#endif
    QUrl::setIdnWhitelist( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QByteArray toAce ( const QString & domain )
*/
HB_FUNC_STATIC( QURL_TOACE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QByteArray * ptr = new QByteArray( QUrl::toAce( PQSTRING(1) ) );
    Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
*/
HB_FUNC_STATIC( QURL_TOPERCENTENCODING )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQBYTEARRAY(3)||ISNIL(3)) )
  {
#endif
    QByteArray * ptr = new QByteArray( QUrl::toPercentEncoding( PQSTRING(1), ISNIL(2)? QByteArray() : *(QByteArray *) Qt5xHb::itemGetPtr(2), ISNIL(3)? QByteArray() : *(QByteArray *) Qt5xHb::itemGetPtr(3) ) );
    Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QURL_NEWFROM )
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

HB_FUNC_STATIC( QURL_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QURL_NEWFROM );
}

HB_FUNC_STATIC( QURL_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QURL_NEWFROM );
}

HB_FUNC_STATIC( QURL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QURL_SETSELFDESTRUCTION )
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
