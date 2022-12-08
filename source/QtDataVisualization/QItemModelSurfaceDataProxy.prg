/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QREGEXP
#endif

CLASS QItemModelSurfaceDataProxy INHERIT QSurfaceDataProxy

   METHOD new
   METHOD delete
   METHOD itemModel
   METHOD setItemModel
   METHOD rowRole
   METHOD setRowRole
   METHOD columnRole
   METHOD setColumnRole
   METHOD xPosRole
   METHOD setXPosRole
   METHOD yPosRole
   METHOD setYPosRole
   METHOD zPosRole
   METHOD setZPosRole
   METHOD rowCategories
   METHOD setRowCategories
   METHOD columnCategories
   METHOD setColumnCategories
   METHOD useModelCategories
   METHOD setUseModelCategories
   METHOD autoRowCategories
   METHOD setAutoRowCategories
   METHOD autoColumnCategories
   METHOD setAutoColumnCategories
   METHOD rowRolePattern
   METHOD setRowRolePattern
   METHOD columnRolePattern
   METHOD setColumnRolePattern
   METHOD xPosRolePattern
   METHOD setXPosRolePattern
   METHOD yPosRolePattern
   METHOD setYPosRolePattern
   METHOD zPosRolePattern
   METHOD setZPosRolePattern
   METHOD rowRoleReplace
   METHOD setRowRoleReplace
   METHOD columnRoleReplace
   METHOD setColumnRoleReplace
   METHOD xPosRoleReplace
   METHOD setXPosRoleReplace
   METHOD yPosRoleReplace
   METHOD setYPosRoleReplace
   METHOD zPosRoleReplace
   METHOD setZPosRoleReplace
   METHOD multiMatchBehavior
   METHOD setMultiMatchBehavior
   METHOD remap
   METHOD rowCategoryIndex
   METHOD columnCategoryIndex

   METHOD onAutoColumnCategoriesChanged
   METHOD onAutoRowCategoriesChanged
   METHOD onColumnCategoriesChanged
   METHOD onColumnRoleChanged
   METHOD onColumnRolePatternChanged
   METHOD onColumnRoleReplaceChanged
   METHOD onItemModelChanged
   METHOD onMultiMatchBehaviorChanged
   METHOD onRowCategoriesChanged
   METHOD onRowRoleChanged
   METHOD onRowRolePatternChanged
   METHOD onRowRoleReplaceChanged
   METHOD onUseModelCategoriesChanged
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

PROCEDURE destroyObject() CLASS QItemModelSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QItemModelSurfaceDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QItemModelSurfaceDataProxy>
#endif

using namespace QtDataVisualization;

/*
QItemModelSurfaceDataProxy( QObject * parent = nullptr )
*/
void QItemModelSurfaceDataProxy_new1()
{
  QItemModelSurfaceDataProxy * obj = new QItemModelSurfaceDataProxy( OPQOBJECT(1,nullptr) );
  Qt5xHb::returnNewObject(obj, false);
}

/*
QItemModelSurfaceDataProxy( QAbstractItemModel * itemModel, QObject * parent = nullptr )
*/
void QItemModelSurfaceDataProxy_new2()
{
  QItemModelSurfaceDataProxy * obj = new QItemModelSurfaceDataProxy( PQABSTRACTITEMMODEL(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject(obj, false);
}

/*
QItemModelSurfaceDataProxy( QAbstractItemModel * itemModel, const QString & yPosRole, QObject * parent = nullptr )
*/
void QItemModelSurfaceDataProxy_new3()
{
  QItemModelSurfaceDataProxy * obj = new QItemModelSurfaceDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), OPQOBJECT(3,nullptr) );
  Qt5xHb::returnNewObject(obj, false);
}

/*
QItemModelSurfaceDataProxy( QAbstractItemModel * itemModel, const QString & rowRole, const QString & columnRole, const QString & yPosRole, QObject * parent = nullptr )
*/
void QItemModelSurfaceDataProxy_new4()
{
  QItemModelSurfaceDataProxy * obj = new QItemModelSurfaceDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), OPQOBJECT(5,nullptr) );
  Qt5xHb::returnNewObject(obj, false);
}

/*
QItemModelSurfaceDataProxy( QAbstractItemModel * itemModel, const QString & rowRole, const QString & columnRole, const QString & xPosRole, const QString & yPosRole, const QString & zPosRole, QObject * parent = nullptr )
*/
void QItemModelSurfaceDataProxy_new5()
{
  QItemModelSurfaceDataProxy * obj = new QItemModelSurfaceDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQSTRING(6), OPQOBJECT(7,nullptr) );
  Qt5xHb::returnNewObject(obj, false);
}

