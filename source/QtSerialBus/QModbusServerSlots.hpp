//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QMODBUSSERVERSLOTS_H
#define QMODBUSSERVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtSerialBus/QModbusServer>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QModbusServerSlots : public QObject
{
  Q_OBJECT
public:
  QModbusServerSlots(QObject *parent = 0);
  ~QModbusServerSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void dataWritten(QModbusDataUnit::RegisterType table, int address, int size);
#endif
};

#endif // QMODBUSSERVERSLOTS_H
