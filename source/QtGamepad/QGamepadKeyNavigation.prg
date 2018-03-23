/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGAMEPAD
#endif

CLASS QGamepadKeyNavigation INHERIT QObject

   METHOD new

   METHOD active
   METHOD buttonAKey
   METHOD buttonBKey
   METHOD buttonGuideKey
   METHOD buttonL1Key
   METHOD buttonL2Key
   METHOD buttonL3Key
   METHOD buttonR1Key
   METHOD buttonR2Key
   METHOD buttonR3Key
   METHOD buttonSelectKey
   METHOD buttonStartKey
   METHOD buttonXKey
   METHOD buttonYKey
   METHOD downKey
   METHOD gamepad
   METHOD leftKey
   METHOD rightKey
   METHOD setActive
   METHOD setButtonAKey
   METHOD setButtonBKey
   METHOD setButtonGuideKey
   METHOD setButtonL1Key
   METHOD setButtonL2Key
   METHOD setButtonL3Key
   METHOD setButtonR1Key
   METHOD setButtonR2Key
   METHOD setButtonR3Key
   METHOD setButtonSelectKey
   METHOD setButtonStartKey
   METHOD setButtonXKey
   METHOD setButtonYKey
   METHOD setDownKey
   METHOD setGamepad
   METHOD setLeftKey
   METHOD setRightKey
   METHOD setUpKey
   METHOD upKey

   METHOD onActiveChanged
   METHOD onGamepadChanged
   METHOD onUpKeyChanged
   METHOD onDownKeyChanged
   METHOD onLeftKeyChanged
   METHOD onRightKeyChanged
   METHOD onButtonAKeyChanged
   METHOD onButtonBKeyChanged
   METHOD onButtonXKeyChanged
   METHOD onButtonYKeyChanged
   METHOD onButtonSelectKeyChanged
   METHOD onButtonStartKeyChanged
   METHOD onButtonGuideKeyChanged
   METHOD onButtonL1KeyChanged
   METHOD onButtonR1KeyChanged
   METHOD onButtonL2KeyChanged
   METHOD onButtonR2KeyChanged
   METHOD onButtonL3KeyChanged
   METHOD onButtonR3KeyChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGamepadKeyNavigation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QGamepadKeyNavigation>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QGamepadKeyNavigation>
#endif
#endif

#include <QGamepad>

/*
explicit QGamepadKeyNavigation(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QGamepadKeyNavigation * o = new QGamepadKeyNavigation ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
bool active() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->active () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setActive(bool isActive) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setActive ( PBOOL(1) );
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
QGamepad *gamepad() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_GAMEPAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QGamepad * ptr = obj->gamepad ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QGAMEPAD" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setGamepad(QGamepad *gamepad) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETGAMEPAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGAMEPAD(1) )
    {
      obj->setGamepad ( PQGAMEPAD(1) );
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
Qt::Key upKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_UPKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->upKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setUpKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETUPKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setUpKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key downKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_DOWNKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->downKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setDownKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETDOWNKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDownKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key leftKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_LEFTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->leftKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLeftKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETLEFTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLeftKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key rightKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_RIGHTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->rightKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setRightKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETRIGHTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRightKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonAKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONAKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonAKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonAKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONAKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonAKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonBKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONBKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonBKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonBKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONBKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonBKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonXKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONXKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonXKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonXKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONXKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonXKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonYKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONYKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonYKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonYKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONYKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonYKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonSelectKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONSELECTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonSelectKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonSelectKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONSELECTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonSelectKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonStartKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONSTARTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonStartKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonStartKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONSTARTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonStartKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonGuideKey() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONGUIDEKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonGuideKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonGuideKey(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONGUIDEKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonGuideKey ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonL1Key() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONL1KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonL1Key () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonL1Key(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONL1KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonL1Key ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonR1Key() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONR1KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonR1Key () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonR1Key(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONR1KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonR1Key ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonL2Key() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONL2KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonL2Key () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonL2Key(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONL2KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonL2Key ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonR2Key() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONR2KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonR2Key () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonR2Key(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONR2KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonR2Key ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonL3Key() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONL3KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonL3Key () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonL3Key(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONL3KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonL3Key ( (Qt::Key) hb_parni(1) );
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
Qt::Key buttonR3Key() const
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_BUTTONR3KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonR3Key () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setButtonR3Key(Qt::Key key) (slot)
*/
HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_SETBUTTONR3KEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setButtonR3Key ( (Qt::Key) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QGamepadKeyNavigationSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONACTIVECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "activeChanged(bool)", "activeChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONGAMEPADCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "gamepadChanged(QGamepad*)", "gamepadChanged(QGamepad*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONUPKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "upKeyChanged(Qt::Key)", "upKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONDOWNKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "downKeyChanged(Qt::Key)", "downKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONLEFTKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "leftKeyChanged(Qt::Key)", "leftKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONRIGHTKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "rightKeyChanged(Qt::Key)", "rightKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONAKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonAKeyChanged(Qt::Key)", "buttonAKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONBKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonBKeyChanged(Qt::Key)", "buttonBKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONXKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonXKeyChanged(Qt::Key)", "buttonXKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONYKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonYKeyChanged(Qt::Key)", "buttonYKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONSELECTKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonSelectKeyChanged(Qt::Key)", "buttonSelectKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONSTARTKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonStartKeyChanged(Qt::Key)", "buttonStartKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONGUIDEKEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonGuideKeyChanged(Qt::Key)", "buttonGuideKeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONL1KEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonL1KeyChanged(Qt::Key)", "buttonL1KeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONR1KEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonR1KeyChanged(Qt::Key)", "buttonR1KeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONL2KEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonL2KeyChanged(Qt::Key)", "buttonL2KeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONR2KEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonR2KeyChanged(Qt::Key)", "buttonR2KeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONL3KEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonL3KeyChanged(Qt::Key)", "buttonL3KeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADKEYNAVIGATION_ONBUTTONR3KEYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigationSlots_connect_signal( "buttonR3KeyChanged(Qt::Key)", "buttonR3KeyChanged(Qt::Key)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
