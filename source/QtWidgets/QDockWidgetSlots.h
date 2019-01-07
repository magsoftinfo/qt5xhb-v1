/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDOCKWIDGETSLOTS_H
#define QDOCKWIDGETSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDockWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QDockWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QDockWidgetSlots(QObject *parent = 0);
  ~QDockWidgetSlots();
  public slots:
  void allowedAreasChanged( Qt::DockWidgetAreas allowedAreas );
  void dockLocationChanged( Qt::DockWidgetArea area );
  void featuresChanged( QDockWidget::DockWidgetFeatures features );
  void topLevelChanged( bool topLevel );
  void visibilityChanged( bool visible );
};

#endif /* QDOCKWIDGETSLOTS_H */
