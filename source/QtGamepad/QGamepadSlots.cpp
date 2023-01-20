/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGamepadSlots.h"

QGamepadSlots::QGamepadSlots( QObject *parent ) : QObject( parent )
{
}

QGamepadSlots::~QGamepadSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::axisLeftXChanged( double value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "axisLeftXChanged(double)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::axisLeftYChanged( double value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "axisLeftYChanged(double)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::axisRightXChanged( double value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "axisRightXChanged(double)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::axisRightYChanged( double value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "axisRightYChanged(double)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonAChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonAChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonBChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonBChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonCenterChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonCenterChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonDownChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonDownChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonGuideChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonGuideChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonL1Changed( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonL1Changed(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonL2Changed( double value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonL2Changed(double)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonL3Changed( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonL3Changed(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonLeftChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonLeftChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonR1Changed( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonR1Changed(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonR2Changed( double value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonR2Changed(double)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonR3Changed( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonR3Changed(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonRightChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonRightChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonSelectChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonSelectChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonStartChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonStartChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonUpChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonUpChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonXChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonXChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::buttonYChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "buttonYChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::connectedChanged( bool value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "connectedChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutL( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::deviceIdChanged( int value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "deviceIdChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadSlots::nameChanged( QString value )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "nameChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGAMEPAD");
    PHB_ITEM pvalue = hb_itemPutC( NULL, value.toLatin1().data() );

    hb_vmEvalBlockV(cb, 2, psender, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease( pvalue );
  }
}
#endif

void QGamepadSlots_connect_signal(const QString & signal, const QString & slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QGamepadSlots * s = QCoreApplication::instance()->findChild<QGamepadSlots*>();

    if( s == NULL )
    {
      s = new QGamepadSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
