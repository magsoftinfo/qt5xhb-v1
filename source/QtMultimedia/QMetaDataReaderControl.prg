/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataReaderControl INHERIT QMediaControl

   METHOD delete

   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD availableMetaData

   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaDataReaderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMetaDataReaderControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMetaDataReaderControl>
#endif

/*
explicit QMetaDataReaderControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QMetaDataReaderControl()
*/
HB_FUNC_STATIC( QMETADATAREADERCONTROL_DELETE )
{
  QMetaDataReaderControl * obj = (QMetaDataReaderControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual bool isMetaDataAvailable() const = 0
*/
HB_FUNC_STATIC( QMETADATAREADERCONTROL_ISMETADATAAVAILABLE )
{
  QMetaDataReaderControl * obj = (QMetaDataReaderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isMetaDataAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant metaData(const QString &key) const = 0
*/
HB_FUNC_STATIC( QMETADATAREADERCONTROL_METADATA )
{
  QMetaDataReaderControl * obj = (QMetaDataReaderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QVariant * ptr = new QVariant( obj->metaData ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QStringList availableMetaData() const = 0
*/
HB_FUNC_STATIC( QMETADATAREADERCONTROL_AVAILABLEMETADATA )
{
  QMetaDataReaderControl * obj = (QMetaDataReaderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->availableMetaData () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

void QMetaDataReaderControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMETADATAREADERCONTROL_ONMETADATACHANGED1 )
{
  QMetaDataReaderControlSlots_connect_signal( "metaDataChanged()", "metaDataChanged()" );
}

HB_FUNC_STATIC( QMETADATAREADERCONTROL_ONMETADATACHANGED2 )
{
  QMetaDataReaderControlSlots_connect_signal( "metaDataChanged(QString,QVariant)", "metaDataChanged(QString,QVariant)" );
}

HB_FUNC_STATIC( QMETADATAREADERCONTROL_ONMETADATAAVAILABLECHANGED )
{
  QMetaDataReaderControlSlots_connect_signal( "metaDataAvailableChanged(bool)", "metaDataAvailableChanged(bool)" );
}

#pragma ENDDUMP
