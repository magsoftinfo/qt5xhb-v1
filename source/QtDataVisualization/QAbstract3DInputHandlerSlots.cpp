/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstract3DInputHandlerSlots.hpp"

QAbstract3DInputHandlerSlots::QAbstract3DInputHandlerSlots( QObject *parent ) : QObject( parent )
{
}

QAbstract3DInputHandlerSlots::~QAbstract3DInputHandlerSlots()
{
}

void QAbstract3DInputHandlerSlots::inputViewChanged( QAbstract3DInputHandler::InputView view )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "inputViewChanged(QAbstract3DInputHandler::InputView)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DINPUTHANDLER");
    PHB_ITEM pview = hb_itemPutNI( NULL, static_cast<int>(view) );

    hb_vmEvalBlockV(cb, 2, psender, pview);

    hb_itemRelease(psender);
    hb_itemRelease( pview );
  }
}

void QAbstract3DInputHandlerSlots::positionChanged( const QPoint & position )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "positionChanged(QPoint)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DINPUTHANDLER");
    PHB_ITEM pposition = Qt5xHb::Signals_return_object( (void *) &position, "QPOINT");

    hb_vmEvalBlockV(cb, 2, psender, pposition);

    hb_itemRelease(psender);
    hb_itemRelease( pposition );
  }
}

void QAbstract3DInputHandlerSlots::sceneChanged( Q3DScene * scene )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sceneChanged(Q3DScene*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACT3DINPUTHANDLER");
    PHB_ITEM pscene = Qt5xHb::Signals_return_qobject(scene, "Q3DSCENE");

    hb_vmEvalBlockV(cb, 2, psender, pscene);

    hb_itemRelease(psender);
    hb_itemRelease( pscene );
  }
}

void QAbstract3DInputHandlerSlots_connect_signal(const QString & signal, const QString & slot)
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAbstract3DInputHandlerSlots * s = QCoreApplication::instance()->findChild<QAbstract3DInputHandlerSlots*>();

    if( s == NULL )
    {
      s = new QAbstract3DInputHandlerSlots();
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
