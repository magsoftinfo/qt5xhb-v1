/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTextBrowserSlots.hpp"

QTextBrowserSlots::QTextBrowserSlots( QObject *parent ) : QObject( parent )
{
}

QTextBrowserSlots::~QTextBrowserSlots()
{
}

void QTextBrowserSlots::anchorClicked( const QUrl & link )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "anchorClicked(QUrl)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTBROWSER");
    PHB_ITEM plink = Qt5xHb::Signals_return_object( (void *) &link, "QURL");

    hb_vmEvalBlockV(cb, 2, psender, plink);

    hb_itemRelease(psender);
    hb_itemRelease( plink );
  }
}

void QTextBrowserSlots::backwardAvailable( bool available )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "backwardAvailable(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTBROWSER");
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV(cb, 2, psender, pavailable);

    hb_itemRelease(psender);
    hb_itemRelease( pavailable );
  }
}

void QTextBrowserSlots::forwardAvailable( bool available )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "forwardAvailable(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTBROWSER");
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV(cb, 2, psender, pavailable);

    hb_itemRelease(psender);
    hb_itemRelease( pavailable );
  }
}

void QTextBrowserSlots::highlighted( const QUrl & link )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "highlighted(QUrl)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTBROWSER");
    PHB_ITEM plink = Qt5xHb::Signals_return_object( (void *) &link, "QURL");

    hb_vmEvalBlockV(cb, 2, psender, plink);

    hb_itemRelease(psender);
    hb_itemRelease( plink );
  }
}

void QTextBrowserSlots::highlighted( const QString & link )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "highlighted(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTBROWSER");
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING(link) );

    hb_vmEvalBlockV(cb, 2, psender, plink);

    hb_itemRelease(psender);
    hb_itemRelease( plink );
  }
}

void QTextBrowserSlots::historyChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "historyChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTBROWSER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QTextBrowserSlots::sourceChanged( const QUrl & src )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sourceChanged(QUrl)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTBROWSER");
    PHB_ITEM psrc = Qt5xHb::Signals_return_object( (void *) &src, "QURL");

    hb_vmEvalBlockV(cb, 2, psender, psrc);

    hb_itemRelease(psender);
    hb_itemRelease( psrc );
  }
}

void QTextBrowserSlots_connect_signal(const QString & signal, const QString & slot)
{
  QTextBrowser * obj = (QTextBrowser *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QTextBrowserSlots * s = QCoreApplication::instance()->findChild<QTextBrowserSlots*>();

    if( s == NULL )
    {
      s = new QTextBrowserSlots();
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
