/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QQmlExpressionSlots.hpp"

QQmlExpressionSlots::QQmlExpressionSlots( QObject *parent ) : QObject( parent )
{
}

QQmlExpressionSlots::~QQmlExpressionSlots()
{
}

void QQmlExpressionSlots::valueChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "valueChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QQMLEXPRESSION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QQmlExpressionSlots_connect_signal(const QString & signal, const QString & slot)
{
  QQmlExpression * obj = (QQmlExpression *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QQmlExpressionSlots * s = QCoreApplication::instance()->findChild<QQmlExpressionSlots*>();

    if( s == NULL )
    {
      s = new QQmlExpressionSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
