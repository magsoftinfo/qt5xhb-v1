/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAbstractAudioInput INHERIT QObject

   METHOD delete
   METHOD start
   METHOD stop
   METHOD reset
   METHOD suspend
   METHOD resume
   METHOD bytesReady
   METHOD periodSize
   METHOD setBufferSize
   METHOD bufferSize
   METHOD setNotifyInterval
   METHOD notifyInterval
   METHOD processedUSecs
   METHOD elapsedUSecs
   METHOD error
   METHOD state
   METHOD setFormat
   METHOD format
   METHOD setVolume
   METHOD volume

   METHOD onErrorChanged
   METHOD onStateChanged
   METHOD onNotify

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractAudioInput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAbstractAudioInput>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAbstractAudioInput>
#endif

#include <QtCore/QIODevice>

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_DELETE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void start( QIODevice * device ) = 0
*/
void QAbstractAudioInput_start1()
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start( PQIODEVICE(1) );
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QIODevice * start() = 0
*/
void QAbstractAudioInput_start2()
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->start();
    Qt5xHb::createReturnQObjectClass( ptr, "QIODEVICE" );
  }
}

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QAbstractAudioInput_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QAbstractAudioInput_start2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_STOP )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void reset() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_RESET )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void suspend()  = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SUSPEND )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->suspend();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void resume() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_RESUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resume();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual int bytesReady() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_BYTESREADY )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bytesReady() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual int periodSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_PERIODSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->periodSize() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setBufferSize( int value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETBUFFERSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBufferSize( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual int bufferSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_BUFFERSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bufferSize() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setNotifyInterval( int milliSeconds ) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETNOTIFYINTERVAL )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setNotifyInterval( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual int notifyInterval() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_NOTIFYINTERVAL )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->notifyInterval() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual qint64 processedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_PROCESSEDUSECS )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->processedUSecs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual qint64 elapsedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ELAPSEDUSECS )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->elapsedUSecs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QAudio::Error error() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ERROR )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QAudio::State state() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_STATE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setFormat( const QAudioFormat & fmt ) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETFORMAT )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
#endif
      obj->setFormat( *PQAUDIOFORMAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QAudioFormat format() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_FORMAT )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioFormat * ptr = new QAudioFormat( obj->format() );
      Qt5xHb::createReturnClass(ptr, "QAUDIOFORMAT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setVolume( qreal ) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETVOLUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual qreal volume() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_VOLUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QAbstractAudioInputSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ONERRORCHANGED )
{
  QAbstractAudioInputSlots_connect_signal( "errorChanged(QAudio::Error)", "errorChanged(QAudio::Error)" );
}

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ONSTATECHANGED )
{
  QAbstractAudioInputSlots_connect_signal( "stateChanged(QAudio::State)", "stateChanged(QAudio::State)" );
}

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ONNOTIFY )
{
  QAbstractAudioInputSlots_connect_signal( "notify()", "notify()" );
}

#pragma ENDDUMP
