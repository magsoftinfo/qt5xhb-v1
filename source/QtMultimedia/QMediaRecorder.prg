/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOENCODERSETTINGS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
REQUEST QURL
REQUEST QVARIANT
REQUEST QVIDEOENCODERSETTINGS
#endif

CLASS QMediaRecorder INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD state
   METHOD status
   METHOD duration
   METHOD outputLocation
   METHOD setOutputLocation
   METHOD actualLocation
   METHOD isMuted
   METHOD setMuted
   METHOD volume
   METHOD setVolume
   METHOD isMetaDataAvailable
   METHOD isMetaDataWritable
   METHOD audioCodecDescription
   METHOD audioSettings
   METHOD availability
   METHOD availableMetaData
   METHOD containerDescription
   METHOD containerFormat
   METHOD error
   METHOD errorString
   METHOD isAvailable
   METHOD metaData
   METHOD setAudioSettings
   METHOD setContainerFormat
   METHOD setEncodingSettings
   METHOD setMetaData
   METHOD setVideoSettings
   METHOD supportedAudioCodecs
   METHOD supportedAudioSampleRates
   METHOD supportedContainers
   METHOD supportedFrameRates
   METHOD supportedResolutions
   METHOD supportedVideoCodecs
   METHOD videoCodecDescription
   METHOD videoSettings
   METHOD mediaObject
   METHOD pause
   METHOD record
   METHOD stop

   METHOD onActualLocationChanged
   METHOD onAvailabilityChanged1
   METHOD onAvailabilityChanged2
   METHOD onDurationChanged
   METHOD onError
   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onMetaDataWritableChanged
   METHOD onMutedChanged
   METHOD onStateChanged
   METHOD onStatusChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaRecorder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaRecorder>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaRecorder>
#endif

#include <QtCore/QUrl>

