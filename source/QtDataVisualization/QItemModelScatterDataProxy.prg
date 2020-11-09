/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QREGEXP
#endif

CLASS QItemModelScatterDataProxy INHERIT QScatterDataProxy

   METHOD new
   METHOD delete
   METHOD itemModel
   METHOD setItemModel
   METHOD xPosRole
   METHOD setXPosRole
   METHOD yPosRole
   METHOD setYPosRole
   METHOD zPosRole
   METHOD setZPosRole
   METHOD rotationRole
   METHOD setRotationRole
   METHOD xPosRolePattern
   METHOD setXPosRolePattern
   METHOD yPosRolePattern
   METHOD setYPosRolePattern
   METHOD zPosRolePattern
   METHOD setZPosRolePattern
   METHOD rotationRolePattern
   METHOD setRotationRolePattern
   METHOD xPosRoleReplace
   METHOD setXPosRoleReplace
   METHOD yPosRoleReplace
   METHOD setYPosRoleReplace
   METHOD zPosRoleReplace
   METHOD setZPosRoleReplace
   METHOD rotationRoleReplace
   METHOD setRotationRoleReplace
   METHOD remap

   METHOD onItemModelChanged
   METHOD onRotationRoleChanged
   METHOD onRotationRolePatternChanged
   METHOD onRotationRoleReplaceChanged
   METHOD onXPosRoleChanged
   METHOD onXPosRolePatternChanged
   METHOD onXPosRoleReplaceChanged
   METHOD onYPosRoleChanged
   METHOD onYPosRolePatternChanged
   METHOD onYPosRoleReplaceChanged
   METHOD onZPosRoleChanged
   METHOD onZPosRolePatternChanged
   METHOD onZPosRoleReplaceChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QItemModelScatterDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QItemModelScatterDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QItemModelScatterDataProxy>
#endif

using namespace QtDataVisualization;

/*
explicit QItemModelScatterDataProxy(QObject *parent = Q_NULLPTR)
*/
void QItemModelScatterDataProxy_new1()
{
  QItemModelScatterDataProxy * obj = new QItemModelScatterDataProxy( OPQOBJECT(1,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
*/
void QItemModelScatterDataProxy_new2()
{
  QItemModelScatterDataProxy * obj = new QItemModelScatterDataProxy( PQABSTRACTITEMMODEL(1), OPQOBJECT(2,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelScatterDataProxy_new3()
{
  QItemModelScatterDataProxy * obj = new QItemModelScatterDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), OPQOBJECT(5,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QString &rotationRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelScatterDataProxy_new4()
{
  QItemModelScatterDataProxy * obj = new QItemModelScatterDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), OPQOBJECT(6,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QItemModelScatterDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QItemModelScatterDataProxy_new2();
  }
  else if( ISBETWEEN(4,5) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QItemModelScatterDataProxy_new3();
  }
  else if( ISBETWEEN(5,6) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QItemModelScatterDataProxy_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QItemModelScatterDataProxy()
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_DELETE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QAbstractItemModel *itemModel() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ITEMMODEL )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemModel * ptr = obj->itemModel();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTITEMMODEL" );
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
void setItemModel(QAbstractItemModel *itemModel)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETITEMMODEL )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setItemModel( PQABSTRACTITEMMODEL(1) );
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
QString xPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_XPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->xPosRole() );
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
void setXPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETXPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setXPosRole( PQSTRING(1) );
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
QString yPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_YPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->yPosRole() );
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
void setYPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETYPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setYPosRole( PQSTRING(1) );
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
QString zPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ZPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->zPosRole() );
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
void setZPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETZPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setZPosRole( PQSTRING(1) );
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
QString rotationRole() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ROTATIONROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rotationRole() );
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
void setRotationRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETROTATIONROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setRotationRole( PQSTRING(1) );
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
QRegExp xPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_XPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->xPosRolePattern() );
      Qt5xHb::createReturnClass( ptr, "QREGEXP", true );
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
void setXPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETXPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setXPosRolePattern( *PQREGEXP(1) );
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
QRegExp yPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_YPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->yPosRolePattern() );
      Qt5xHb::createReturnClass( ptr, "QREGEXP", true );
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
void setYPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETYPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setYPosRolePattern( *PQREGEXP(1) );
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
QRegExp zPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ZPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->zPosRolePattern() );
      Qt5xHb::createReturnClass( ptr, "QREGEXP", true );
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
void setZPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETZPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setZPosRolePattern( *PQREGEXP(1) );
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
QRegExp rotationRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ROTATIONROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->rotationRolePattern() );
      Qt5xHb::createReturnClass( ptr, "QREGEXP", true );
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
void setRotationRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETROTATIONROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setRotationRolePattern( *PQREGEXP(1) );
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
QString xPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_XPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->xPosRoleReplace() );
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
void setXPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETXPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setXPosRoleReplace( PQSTRING(1) );
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
QString yPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_YPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->yPosRoleReplace() );
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
void setYPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETYPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setYPosRoleReplace( PQSTRING(1) );
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
QString zPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ZPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->zPosRoleReplace() );
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
void setZPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETZPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setZPosRoleReplace( PQSTRING(1) );
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
QString rotationRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ROTATIONROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rotationRoleReplace() );
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
void setRotationRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETROTATIONROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setRotationRoleReplace( PQSTRING(1) );
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
void remap(const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QString &rotationRole)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_REMAP )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) )
    {
#endif
      obj->remap( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) );
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

void QItemModelScatterDataProxySlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONITEMMODELCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "itemModelChanged(QAbstractItemModel*)", "itemModelChanged(QAbstractItemModel*)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "rotationRoleChanged(QString)", "rotationRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLEPATTERNCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "rotationRolePatternChanged(QRegExp)", "rotationRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLEREPLACECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "rotationRoleReplaceChanged(QString)", "rotationRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "xPosRoleChanged(QString)", "xPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLEPATTERNCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "xPosRolePatternChanged(QRegExp)", "xPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLEREPLACECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "xPosRoleReplaceChanged(QString)", "xPosRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "yPosRoleChanged(QString)", "yPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLEPATTERNCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "yPosRolePatternChanged(QRegExp)", "yPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLEREPLACECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "yPosRoleReplaceChanged(QString)", "yPosRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "zPosRoleChanged(QString)", "zPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLEPATTERNCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "zPosRolePatternChanged(QRegExp)", "zPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLEREPLACECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "zPosRoleReplaceChanged(QString)", "zPosRoleReplaceChanged(QString)" );
}

#pragma ENDDUMP
