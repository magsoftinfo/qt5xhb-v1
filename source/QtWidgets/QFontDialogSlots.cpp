/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QFontDialogSlots.h"


static SlotsQFontDialog * s = NULL;

SlotsQFontDialog::SlotsQFontDialog(QObject *parent) : QObject(parent)
{
}

SlotsQFontDialog::~SlotsQFontDialog()
{
}

void SlotsQFontDialog::currentFontChanged ( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentFontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfont = hb_itemPutPtr( NULL, (QFont *) &font );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}

void SlotsQFontDialog::fontSelected ( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fontSelected(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfont = hb_itemPutPtr( NULL, (QFont *) &font );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}

HB_FUNC( QFONTDIALOG_ONCURRENTFONTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQFontDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentFontChanged(QFont)", "currentFontChanged(QFont)" ) );
}

HB_FUNC( QFONTDIALOG_ONFONTSELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQFontDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "fontSelected(QFont)", "fontSelected(QFont)" ) );
}
