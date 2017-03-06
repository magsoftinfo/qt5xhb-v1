/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QStackedLayoutSlots.h"


static SlotsQStackedLayout * s = NULL;

SlotsQStackedLayout::SlotsQStackedLayout(QObject *parent) : QObject(parent)
{
}

SlotsQStackedLayout::~SlotsQStackedLayout()
{
}

void SlotsQStackedLayout::setCurrentIndex ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setCurrentIndex(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQStackedLayout::setCurrentWidget (QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setCurrentWidget(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwidget = hb_itemPutPtr( NULL, (QWidget *) widget );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwidget );
    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}

HB_FUNC( QSTACKEDLAYOUT_ONSETCURRENTINDEX )
{
  if( s == NULL )
  {
    s = new SlotsQStackedLayout(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "setCurrentIndex(int)", "setCurrentIndex(int)" ) );
}

HB_FUNC( QSTACKEDLAYOUT_ONSETCURRENTWIDGET )
{
  if( s == NULL )
  {
    s = new SlotsQStackedLayout(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "setCurrentWidget(QWidget*)", "setCurrentWidget(QWidget*)" ) );
}
