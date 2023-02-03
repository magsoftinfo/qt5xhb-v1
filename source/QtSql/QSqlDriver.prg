/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLRECORD
REQUEST QSQLRESULT
REQUEST QVARIANT
#endif

CLASS QSqlDriver INHERIT QObject

   METHOD delete
   METHOD beginTransaction
   METHOD close
   METHOD commitTransaction
   METHOD createResult
   METHOD escapeIdentifier
   METHOD formatValue
   METHOD handle
   METHOD hasFeature
   METHOD isIdentifierEscaped
   METHOD isOpen
   METHOD isOpenError
   METHOD lastError
   METHOD numericalPrecisionPolicy
   METHOD open
   METHOD primaryIndex
   METHOD record
   METHOD rollbackTransaction
   METHOD setNumericalPrecisionPolicy
   METHOD sqlStatement
   METHOD stripDelimiters
   METHOD subscribeToNotification
   METHOD subscribedToNotifications
   METHOD tables
   METHOD unsubscribeFromNotification
   METHOD cancelQuery

   METHOD onNotification1
   METHOD onNotification2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlDriver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QSqlDriver>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtSql/QSqlDriver>
#endif

#include <QtSql/QSqlError>
#include <QtSql/QSqlIndex>
#include <QtSql/QSqlRecord>
#include <QtCore/QVariant>

