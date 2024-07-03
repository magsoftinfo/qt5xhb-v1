//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QModbusDeviceSlots.hpp"

QModbusDeviceSlots::QModbusDeviceSlots(QObject *parent) : QObject(parent)
{
}

QModbusDeviceSlots::~QModbusDeviceSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
void QModbusDeviceSlots::errorOccurred(QModbusDevice::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "errorOccurred(QModbusDevice::Error)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMODBUSDEVICE");
    PHB_ITEM perror = hb_itemPutNI(NULL, static_cast<int>(error));

    hb_vmEvalBlockV(cb, 2, psender, perror);

    hb_itemRelease(psender);
    hb_itemRelease(perror);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
void QModbusDeviceSlots::stateChanged(QModbusDevice::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QModbusDevice::State)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMODBUSDEVICE");
    PHB_ITEM pstate = hb_itemPutNI(NULL, static_cast<int>(state));

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease(pstate);
  }
}
#endif

void QModbusDeviceSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QModbusDevice *obj = (QModbusDevice *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QModbusDeviceSlots *s = QCoreApplication::instance()->findChild<QModbusDeviceSlots *>();

    if (s == NULL)
    {
      s = new QModbusDeviceSlots();
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
