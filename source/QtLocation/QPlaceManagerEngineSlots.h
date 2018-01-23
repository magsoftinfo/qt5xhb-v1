/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPLACEMANAGERENGINESLOTS_H
#define QPLACEMANAGERENGINESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceManagerEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQPlaceManagerEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQPlaceManagerEngine(QObject *parent = 0);
  ~SlotsQPlaceManagerEngine();
  public slots:
  void finished(QPlaceReply *reply);
  void error(QPlaceReply * reply, QPlaceReply::Error error, const QString &errorString = QString());
  void placeAdded(const QString &placeId);
  void placeUpdated(const QString &placeId);
  void placeRemoved(const QString &placeId);
  void categoryAdded(const QPlaceCategory &category, const QString &parentCategoryId);
  void categoryUpdated(const QPlaceCategory &category, const QString &parentCategoryId);
  void categoryRemoved(const QString &categoryId, const QString &parentCategoryId);
  void dataChanged();
};

#endif /* QPLACEMANAGERENGINESLOTS_H */
