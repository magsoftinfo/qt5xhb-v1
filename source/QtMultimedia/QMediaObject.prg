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
REQUEST QMEDIASERVICE
#endif

CLASS QMediaObject INHERIT QObject

   METHOD delete
   METHOD availability
   METHOD availableMetaData
   METHOD bind
   METHOD isAvailable
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD notifyInterval
   METHOD service
   METHOD setNotifyInterval
   METHOD unbind

   METHOD onAvailabilityChanged1
   METHOD onAvailabilityChanged2
   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onNotifyIntervalChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaObject>
#endif

#include <QVariant>
#include <QMediaService>

/*
QMediaObject(QObject *parent, QMediaService *service) (protected)
*/

/*
QMediaObject(QMediaObjectPrivate &dd, QObject *parent, QMediaService *service) (protected)
*/

/*
~QMediaObject()
*/
HB_FUNC_STATIC( QMEDIAOBJECT_DELETE )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

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
int notifyInterval() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_NOTIFYINTERVAL )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->notifyInterval () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setNotifyInterval(int milliSeconds)
*/
HB_FUNC_STATIC( QMEDIAOBJECT_SETNOTIFYINTERVAL )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setNotifyInterval ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_AVAILABILITY )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->availability () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList availableMetaData() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_AVAILABLEMETADATA )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
virtual bool bind(QObject * object)
*/
HB_FUNC_STATIC( QMEDIAOBJECT_BIND )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      RBOOL( obj->bind ( PQOBJECT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isAvailable() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_ISAVAILABLE )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isMetaDataAvailable() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_ISMETADATAAVAILABLE )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

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
QVariant metaData(const QString & key) const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_METADATA )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QMediaService * service() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_SERVICE )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMediaService * ptr = obj->service ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QMEDIASERVICE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void unbind(QObject * object)
*/
HB_FUNC_STATIC( QMEDIAOBJECT_UNBIND )
{
  QMediaObject * obj = (QMediaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      obj->unbind ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPropertyWatch(QByteArray const &name) (protected)
*/

/*
void removePropertyWatch(QByteArray const &name) (protected)
*/

/*
void setupControls() (private)
*/

void QMediaObjectSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIAOBJECT_ONAVAILABILITYCHANGED1 )
{
  QMediaObjectSlots_connect_signal( "availabilityChanged(bool)", "availabilityChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONAVAILABILITYCHANGED2 )
{
  QMediaObjectSlots_connect_signal( "availabilityChanged(QMultimedia::AvailabilityStatus)", "availabilityChanged(QMultimedia::AvailabilityStatus)" );
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONMETADATAAVAILABLECHANGED )
{
  QMediaObjectSlots_connect_signal( "metaDataAvailableChanged(bool)", "metaDataAvailableChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONMETADATACHANGED1 )
{
  QMediaObjectSlots_connect_signal( "metaDataChanged()", "metaDataChanged()" );
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONMETADATACHANGED2 )
{
  QMediaObjectSlots_connect_signal( "metaDataChanged(QString,QVariant)", "metaDataChanged(QString,QVariant)" );
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONNOTIFYINTERVALCHANGED )
{
  QMediaObjectSlots_connect_signal( "notifyIntervalChanged(int)", "notifyIntervalChanged(int)" );
}


#pragma ENDDUMP