/*
QItemModelSurfaceDataProxy( QAbstractItemModel * itemModel, const QString & rowRole, const QString & columnRole, const QString & yPosRole, const QStringList & rowCategories, const QStringList & columnCategories, QObject * parent = nullptr )
*/
void QItemModelSurfaceDataProxy_new6()
{
  QItemModelSurfaceDataProxy * obj = new QItemModelSurfaceDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRINGLIST(6), OPQOBJECT(7,nullptr) );
  Qt5xHb::returnNewObject(obj, false);
}

/*
QItemModelSurfaceDataProxy( QAbstractItemModel * itemModel, const QString & rowRole, const QString & columnRole, const QString & xPosRole, const QString & yPosRole, const QString & zPosRole, const QStringList & rowCategories, const QStringList & columnCategories, QObject * parent = nullptr )
*/
void QItemModelSurfaceDataProxy_new7()
{
  QItemModelSurfaceDataProxy * obj = new QItemModelSurfaceDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQSTRING(6), PQSTRINGLIST(7), PQSTRINGLIST(8), OPQOBJECT(9,nullptr) );
  Qt5xHb::returnNewObject(obj, false);
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QItemModelSurfaceDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    QItemModelSurfaceDataProxy_new2();
  }
  else if( ISBETWEEN(2,3) && ISQABSTRACTITEMMODEL(1) && HB_ISCHAR(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    QItemModelSurfaceDataProxy_new3();
  }
  else if( ISBETWEEN(4,5) && ISQABSTRACTITEMMODEL(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && (ISQOBJECT(5)||HB_ISNIL(5)) )
  {
    QItemModelSurfaceDataProxy_new4();
  }
  else if( ISBETWEEN(6,7) && ISQABSTRACTITEMMODEL(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISCHAR(5) && HB_ISCHAR(6) && (ISQOBJECT(7)||HB_ISNIL(7)) )
  {
    QItemModelSurfaceDataProxy_new5();
  }
  else if( ISBETWEEN(6,7) && ISQABSTRACTITEMMODEL(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISARRAY(5) && HB_ISARRAY(6) && (ISQOBJECT(7)||HB_ISNIL(7)) )
  {
    QItemModelSurfaceDataProxy_new6();
  }
  else if( ISBETWEEN(8,9) && ISQABSTRACTITEMMODEL(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISCHAR(5) && HB_ISCHAR(6) && HB_ISARRAY(7) && HB_ISARRAY(8) && (ISQOBJECT(9)||HB_ISNIL(9)) )
  {
    QItemModelSurfaceDataProxy_new7();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QItemModelSurfaceDataProxy()
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_DELETE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
QAbstractItemModel * itemModel() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ITEMMODEL )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setItemModel( QAbstractItemModel * itemModel )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETITEMMODEL )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString rowRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rowRole() );
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
void setRowRole( const QString & role )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETROWROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setRowRole( PQSTRING(1) );
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
QString columnRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->columnRole() );
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
void setColumnRole( const QString & role )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETCOLUMNROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setColumnRole( PQSTRING(1) );
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
QString xPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_XPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setXPosRole( const QString & role )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETXPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setXPosRole( PQSTRING(1) );
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
QString yPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_YPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setYPosRole( const QString & role )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETYPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setYPosRole( PQSTRING(1) );
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
QString zPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ZPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setZPosRole( const QString & role )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETZPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setZPosRole( PQSTRING(1) );
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
QStringList rowCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->rowCategories() );
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
void setRowCategories( const QStringList & categories )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETROWCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setRowCategories( PQSTRINGLIST(1) );
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
QStringList columnCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->columnCategories() );
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
void setColumnCategories( const QStringList & categories )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETCOLUMNCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setColumnCategories( PQSTRINGLIST(1) );
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
bool useModelCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_USEMODELCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->useModelCategories() );
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
void setUseModelCategories( bool enable )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETUSEMODELCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setUseModelCategories( PBOOL(1) );
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
bool autoRowCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_AUTOROWCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoRowCategories() );
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
void setAutoRowCategories( bool enable )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETAUTOROWCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setAutoRowCategories( PBOOL(1) );
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
bool autoColumnCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_AUTOCOLUMNCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoColumnCategories() );
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
void setAutoColumnCategories( bool enable )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETAUTOCOLUMNCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setAutoColumnCategories( PBOOL(1) );
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
QRegExp rowRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->rowRolePattern() );
      Qt5xHb::createReturnClass(ptr, "QREGEXP", true);
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
void setRowRolePattern( const QRegExp & pattern )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETROWROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setRowRolePattern( *PQREGEXP(1) );
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
QRegExp columnRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->columnRolePattern() );
      Qt5xHb::createReturnClass(ptr, "QREGEXP", true);
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
void setColumnRolePattern( const QRegExp & pattern )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETCOLUMNROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setColumnRolePattern( *PQREGEXP(1) );
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
QRegExp xPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_XPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->xPosRolePattern() );
      Qt5xHb::createReturnClass(ptr, "QREGEXP", true);
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
void setXPosRolePattern( const QRegExp & pattern )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETXPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRegExp yPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_YPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->yPosRolePattern() );
      Qt5xHb::createReturnClass(ptr, "QREGEXP", true);
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
void setYPosRolePattern( const QRegExp & pattern )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETYPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRegExp zPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ZPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->zPosRolePattern() );
      Qt5xHb::createReturnClass(ptr, "QREGEXP", true);
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
void setZPosRolePattern( const QRegExp & pattern )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETZPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString rowRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rowRoleReplace() );
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
void setRowRoleReplace( const QString & replace )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETROWROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setRowRoleReplace( PQSTRING(1) );
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
QString columnRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->columnRoleReplace() );
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
void setColumnRoleReplace( const QString & replace )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETCOLUMNROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setColumnRoleReplace( PQSTRING(1) );
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
QString xPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_XPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setXPosRoleReplace( const QString & replace )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETXPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setXPosRoleReplace( PQSTRING(1) );
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
QString yPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_YPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setYPosRoleReplace( const QString & replace )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETYPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setYPosRoleReplace( PQSTRING(1) );
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
QString zPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ZPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setZPosRoleReplace( const QString & replace )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETZPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setZPosRoleReplace( PQSTRING(1) );
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
QItemModelSurfaceDataProxy::MultiMatchBehavior multiMatchBehavior() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_MULTIMATCHBEHAVIOR )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->multiMatchBehavior() );
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
void setMultiMatchBehavior( QItemModelSurfaceDataProxy::MultiMatchBehavior behavior )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETMULTIMATCHBEHAVIOR )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMultiMatchBehavior( (QItemModelSurfaceDataProxy::MultiMatchBehavior) hb_parni(1) );
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
void remap( const QString & rowRole, const QString & columnRole, const QString & xPosRole, const QString & yPosRole, const QString & zPosRole, const QStringList & rowCategories, const QStringList & columnCategories )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_REMAP )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(7) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISCHAR(5) && HB_ISARRAY(6) && HB_ISARRAY(7) )
    {
#endif
      obj->remap( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQSTRINGLIST(6), PQSTRINGLIST(7) );
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
Q_INVOKABLE int rowCategoryIndex( const QString & category )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWCATEGORYINDEX )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RINT( obj->rowCategoryIndex( PQSTRING(1) ) );
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
Q_INVOKABLE int columnCategoryIndex( const QString & category )
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNCATEGORYINDEX )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RINT( obj->columnCategoryIndex( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QItemModelSurfaceDataProxySlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONAUTOCOLUMNCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "autoColumnCategoriesChanged(bool)", "autoColumnCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONAUTOROWCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "autoRowCategoriesChanged(bool)", "autoRowCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONCOLUMNCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "columnCategoriesChanged()", "columnCategoriesChanged()" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONCOLUMNROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "columnRoleChanged(QString)", "columnRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONCOLUMNROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "columnRolePatternChanged(QRegExp)", "columnRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONCOLUMNROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "columnRoleReplaceChanged(QString)", "columnRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONITEMMODELCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "itemModelChanged(QAbstractItemModel*)", "itemModelChanged(QAbstractItemModel*)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONMULTIMATCHBEHAVIORCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "multiMatchBehaviorChanged(QItemModelSurfaceDataProxy::MultiMatchBehavior)", "multiMatchBehaviorChanged(QItemModelSurfaceDataProxy::MultiMatchBehavior)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONROWCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "rowCategoriesChanged()", "rowCategoriesChanged()" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONROWROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "rowRoleChanged(QString)", "rowRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONROWROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "rowRolePatternChanged(QRegExp)", "rowRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONROWROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "rowRoleReplaceChanged(QString)", "rowRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONUSEMODELCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "useModelCategoriesChanged(bool)", "useModelCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONXPOSROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "xPosRoleChanged(QString)", "xPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONXPOSROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "xPosRolePatternChanged(QRegExp)", "xPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONXPOSROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "xPosRoleReplaceChanged(QString)", "xPosRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONYPOSROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "yPosRoleChanged(QString)", "yPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONYPOSROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "yPosRolePatternChanged(QRegExp)", "yPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONYPOSROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "yPosRoleReplaceChanged(QString)", "yPosRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONZPOSROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "zPosRoleChanged(QString)", "zPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONZPOSROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "zPosRolePatternChanged(QRegExp)", "zPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONZPOSROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "zPosRoleReplaceChanged(QString)", "zPosRoleReplaceChanged(QString)" );
}

#pragma ENDDUMP
