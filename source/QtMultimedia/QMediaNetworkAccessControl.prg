/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QMediaNetworkAccessControl INHERIT QMediaControl

   METHOD delete

   METHOD currentConfiguration
   METHOD setConfigurations

   METHOD onConfigurationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaNetworkAccessControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaNetworkAccessControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaNetworkAccessControl>
#endif

/*
explicit QMediaNetworkAccessControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QMediaNetworkAccessControl()
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_DELETE )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QNetworkConfiguration currentConfiguration() const = 0
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_CURRENTCONFIGURATION )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->currentConfiguration () );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setConfigurations(const QList<QNetworkConfiguration> & configurations) = 0
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_SETCONFIGURATIONS )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      QList<QNetworkConfiguration> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setConfigurations ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QMediaNetworkAccessControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_ONCONFIGURATIONCHANGED )
{
  QMediaNetworkAccessControlSlots_connect_signal( "configurationChanged(QNetworkConfiguration)", "configurationChanged(QNetworkConfiguration)" );
}


#pragma ENDDUMP
