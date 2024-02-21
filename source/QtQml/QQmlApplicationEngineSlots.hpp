/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QQMLAPPLICATIONENGINESLOTS_H
#define QQMLAPPLICATIONENGINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtQml/QQmlApplicationEngine>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QQmlApplicationEngineSlots : public QObject
{
  Q_OBJECT
public:
  QQmlApplicationEngineSlots(QObject *parent = 0);
  ~QQmlApplicationEngineSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void objectCreated(QObject *obj, const QUrl &url);
#endif
};

#endif /* QQMLAPPLICATIONENGINESLOTS_H */
