/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "Q3DBarsSlots.h"

Q3DBarsSlots::Q3DBarsSlots( QObject *parent ) : QObject( parent )
{
}

Q3DBarsSlots::~Q3DBarsSlots()
{
}

void Q3DBarsSlots::barSpacingChanged( const QSizeF & spacing )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "barSpacingChanged(QSizeF)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM pspacing = Qt5xHb::Signals_return_object( (void *) &spacing, "QSIZEF" );

    hb_vmEvalBlockV( cb, 2, psender, pspacing );

    hb_itemRelease( psender );
    hb_itemRelease( pspacing );
  }
}

void Q3DBarsSlots::barSpacingRelativeChanged( bool relative )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "barSpacingRelativeChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM prelative = hb_itemPutL( NULL, relative );

    hb_vmEvalBlockV( cb, 2, psender, prelative );

    hb_itemRelease( psender );
    hb_itemRelease( prelative );
  }
}

void Q3DBarsSlots::barThicknessChanged( float thicknessRatio )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "barThicknessChanged(float)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM pthicknessRatio = hb_itemPutND( NULL, thicknessRatio );

    hb_vmEvalBlockV( cb, 2, psender, pthicknessRatio );

    hb_itemRelease( psender );
    hb_itemRelease( pthicknessRatio );
  }
}

void Q3DBarsSlots::columnAxisChanged( QCategory3DAxis * axis )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnAxisChanged(QCategory3DAxis*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM paxis = Qt5xHb::Signals_return_qobject( (QObject *) axis, "QCATEGORY3DAXIS" );

    hb_vmEvalBlockV( cb, 2, psender, paxis );

    hb_itemRelease( psender );
    hb_itemRelease( paxis );
  }
}

void Q3DBarsSlots::floorLevelChanged( float level )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "floorLevelChanged(float)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM plevel = hb_itemPutND( NULL, level );

    hb_vmEvalBlockV( cb, 2, psender, plevel );

    hb_itemRelease( psender );
    hb_itemRelease( plevel );
  }
}

void Q3DBarsSlots::multiSeriesUniformChanged( bool uniform )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "multiSeriesUniformChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM puniform = hb_itemPutL( NULL, uniform );

    hb_vmEvalBlockV( cb, 2, psender, puniform );

    hb_itemRelease( psender );
    hb_itemRelease( puniform );
  }
}

void Q3DBarsSlots::primarySeriesChanged( QBar3DSeries * series )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "primarySeriesChanged(QBar3DSeries*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM pseries = Qt5xHb::Signals_return_qobject( (QObject *) series, "QBAR3DSERIES" );

    hb_vmEvalBlockV( cb, 2, psender, pseries );

    hb_itemRelease( psender );
    hb_itemRelease( pseries );
  }
}

void Q3DBarsSlots::rowAxisChanged( QCategory3DAxis * axis )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowAxisChanged(QCategory3DAxis*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM paxis = Qt5xHb::Signals_return_qobject( (QObject *) axis, "QCATEGORY3DAXIS" );

    hb_vmEvalBlockV( cb, 2, psender, paxis );

    hb_itemRelease( psender );
    hb_itemRelease( paxis );
  }
}

void Q3DBarsSlots::selectedSeriesChanged( QBar3DSeries * series )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "selectedSeriesChanged(QBar3DSeries*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM pseries = Qt5xHb::Signals_return_qobject( (QObject *) series, "QBAR3DSERIES" );

    hb_vmEvalBlockV( cb, 2, psender, pseries );

    hb_itemRelease( psender );
    hb_itemRelease( pseries );
  }
}

void Q3DBarsSlots::valueAxisChanged( QValue3DAxis * axis )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "valueAxisChanged(QValue3DAxis*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "Q3DBARS" );
    PHB_ITEM paxis = Qt5xHb::Signals_return_qobject( (QObject *) axis, "QVALUE3DAXIS" );

    hb_vmEvalBlockV( cb, 2, psender, paxis );

    hb_itemRelease( psender );
    hb_itemRelease( paxis );
  }
}

void Q3DBarsSlots_connect_signal( const QString & signal, const QString & slot )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Q3DBarsSlots * s = QCoreApplication::instance()->findChild<Q3DBarsSlots *>();

    if( s == NULL )
    {
      s = new Q3DBarsSlots();
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
