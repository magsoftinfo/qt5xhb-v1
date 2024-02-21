/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFontDialogSlots.hpp"

QFontDialogSlots::QFontDialogSlots( QObject *parent ) : QObject( parent )
{
}

QFontDialogSlots::~QFontDialogSlots()
{
}

void QFontDialogSlots::currentFontChanged( const QFont & font )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "currentFontChanged(QFont)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QFONTDIALOG");
    PHB_ITEM pfont = Qt5xHb::Signals_return_object( (void *) &font, "QFONT");

    hb_vmEvalBlockV(cb, 2, psender, pfont);

    hb_itemRelease(psender);
    hb_itemRelease( pfont );
  }
}

void QFontDialogSlots::fontSelected( const QFont & font )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "fontSelected(QFont)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QFONTDIALOG");
    PHB_ITEM pfont = Qt5xHb::Signals_return_object( (void *) &font, "QFONT");

    hb_vmEvalBlockV(cb, 2, psender, pfont);

    hb_itemRelease(psender);
    hb_itemRelease( pfont );
  }
}

void QFontDialogSlots_connect_signal(const QString & signal, const QString & slot)
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QFontDialogSlots * s = QCoreApplication::instance()->findChild<QFontDialogSlots*>();

    if( s == NULL )
    {
      s = new QFontDialogSlots();
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