/*
explicit QMediaRecorder(QMediaObject * mediaObject, QObject * parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QMEDIARECORDER_NEW )
{
  if( ISBETWEEN(1,2) && ISQMEDIAOBJECT(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    QMediaRecorder * obj = new QMediaRecorder( PQMEDIAOBJECT(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QMediaRecorder()
*/
HB_FUNC_STATIC( QMEDIARECORDER_DELETE )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
State state() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_STATE )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Status status() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_STATUS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qint64 duration() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_DURATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->duration() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QUrl outputLocation() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_OUTPUTLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->outputLocation() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool setOutputLocation(const QUrl & location)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETOUTPUTLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      RBOOL( obj->setOutputLocation( *PQURL(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QUrl actualLocation() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ACTUALLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->actualLocation() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isMuted() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMUTED )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMuted() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETMUTED )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setMuted( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal volume() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VOLUME )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->volume() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setVolume(qreal volume)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETVOLUME )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVolume( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isMetaDataAvailable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMETADATAAVAILABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMetaDataAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isMetaDataWritable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMETADATAWRITABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMetaDataWritable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString audioCodecDescription(const QString & codecName) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AUDIOCODECDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->audioCodecDescription( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAudioEncoderSettings audioSettings() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AUDIOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioEncoderSettings * ptr = new QAudioEncoderSettings( obj->audioSettings() );
      Qt5xHb::createReturnClass( ptr, "QAUDIOENCODERSETTINGS", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AVAILABILITY )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList availableMetaData() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AVAILABLEMETADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->availableMetaData() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString containerDescription(const QString & format) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_CONTAINERDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->containerDescription( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString containerFormat() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_CONTAINERFORMAT )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->containerFormat() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ERROR )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ERRORSTRING )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISAVAILABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVariant metaData(const QString & key) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_METADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->metaData( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAudioSettings(const QAudioEncoderSettings & audioSettings)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETAUDIOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOENCODERSETTINGS(1) )
    {
#endif
      obj->setAudioSettings( *PQAUDIOENCODERSETTINGS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContainerFormat(const QString & container)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETCONTAINERFORMAT )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setContainerFormat( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEncodingSettings(const QAudioEncoderSettings & audioSettings, const QVideoEncoderSettings & videoSettings = QVideoEncoderSettings(), const QString & containerMimeType = QString())
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETENCODINGSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISQAUDIOENCODERSETTINGS(1) && (ISQVIDEOENCODERSETTINGS(2)||HB_ISNIL(2)) && (ISCHAR(3)||HB_ISNIL(3)) )
    {
#endif
      obj->setEncodingSettings( *PQAUDIOENCODERSETTINGS(1), HB_ISNIL(2)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) Qt5xHb::itemGetPtr(2), OPQSTRING(3,QString()) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMetaData(const QString & key, const QVariant & value)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETMETADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQVARIANT(2) )
    {
#endif
      obj->setMetaData( PQSTRING(1), *PQVARIANT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVideoSettings(const QVideoEncoderSettings & videoSettings)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETVIDEOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIDEOENCODERSETTINGS(1) )
    {
#endif
      obj->setVideoSettings( *PQVIDEOENCODERSETTINGS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList supportedAudioCodecs() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDAUDIOCODECS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->supportedAudioCodecs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<int> supportedAudioSampleRates(const QAudioEncoderSettings & settings = QAudioEncoderSettings(), bool * continuous = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDAUDIOSAMPLERATES )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (ISQAUDIOENCODERSETTINGS(1)||HB_ISNIL(1)) && (ISLOG(2)||HB_ISNIL(2)) )
    {
#endif
      bool par2;
      QList<int> list = obj->supportedAudioSampleRates( HB_ISNIL(1)? QAudioEncoderSettings() : *(QAudioEncoderSettings *) Qt5xHb::itemGetPtr(1), &par2 );
      Qt5xHb::convert_qlist_int_to_array( list );
      hb_storl( par2, 2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList supportedContainers() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDCONTAINERS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->supportedContainers() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDFRAMERATES )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (ISQVIDEOENCODERSETTINGS(1)||HB_ISNIL(1)) && (ISLOG(2)||HB_ISNIL(2)) )
    {
#endif
      bool par2;
      QList<qreal> list = obj->supportedFrameRates( HB_ISNIL(1)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) Qt5xHb::itemGetPtr(1), &par2 );
      Qt5xHb::convert_qlist_qreal_to_array( list );
      hb_storl( par2, 2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDRESOLUTIONS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (ISQVIDEOENCODERSETTINGS(1)||HB_ISNIL(1)) && (ISLOG(2)||HB_ISNIL(2)) )
    {
#endif
      bool par2;
      QList<QSize> list = obj->supportedResolutions( HB_ISNIL(1)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) Qt5xHb::itemGetPtr(1), &par2 );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSIZE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QSize *) new QSize( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSIZE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
      hb_storl( par2, 2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList supportedVideoCodecs() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDVIDEOCODECS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->supportedVideoCodecs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString videoCodecDescription(const QString & codecName) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VIDEOCODECDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->videoCodecDescription( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVideoEncoderSettings videoSettings() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VIDEOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVideoEncoderSettings * ptr = new QVideoEncoderSettings( obj->videoSettings() );
      Qt5xHb::createReturnClass( ptr, "QVIDEOENCODERSETTINGS", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QMediaObject *mediaObject() const override
*/
HB_FUNC_STATIC( QMEDIARECORDER_MEDIAOBJECT )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaObject * ptr = obj->mediaObject();
      Qt5xHb::createReturnQObjectClass( ptr, "QMEDIAOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void pause()
*/
HB_FUNC_STATIC( QMEDIARECORDER_PAUSE )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->pause();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void record()
*/
HB_FUNC_STATIC( QMEDIARECORDER_RECORD )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->record();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop()
*/
HB_FUNC_STATIC( QMEDIARECORDER_STOP )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QMediaRecorderSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIARECORDER_ONACTUALLOCATIONCHANGED )
{
  QMediaRecorderSlots_connect_signal( "actualLocationChanged(QUrl)", "actualLocationChanged(QUrl)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONAVAILABILITYCHANGED1 )
{
  QMediaRecorderSlots_connect_signal( "availabilityChanged(bool)", "availabilityChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONAVAILABILITYCHANGED2 )
{
  QMediaRecorderSlots_connect_signal( "availabilityChanged(QMultimedia::AvailabilityStatus)", "availabilityChanged(QMultimedia::AvailabilityStatus)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONDURATIONCHANGED )
{
  QMediaRecorderSlots_connect_signal( "durationChanged(qint64)", "durationChanged(qint64)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONERROR )
{
  QMediaRecorderSlots_connect_signal( "error(QMediaRecorder::Error)", "error(QMediaRecorder::Error)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONMETADATAAVAILABLECHANGED )
{
  QMediaRecorderSlots_connect_signal( "metaDataAvailableChanged(bool)", "metaDataAvailableChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONMETADATACHANGED1 )
{
  QMediaRecorderSlots_connect_signal( "metaDataChanged()", "metaDataChanged()" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONMETADATACHANGED2 )
{
  QMediaRecorderSlots_connect_signal( "metaDataChanged(QString,QVariant)", "metaDataChanged(QString,QVariant)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONMETADATAWRITABLECHANGED )
{
  QMediaRecorderSlots_connect_signal( "metaDataWritableChanged(bool)", "metaDataWritableChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONMUTEDCHANGED )
{
  QMediaRecorderSlots_connect_signal( "mutedChanged(bool)", "mutedChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONSTATECHANGED )
{
  QMediaRecorderSlots_connect_signal( "stateChanged(QMediaRecorder::State)", "stateChanged(QMediaRecorder::State)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONSTATUSCHANGED )
{
  QMediaRecorderSlots_connect_signal( "statusChanged(QMediaRecorder::Status)", "statusChanged(QMediaRecorder::Status)" );
}

HB_FUNC_STATIC( QMEDIARECORDER_ONVOLUMECHANGED )
{
  QMediaRecorderSlots_connect_signal( "volumeChanged(qreal)", "volumeChanged(qreal)" );
}

#pragma ENDDUMP
