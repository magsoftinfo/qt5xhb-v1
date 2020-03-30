/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLegendSlots.h"

QLegendSlots::QLegendSlots(QObject *parent) : QObject(parent)
{
}

QLegendSlots::~QLegendSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QLegendSlots::backgroundVisibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "backgroundVisibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QLEGEND" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QLegendSlots::borderColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "borderColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QLEGEND" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QLegendSlots::colorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QLEGEND" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QLegendSlots::fontChanged( QFont font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QLEGEND" );
    PHB_ITEM pfont = Signals_return_object( (void *) &font, "QFONT" );
    hb_vmEvalBlockV( cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QLegendSlots::labelColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QLEGEND" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QLegendSlots::markerShapeChanged( QLegend::MarkerShape shape )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "markerShapeChanged(QLegend::MarkerShape)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QLEGEND" );
    PHB_ITEM pshape = hb_itemPutNI( NULL, (int) shape );
    hb_vmEvalBlockV( cb, 2, psender, pshape );
    hb_itemRelease( psender );
    hb_itemRelease( pshape );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QLegendSlots::reverseMarkersChanged( bool reverseMarkers )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "reverseMarkersChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QLEGEND" );
    PHB_ITEM preverseMarkers = hb_itemPutL( NULL, reverseMarkers );
    hb_vmEvalBlockV( cb, 2, psender, preverseMarkers );
    hb_itemRelease( psender );
    hb_itemRelease( preverseMarkers );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QLegendSlots::showToolTipsChanged( bool showToolTips )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "showToolTipsChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QLEGEND" );
    PHB_ITEM pshowToolTips = hb_itemPutL( NULL, showToolTips );
    hb_vmEvalBlockV( cb, 2, psender, pshowToolTips );
    hb_itemRelease( psender );
    hb_itemRelease( pshowToolTips );
  }
}
#endif

void QLegendSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QLegendSlots * s = QCoreApplication::instance()->findChild<QLegendSlots *>();

    if( s == NULL )
    {
      s = new QLegendSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
