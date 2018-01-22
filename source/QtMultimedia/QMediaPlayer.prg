/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QNETWORKCONFIGURATION
REQUEST QIODEVICE
REQUEST QMEDIAPLAYLIST
#endif

CLASS QMediaPlayer INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD bufferStatus
   METHOD currentMedia
   METHOD currentNetworkConfiguration
   METHOD duration
   METHOD error
   METHOD errorString
   METHOD isAudioAvailable
   METHOD isMuted
   METHOD isSeekable
   METHOD isVideoAvailable
   METHOD media
   METHOD mediaStatus
   METHOD mediaStream
   METHOD playbackRate
   METHOD playlist
   METHOD position
   METHOD setVideoOutput
   METHOD state
   METHOD volume
   METHOD availability
   METHOD pause
   METHOD play
   METHOD setMedia
   METHOD setMuted
   METHOD setNetworkConfigurations
   METHOD setPlaybackRate
   METHOD setPlaylist
   METHOD setPosition
   METHOD setVolume
   METHOD stop
   METHOD hasSupport
   METHOD supportedAudioRoles
   METHOD supportedMimeTypes
   METHOD audioRole
   METHOD setAudioRole

   METHOD onAudioAvailableChanged
   METHOD onAudioRoleChanged
   METHOD onBufferStatusChanged
   METHOD onCurrentMediaChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMediaChanged
   METHOD onMediaStatusChanged
   METHOD onMutedChanged
   METHOD onNetworkConfigurationChanged
   METHOD onPlaybackRateChanged
   METHOD onPositionChanged
   METHOD onSeekableChanged
   METHOD onStateChanged
   METHOD onVideoAvailableChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaPlayer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaPlayer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaPlayer>
#endif

#include <QMediaPlaylist>

/*
explicit QMediaPlayer(QObject *parent = Q_NULLPTR, Flags flags = Flags())
*/
HB_FUNC_STATIC( QMEDIAPLAYER_NEW )
{
  if( ISBETWEEN(0,2) && (ISQOBJECT(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QMediaPlayer * o = new QMediaPlayer ( OPQOBJECT(1,0), ISNIL(2)? (QMediaPlayer::Flags) 0 : (QMediaPlayer::Flags) hb_parni(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QMediaPlayer()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_DELETE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

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
QMediaContent media() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMediaContent * ptr = new QMediaContent( obj->media () );
      _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMedia(const QMediaContent &media, QIODevice *stream = Q_NULLPTR)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETMEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQMEDIACONTENT(1) && (ISQIODEVICE(2)||ISNIL(2)) )
    {
      obj->setMedia ( *PQMEDIACONTENT(1), OPQIODEVICE(2,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMediaContent currentMedia() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_CURRENTMEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMediaContent * ptr = new QMediaContent( obj->currentMedia () );
      _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMediaPlaylist * playlist() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAYLIST )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMediaPlaylist * ptr = obj->playlist ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QMEDIAPLAYLIST" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPlaylist(QMediaPlaylist * playlist)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPLAYLIST )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMEDIAPLAYLIST(1) )
    {
      obj->setPlaylist ( PQMEDIAPLAYLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qint64 duration() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_DURATION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->duration () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 position() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_POSITION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->position () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPosition(qint64 position)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPOSITION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPosition ( PQINT64(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int volume() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_VOLUME )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->volume () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setVolume(int volume)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVOLUME )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVolume ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isMuted() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISMUTED )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isMuted () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETMUTED )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setMuted ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int bufferStatus() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_BUFFERSTATUS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->bufferStatus () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isAudioAvailable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISAUDIOAVAILABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAudioAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isVideoAvailable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISVIDEOAVAILABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isVideoAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isSeekable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISSEEKABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSeekable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal playbackRate() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAYBACKRATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->playbackRate () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
State state() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_STATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->state () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
MediaStatus mediaStatus() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIASTATUS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->mediaStatus () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAudio::Role audioRole() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_AUDIOROLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->audioRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setAudioRole(QAudio::Role audioRole)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETAUDIOROLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAudioRole ( (QAudio::Role) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ERRORSTRING )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkConfiguration currentNetworkConfiguration() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_CURRENTNETWORKCONFIGURATION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->currentNetworkConfiguration () );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ERROR )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->error () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QIODevice * mediaStream() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIASTREAM )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      const QIODevice * ptr = obj->mediaStream ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QIODEVICE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setVideoOutput(QVideoWidget * output)
*/
void QMediaPlayer_setVideoOutput1 ()
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setVideoOutput ( PQVIDEOWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVideoOutput(QGraphicsVideoItem * output)
*/
void QMediaPlayer_setVideoOutput2 ()
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setVideoOutput ( PQGRAPHICSVIDEOITEM(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVideoOutput(QAbstractVideoSurface * surface)
*/
void QMediaPlayer_setVideoOutput3 ()
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setVideoOutput ( PQABSTRACTVIDEOSURFACE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setVideoOutput(QVideoWidget * output)
//[2]void setVideoOutput(QGraphicsVideoItem * output)
//[3]void setVideoOutput(QAbstractVideoSurface * surface)

HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    QMediaPlayer_setVideoOutput1();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    QMediaPlayer_setVideoOutput2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    QMediaPlayer_setVideoOutput3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QMultimedia::AvailabilityStatus availability() const override
*/
HB_FUNC_STATIC( QMEDIAPLAYER_AVAILABILITY )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

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
void pause()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PAUSE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->pause ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void play()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAY )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->play ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNetworkConfigurations(const QList<QNetworkConfiguration> & configurations)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETNETWORKCONFIGURATIONS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

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
      obj->setNetworkConfigurations ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlaybackRate(qreal rate)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPLAYBACKRATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPlaybackRate ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_STOP )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stop ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QMultimedia::SupportEstimate hasSupport(const QString &mimeType, const QStringList& codecs = QStringList(), Flags flags = Flags())
*/
HB_FUNC_STATIC( QMEDIAPLAYER_HASSUPPORT )
{
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISOPTARRAY(2) && ISOPTNUM(3) )
  {
      RENUM( QMediaPlayer::hasSupport ( PQSTRING(1), OPQSTRINGLIST(2,QStringList()), ISNIL(3)? (QMediaPlayer::Flags) 0 : (QMediaPlayer::Flags) hb_parni(3) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList supportedMimeTypes(Flags flags = Flags())
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SUPPORTEDMIMETYPES )
{
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
      RQSTRINGLIST( QMediaPlayer::supportedMimeTypes ( ISNIL(1)? (QMediaPlayer::Flags) 0 : (QMediaPlayer::Flags) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QAudio::Role> supportedAudioRoles() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SUPPORTEDAUDIOROLES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QAudio::Role> list = obj->supportedAudioRoles ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool bind(QObject *) override
*/

/*
void unbind(QObject *) override
*/

#pragma ENDDUMP

