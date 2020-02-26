/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraExposureControlSlots.h"

QCameraExposureControlSlots::QCameraExposureControlSlots(QObject *parent) : QObject(parent)
{
}

QCameraExposureControlSlots::~QCameraExposureControlSlots()
{
}
void QCameraExposureControlSlots::actualValueChanged( int parameter )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actualValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCAMERAEXPOSURECONTROL" );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}
void QCameraExposureControlSlots::parameterRangeChanged( int parameter )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "parameterRangeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCAMERAEXPOSURECONTROL" );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}
void QCameraExposureControlSlots::requestedValueChanged( int parameter )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCAMERAEXPOSURECONTROL" );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

void QCameraExposureControlSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QCameraExposureControlSlots * s = QCoreApplication::instance()->findChild<QCameraExposureControlSlots *>();

    if( s == NULL )
    {
      s = new QCameraExposureControlSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
