/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QHostAddress

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new2
   METHOD new
   METHOD delete
   METHOD swap
   METHOD setAddress
   METHOD protocol
   METHOD toIPv4Address
   METHOD toString
   METHOD scopeId
   METHOD setScopeId
   METHOD isEqual
   METHOD isNull
   METHOD clear
   METHOD isInSubnet
   METHOD isLoopback
   METHOD isMulticast

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHostAddress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QHostAddress>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QHostAddress>
#endif

/*
QHostAddress( quint32 ip4Addr )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW2 )
{
  QHostAddress * obj = new QHostAddress( PQUINT32(1) );
  Qt5xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC( QHOSTADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QHostAddress()
    */
    QHostAddress * obj = new QHostAddress();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QHostAddress( const QString & address )
    */
    QHostAddress * obj = new QHostAddress( PQSTRING(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    /*
    QHostAddress( const QHostAddress & copy )
    */
    QHostAddress * obj = new QHostAddress( *PQHOSTADDRESS(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QHostAddress( QHostAddress::SpecialAddress address )
    */
    QHostAddress * obj = new QHostAddress( (QHostAddress::SpecialAddress) hb_parni(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QHostAddress()
*/
HB_FUNC_STATIC( QHOSTADDRESS_DELETE )
{
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void swap( QHostAddress & other ) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QHOSTADDRESS_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
    {
#endif
      obj->swap( *PQHOSTADDRESS(1) );
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

#if 0
/*
void setAddress( QHostAddress::SpecialAddress address )
*/
void QHostAddress_setAddress7()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    obj->setAddress( (QHostAddress::SpecialAddress) hb_parni(1) );
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}
#endif

HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void setAddress( quint32 ip4Addr )
    */
    QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setAddress( PQUINT32(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool setAddress( const QString & address )
    */
    QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->setAddress( PQSTRING(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAbstractSocket::NetworkLayerProtocol protocol() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_PROTOCOL )
{
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->protocol() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QHOSTADDRESS_TOIPV4ADDRESS )
{
  if( ISNUMPAR(0) )
  {
    /*
    quint32 toIPv4Address() const
    */
    QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RQUINT32( obj->toIPv4Address() );
    }
  }
  else if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
    /*
    quint32 toIPv4Address( bool * ok ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      bool par1;
      RQUINT32( obj->toIPv4Address( &par1 ) );
      hb_storl( par1, 1 );
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString toString() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOSTRING )
{
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString scopeId() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_SCOPEID )
{
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->scopeId() );
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
void setScopeId( const QString & id )
*/
HB_FUNC_STATIC( QHOSTADDRESS_SETSCOPEID )
{
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setScopeId( PQSTRING(1) );
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
bool isEqual( const QHostAddress & address, QHostAddress::ConversionMode mode = QHostAddress::TolerantConversion ) const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISEQUAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQHOSTADDRESS(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      RBOOL( obj->isEqual( *PQHOSTADDRESS(1), HB_ISNIL(2)? (QHostAddress::ConversionMode) QHostAddress::TolerantConversion : (QHostAddress::ConversionMode) hb_parni(2) ) );
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
bool isNull() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISNULL )
{
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
void clear()
*/
HB_FUNC_STATIC( QHOSTADDRESS_CLEAR )
{
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && HB_ISNUM(2) )
  {
    /*
    bool isInSubnet( const QHostAddress & subnet, int netmask ) const
    */
    QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->isInSubnet( *PQHOSTADDRESS(1), PINT(2) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isLoopback() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISLOOPBACK )
{
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLoopback() );
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
bool isMulticast() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISMULTICAST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QHostAddress * obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMulticast() );
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

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QHOSTADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QHOSTADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QHOSTADDRESS_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QHOSTADDRESS_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
