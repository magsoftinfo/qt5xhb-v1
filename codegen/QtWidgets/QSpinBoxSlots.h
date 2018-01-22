%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSpinBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSpinBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQSpinBox(QObject *parent = 0);
  ~SlotsQSpinBox();
  public slots:
  void valueChanged ( int value );
  void valueChanged ( const QString & text );
};
