/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDESKTOPWIDGETSLOTS_H
#define QDESKTOPWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QDesktopWidget>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QDesktopWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QDesktopWidgetSlots( QObject *parent = 0 );
  ~QDesktopWidgetSlots();
  public slots:
  void resized( int screen );
  void screenCountChanged( int newCount );
  void workAreaResized( int screen );
};

#endif /* QDESKTOPWIDGETSLOTS_H */
