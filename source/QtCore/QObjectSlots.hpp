/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QOBJECTSLOTS_H
#define QOBJECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QObject>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QObjectSlots : public QObject
{
  Q_OBJECT
public:
  QObjectSlots(QObject *parent = 0);
  ~QObjectSlots();
public slots:
  void destroyed(QObject *obj = 0);
  void objectNameChanged(const QString &objectName);
};

#endif /* QOBJECTSLOTS_H */