HB_FUNC_STATIC( QSQLDRIVER_DELETE )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual bool beginTransaction()
*/
HB_FUNC_STATIC( QSQLDRIVER_BEGINTRANSACTION )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->beginTransaction() );
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
virtual void close() = 0
*/
HB_FUNC_STATIC( QSQLDRIVER_CLOSE )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
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
virtual bool commitTransaction()
*/
HB_FUNC_STATIC( QSQLDRIVER_COMMITTRANSACTION )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->commitTransaction() );
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
virtual QSqlResult * createResult() const = 0
*/
HB_FUNC_STATIC( QSQLDRIVER_CREATERESULT )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSqlResult * ptr = obj->createResult();
      Qt5xHb::createReturnClass(ptr, "QSQLRESULT", false);
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
virtual QString escapeIdentifier( const QString & identifier, QSqlDriver::IdentifierType type ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_ESCAPEIDENTIFIER )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RQSTRING( obj->escapeIdentifier( PQSTRING(1), (QSqlDriver::IdentifierType) hb_parni(2) ) );
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
virtual QString formatValue( const QSqlField & field, bool trimStrings = false ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_FORMATVALUE )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQSQLFIELD(1) && (HB_ISLOG(2)||HB_ISNIL(2)) )
    {
#endif
      RQSTRING( obj->formatValue( *PQSQLFIELD(1), OPBOOL(2,false) ) );
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
virtual QVariant handle() const
*/
HB_FUNC_STATIC( QSQLDRIVER_HANDLE )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVariant * ptr = new QVariant( obj->handle() );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual bool hasFeature( QSqlDriver::DriverFeature feature ) const = 0
*/
HB_FUNC_STATIC( QSQLDRIVER_HASFEATURE )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->hasFeature( (QSqlDriver::DriverFeature) hb_parni(1) ) );
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
virtual bool isIdentifierEscaped( const QString & identifier, QSqlDriver::IdentifierType type ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_ISIDENTIFIERESCAPED )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->isIdentifierEscaped( PQSTRING(1), (QSqlDriver::IdentifierType) hb_parni(2) ) );
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
virtual bool isOpen() const
*/
HB_FUNC_STATIC( QSQLDRIVER_ISOPEN )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isOpen() );
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
bool isOpenError() const
*/
HB_FUNC_STATIC( QSQLDRIVER_ISOPENERROR )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isOpenError() );
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
QSqlError lastError() const
*/
HB_FUNC_STATIC( QSQLDRIVER_LASTERROR )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSqlError * ptr = new QSqlError( obj->lastError() );
      Qt5xHb::createReturnClass(ptr, "QSQLERROR", true);
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
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const
*/
HB_FUNC_STATIC( QSQLDRIVER_NUMERICALPRECISIONPOLICY )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->numericalPrecisionPolicy() );
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
virtual bool open( const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & options = QString() ) = 0
*/
HB_FUNC_STATIC( QSQLDRIVER_OPEN )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,6) && HB_ISCHAR(1) && (HB_ISCHAR(2)||HB_ISNIL(2)) && (HB_ISCHAR(3)||HB_ISNIL(3)) && (HB_ISCHAR(4)||HB_ISNIL(4)) && (HB_ISNUM(5)||HB_ISNIL(5)) && (HB_ISCHAR(6)||HB_ISNIL(6)) )
    {
#endif
      RBOOL( obj->open( PQSTRING(1), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), OPINT(5,-1), OPQSTRING(6,QString()) ) );
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
virtual QSqlIndex primaryIndex( const QString & tableName ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_PRIMARYINDEX )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QSqlIndex * ptr = new QSqlIndex( obj->primaryIndex( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QSQLINDEX", true);
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
virtual QSqlRecord record( const QString & tableName ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_RECORD )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QSqlRecord * ptr = new QSqlRecord( obj->record( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QSQLRECORD", true);
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
virtual bool rollbackTransaction()
*/
HB_FUNC_STATIC( QSQLDRIVER_ROLLBACKTRANSACTION )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->rollbackTransaction() );
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
void setNumericalPrecisionPolicy( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLDRIVER_SETNUMERICALPRECISIONPOLICY )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setNumericalPrecisionPolicy( (QSql::NumericalPrecisionPolicy) hb_parni(1) );
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
virtual QString sqlStatement( QSqlDriver::StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_SQLSTATEMENT )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISCHAR(2) && ISQSQLRECORD(3) && HB_ISLOG(4) )
    {
#endif
      RQSTRING( obj->sqlStatement( (QSqlDriver::StatementType) hb_parni(1), PQSTRING(2), *PQSQLRECORD(3), PBOOL(4) ) );
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
virtual QString stripDelimiters( const QString & identifier, QSqlDriver::IdentifierType type ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_STRIPDELIMITERS )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RQSTRING( obj->stripDelimiters( PQSTRING(1), (QSqlDriver::IdentifierType) hb_parni(2) ) );
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
virtual bool subscribeToNotification( const QString & name )
*/
HB_FUNC_STATIC( QSQLDRIVER_SUBSCRIBETONOTIFICATION )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->subscribeToNotification( PQSTRING(1) ) );
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
virtual QStringList subscribedToNotifications() const
*/
HB_FUNC_STATIC( QSQLDRIVER_SUBSCRIBEDTONOTIFICATIONS )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->subscribedToNotifications() );
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
virtual QStringList tables( QSql::TableType tableType ) const
*/
HB_FUNC_STATIC( QSQLDRIVER_TABLES )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRINGLIST( obj->tables( (QSql::TableType) hb_parni(1) ) );
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
virtual bool unsubscribeFromNotification( const QString & name )
*/
HB_FUNC_STATIC( QSQLDRIVER_UNSUBSCRIBEFROMNOTIFICATION )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->unsubscribeFromNotification( PQSTRING(1) ) );
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
virtual bool cancelQuery()
*/
HB_FUNC_STATIC( QSQLDRIVER_CANCELQUERY )
{
  QSqlDriver * obj = (QSqlDriver *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->cancelQuery() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QSqlDriverSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QSQLDRIVER_ONNOTIFICATION1 )
{
  QSqlDriverSlots_connect_signal("notification(QString)", "notification(QString)");
}

HB_FUNC_STATIC( QSQLDRIVER_ONNOTIFICATION2 )
{
  QSqlDriverSlots_connect_signal("notification(QString,QSqlDriver::NotificationSource,QVariant)", "notification(QString,QSqlDriver::NotificationSource,QVariant)");
}

#pragma ENDDUMP
