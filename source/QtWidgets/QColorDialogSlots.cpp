/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QColorDialogSlots.h"


static SlotsQColorDialog * s = NULL;

SlotsQColorDialog::SlotsQColorDialog(QObject *parent) : QObject(parent)
{
}

SlotsQColorDialog::~SlotsQColorDialog()
{
}

void SlotsQColorDialog::colorSelected ( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorSelected(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

void SlotsQColorDialog::currentColorChanged ( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

HB_FUNC( QCOLORDIALOG_ONCOLORSELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQColorDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "colorSelected(QColor)", "colorSelected(QColor)" ) );
}

HB_FUNC( QCOLORDIALOG_ONCURRENTCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQColorDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentColorChanged(QColor)", "currentColorChanged(QColor)" ) );
}
