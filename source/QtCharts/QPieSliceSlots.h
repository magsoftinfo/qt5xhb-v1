/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPIESLICESLOTS_H
#define QPIESLICESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPieSlice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class QPieSliceSlots: public QObject
{
  Q_OBJECT
  public:
  QPieSliceSlots(QObject *parent = 0);
  ~QPieSliceSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void angleSpanChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void borderColorChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void borderWidthChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void brushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void clicked();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void colorChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void doubleClicked();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void hovered( bool state );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelBrushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelColorChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelFontChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelVisibleChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void penChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void percentageChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pressed();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void released();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void startAngleChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void valueChanged();
#endif
};

#endif /* QPIESLICESLOTS_H */
