/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAREASERIESSLOTS_H
#define QAREASERIESSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAreaSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class QAreaSeriesSlots: public QObject
{
  Q_OBJECT
  public:
  QAreaSeriesSlots(QObject *parent = 0);
  ~QAreaSeriesSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void borderColorChanged( QColor color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void clicked( const QPointF & point );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void colorChanged( QColor color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void doubleClicked( const QPointF & point );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void hovered( const QPointF & point, bool state );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsClippingChanged( bool clipping );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsColorChanged( const QColor & color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsFontChanged( const QFont & font );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsFormatChanged( const QString & format );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsVisibilityChanged( bool visible );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pressed( const QPointF & point );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void released( const QPointF & point );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void selected();
#endif
};

#endif /* QAREASERIESSLOTS_H */
