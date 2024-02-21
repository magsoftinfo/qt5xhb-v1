/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPLAINTEXTEDITSLOTS_H
#define QPLAINTEXTEDITSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QPlainTextEdit>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QPlainTextEditSlots: public QObject
{
  Q_OBJECT
  public:
  QPlainTextEditSlots( QObject *parent = 0 );
  ~QPlainTextEditSlots();
  public slots:
  void blockCountChanged( int newBlockCount );
  void copyAvailable( bool yes );
  void cursorPositionChanged();
  void modificationChanged( bool changed );
  void redoAvailable( bool available );
  void selectionChanged();
  void textChanged();
  void undoAvailable( bool available );
  void updateRequest( const QRect & rect, int dy );
};

#endif /* QPLAINTEXTEDITSLOTS_H */
