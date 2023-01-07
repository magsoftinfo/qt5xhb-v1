/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSqlTableModelSlots.h"

QSqlTableModelSlots::QSqlTableModelSlots( QObject *parent ) : QObject( parent )
{
}

QSqlTableModelSlots::~QSqlTableModelSlots()
{
}

void QSqlTableModelSlots::beforeDelete( int row )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "beforeDelete(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSQLTABLEMODEL");
    PHB_ITEM prow = hb_itemPutNI( NULL, row );

    hb_vmEvalBlockV( cb, 2, psender, prow );

    hb_itemRelease( psender );
    hb_itemRelease( prow );
  }
}

void QSqlTableModelSlots::beforeInsert( QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "beforeInsert(QSqlRecord)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSQLTABLEMODEL");
    PHB_ITEM precord = Qt5xHb::Signals_return_object( (void *) &record, "QSQLRECORD" );

    hb_vmEvalBlockV( cb, 2, psender, precord );

    hb_itemRelease( psender );
    hb_itemRelease( precord );
  }
}

void QSqlTableModelSlots::beforeUpdate( int row, QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "beforeUpdate(int,QSqlRecord)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSQLTABLEMODEL");
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM precord = Qt5xHb::Signals_return_object( (void *) &record, "QSQLRECORD" );

    hb_vmEvalBlockV( cb, 3, psender, prow, precord );

    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( precord );
  }
}

void QSqlTableModelSlots::primeInsert( int row, QSqlRecord & record )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "primeInsert(int,QSqlRecord)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSQLTABLEMODEL");
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM precord = Qt5xHb::Signals_return_object( (void *) &record, "QSQLRECORD" );

    hb_vmEvalBlockV( cb, 3, psender, prow, precord );

    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( precord );
  }
}

void QSqlTableModelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSqlTableModel * obj = (QSqlTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlTableModelSlots * s = QCoreApplication::instance()->findChild<QSqlTableModelSlots *>();

    if( s == NULL )
    {
      s = new QSqlTableModelSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
