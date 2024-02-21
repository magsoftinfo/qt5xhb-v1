/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSENSORGESTUREMANAGERSLOTS_H
#define QSENSORGESTUREMANAGERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QSensorGestureManager>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QSensorGestureManagerSlots : public QObject
{
  Q_OBJECT
public:
  QSensorGestureManagerSlots(QObject *parent = 0);
  ~QSensorGestureManagerSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void newSensorGestureAvailable();
#endif
};

#endif /* QSENSORGESTUREMANAGERSLOTS_H */
