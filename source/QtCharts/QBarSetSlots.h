/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBARSETSLOTS_H
#define QBARSETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBarSet>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class QBarSetSlots: public QObject
{
  Q_OBJECT
  public:
  QBarSetSlots(QObject *parent = 0);
  ~QBarSetSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void borderColorChanged( QColor color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void brushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void clicked( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void colorChanged( QColor color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void doubleClicked( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void hovered( bool status, int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelBrushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelColorChanged( QColor color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelFontChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void penChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pressed( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void released( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void valueChanged( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void valuesAdded( int index, int count );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void valuesRemoved( int index, int count );
#endif
};

#endif /* QBARSETSLOTS_H */
