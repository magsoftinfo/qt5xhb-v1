/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QWEBFRAMESLOTS_H
#define QWEBFRAMESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWebKitWidgets/QWebFrame>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QWebFrameSlots: public QObject
{
  Q_OBJECT
  public:
  QWebFrameSlots( QObject *parent = 0 );
  ~QWebFrameSlots();
  public slots:
  void contentsSizeChanged( const QSize & size );
  void iconChanged();
  void initialLayoutCompleted();
  void javaScriptWindowObjectCleared();
  void loadFinished( bool ok );
  void loadStarted();
  void pageChanged();
  void titleChanged( const QString & title );
  void urlChanged( const QUrl & url );
};

#endif /* QWEBFRAMESLOTS_H */
