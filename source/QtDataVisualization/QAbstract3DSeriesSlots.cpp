/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstract3DSeriesSlots.h"

QAbstract3DSeriesSlots::QAbstract3DSeriesSlots( QObject *parent ) : QObject( parent )
{
}

QAbstract3DSeriesSlots::~QAbstract3DSeriesSlots()
{
}

void QAbstract3DSeriesSlots::baseColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "baseColorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

void QAbstract3DSeriesSlots::baseGradientChanged( const QLinearGradient & gradient )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "baseGradientChanged(QLinearGradient)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pgradient = Qt5xHb::Signals_return_object( (void *) &gradient, "QLINEARGRADIENT" );

    hb_vmEvalBlockV( cb, 2, psender, pgradient );

    hb_itemRelease( psender );
    hb_itemRelease( pgradient );
  }
}

void QAbstract3DSeriesSlots::colorStyleChanged( Q3DTheme::ColorStyle style )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "colorStyleChanged(Q3DTheme::ColorStyle)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pstyle = hb_itemPutNI( NULL, (int) style );

    hb_vmEvalBlockV( cb, 2, psender, pstyle );

    hb_itemRelease( psender );
    hb_itemRelease( pstyle );
  }
}

void QAbstract3DSeriesSlots::itemLabelChanged( const QString & label )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "itemLabelChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM plabel = hb_itemPutC( NULL, QSTRINGTOSTRING(label) );

    hb_vmEvalBlockV( cb, 2, psender, plabel );

    hb_itemRelease( psender );
    hb_itemRelease( plabel );
  }
}

void QAbstract3DSeriesSlots::itemLabelFormatChanged( const QString & format )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "itemLabelFormatChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pformat = hb_itemPutC( NULL, QSTRINGTOSTRING(format) );

    hb_vmEvalBlockV( cb, 2, psender, pformat );

    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}

void QAbstract3DSeriesSlots::itemLabelVisibilityChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "itemLabelVisibilityChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, psender, pvisible );

    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QAbstract3DSeriesSlots::meshChanged( QAbstract3DSeries::Mesh mesh )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "meshChanged(QAbstract3DSeries::Mesh)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pmesh = hb_itemPutNI( NULL, (int) mesh );

    hb_vmEvalBlockV( cb, 2, psender, pmesh );

    hb_itemRelease( psender );
    hb_itemRelease( pmesh );
  }
}

void QAbstract3DSeriesSlots::meshRotationChanged( const QQuaternion & rotation )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "meshRotationChanged(QQuaternion)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM protation = Qt5xHb::Signals_return_object( (void *) &rotation, "QQUATERNION" );

    hb_vmEvalBlockV( cb, 2, psender, protation );

    hb_itemRelease( psender );
    hb_itemRelease( protation );
  }
}

void QAbstract3DSeriesSlots::meshSmoothChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "meshSmoothChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );

    hb_vmEvalBlockV( cb, 2, psender, penabled );

    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QAbstract3DSeriesSlots::multiHighlightColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "multiHighlightColorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

void QAbstract3DSeriesSlots::multiHighlightGradientChanged( const QLinearGradient & gradient )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "multiHighlightGradientChanged(QLinearGradient)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pgradient = Qt5xHb::Signals_return_object( (void *) &gradient, "QLINEARGRADIENT" );

    hb_vmEvalBlockV( cb, 2, psender, pgradient );

    hb_itemRelease( psender );
    hb_itemRelease( pgradient );
  }
}

void QAbstract3DSeriesSlots::nameChanged( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "nameChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );

    hb_vmEvalBlockV( cb, 2, psender, pname );

    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void QAbstract3DSeriesSlots::singleHighlightColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "singleHighlightColorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

void QAbstract3DSeriesSlots::singleHighlightGradientChanged( const QLinearGradient & gradient )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "singleHighlightGradientChanged(QLinearGradient)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pgradient = Qt5xHb::Signals_return_object( (void *) &gradient, "QLINEARGRADIENT" );

    hb_vmEvalBlockV( cb, 2, psender, pgradient );

    hb_itemRelease( psender );
    hb_itemRelease( pgradient );
  }
}

void QAbstract3DSeriesSlots::userDefinedMeshChanged( const QString & fileName )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "userDefinedMeshChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pfileName = hb_itemPutC( NULL, QSTRINGTOSTRING(fileName) );

    hb_vmEvalBlockV( cb, 2, psender, pfileName );

    hb_itemRelease( psender );
    hb_itemRelease( pfileName );
  }
}

void QAbstract3DSeriesSlots::visibilityChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "visibilityChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACT3DSERIES" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, psender, pvisible );

    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QAbstract3DSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstract3DSeriesSlots * s = QCoreApplication::instance()->findChild<QAbstract3DSeriesSlots *>();

    if( s == NULL )
    {
      s = new QAbstract3DSeriesSlots();
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
