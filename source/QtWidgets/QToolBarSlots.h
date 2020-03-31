/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTOOLBARSLOTS_H
#define QTOOLBARSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QToolBar>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QToolBarSlots: public QObject
{
  Q_OBJECT
  public:
  QToolBarSlots(QObject *parent = 0);
  ~QToolBarSlots();
  public slots:
  void actionTriggered( QAction * action );
  void allowedAreasChanged( Qt::ToolBarAreas allowedAreas );
  void iconSizeChanged( const QSize & iconSize );
  void movableChanged( bool movable );
  void orientationChanged( Qt::Orientation orientation );
  void toolButtonStyleChanged( Qt::ToolButtonStyle toolButtonStyle );
  void topLevelChanged( bool topLevel );
  void visibilityChanged( bool visible );
};

#endif /* QTOOLBARSLOTS_H */
