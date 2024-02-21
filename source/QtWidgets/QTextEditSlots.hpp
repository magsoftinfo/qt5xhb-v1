/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTEXTEDITSLOTS_H
#define QTEXTEDITSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QTextEdit>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QTextEditSlots: public QObject
{
  Q_OBJECT
  public:
  QTextEditSlots( QObject *parent = 0 );
  ~QTextEditSlots();
  public slots:
  void copyAvailable( bool yes );
  void currentCharFormatChanged( const QTextCharFormat & f );
  void cursorPositionChanged();
  void redoAvailable( bool available );
  void selectionChanged();
  void textChanged();
  void undoAvailable( bool available );
};

#endif /* QTEXTEDITSLOTS_H */
