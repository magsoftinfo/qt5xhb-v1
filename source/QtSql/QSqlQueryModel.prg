/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLERROR
REQUEST QSQLQUERY
REQUEST QSQLRECORD
REQUEST QVARIANT
#endif

CLASS QSqlQueryModel INHERIT QAbstractTableModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD lastError
   METHOD query
   METHOD setQuery
   METHOD record
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD fetchMore
   METHOD headerData
   METHOD setHeaderData
   METHOD insertColumns
   METHOD removeColumns
   METHOD rowCount

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlQueryModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlQueryModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlQueryModel>
#endif

#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>

/*
explicit QSqlQueryModel ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSqlQueryModel * o = new QSqlQueryModel ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QSQLQUERYMODEL_DELETE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual void clear ()
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_CLEAR )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_LASTERROR )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError () );
    _qt5xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}

/*
QSqlQuery query () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_QUERY )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlQuery * ptr = new QSqlQuery( obj->query () );
    _qt5xhb_createReturnClass ( ptr, "QSQLQUERY", true );
  }
}

/*
void setQuery ( const QSqlQuery & query )
*/
void QSqlQueryModel_setQuery1 ()
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlQuery * par1 = (QSqlQuery *) _qt5xhb_itemGetPtr(1);
    obj->setQuery ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
*/
void QSqlQueryModel_setQuery2 ()
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) _qt5xhb_itemGetPtr(2);
    obj->setQuery ( PQSTRING(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setQuery ( const QSqlQuery & query )
//[2]void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )

HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY )
{
  if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQueryModel_setQuery1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQueryModel_setQuery2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSqlRecord record ( int row ) const
*/
void QSqlQueryModel_record1 ()
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}

/*
QSqlRecord record () const
*/
void QSqlQueryModel_record2 ()
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record () );
    _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}

//[1]QSqlRecord record ( int row ) const
//[2]QSqlRecord record () const

HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQueryModel_record1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQueryModel_record2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool canFetchMore ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_CANFETCHMORE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->canFetchMore ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int columnCount ( const QModelIndex & index = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_COLUMNCOUNT )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->columnCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant data ( const QModelIndex & item, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_DATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISOPTNUM(2) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QVariant * ptr = new QVariant( obj->data ( *par1, (int) ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void fetchMore ( const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_FETCHMORE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      obj->fetchMore ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_HEADERDATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      int par2 = hb_parni(2);
      QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) par2, (int) ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_SETHEADERDATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISQVARIANT(3) && ISOPTNUM(4) )
    {
      int par2 = hb_parni(2);
      QVariant * par3 = (QVariant *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->setHeaderData ( PINT(1), (Qt::Orientation) par2, *par3, (int) ISNIL(4)? Qt::EditRole : hb_parni(4) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_INSERTCOLUMNS )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->insertColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_REMOVECOLUMNS )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_ROWCOUNT )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->rowCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
