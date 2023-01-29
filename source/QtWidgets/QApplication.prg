/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCLIPBOARD
REQUEST QCURSOR
REQUEST QDESKTOPWIDGET
REQUEST QFONT
REQUEST QFONTMETRICS
REQUEST QICON
REQUEST QPALETTE
REQUEST QSIZE
REQUEST QSTYLE
REQUEST QWIDGET
#endif

CLASS QApplication INHERIT QGuiApplication

   METHOD new
   METHOD delete
   METHOD isSessionRestored
   METHOD sessionId
   METHOD sessionKey
   METHOD styleSheet
   METHOD notify
   METHOD aboutQt
   METHOD closeAllWindows
   METHOD setStyleSheet
   METHOD activeModalWidget
   METHOD activePopupWidget
   METHOD activeWindow
   METHOD alert
   METHOD allWidgets
   METHOD beep
   METHOD changeOverrideCursor
   METHOD clipboard
   METHOD colorSpec
   METHOD cursorFlashTime
   METHOD desktop
   METHOD desktopSettingsAware
   METHOD doubleClickInterval
   METHOD exec
   METHOD focusWidget
   METHOD font
   METHOD fontMetrics
   METHOD globalStrut
   METHOD isEffectEnabled
   METHOD isLeftToRight
   METHOD isRightToLeft
   METHOD keyboardInputInterval
   METHOD keyboardModifiers
   METHOD layoutDirection
   METHOD mouseButtons
   METHOD overrideCursor
   METHOD palette
   METHOD queryKeyboardModifiers
   METHOD quitOnLastWindowClosed
   METHOD restoreOverrideCursor
   METHOD setActiveWindow
   METHOD setColorSpec
   METHOD setCursorFlashTime
   METHOD setDesktopSettingsAware
   METHOD setDoubleClickInterval
   METHOD setEffectEnabled
   METHOD setFont
   METHOD setGlobalStrut
   METHOD setKeyboardInputInterval
   METHOD setLayoutDirection
   METHOD setOverrideCursor
   METHOD setPalette
   METHOD setQuitOnLastWindowClosed
   METHOD setStartDragDistance
   METHOD setStartDragTime
   METHOD setStyle
   METHOD setWheelScrollLines
   METHOD setWindowIcon
   METHOD startDragDistance
   METHOD startDragTime
   METHOD style
   METHOD topLevelAt
   METHOD topLevelWidgets
   METHOD wheelScrollLines
   METHOD widgetAt
   METHOD windowIcon

   METHOD onAboutToReleaseGpuResources
   METHOD onAboutToUseGpuResources
   METHOD onCommitDataRequest
   METHOD onFocusChanged
   METHOD onFontDatabaseChanged
   METHOD onLastWindowClosed
   METHOD onSaveStateRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QApplication
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QApplication>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QApplication>
#endif

#include <QtGui/QFont>
#include <QtCore/QLocale>
#include <QtGui/QIcon>
#include <QtGui/QSessionManager>
#include <QtGui/QFontMetrics>
#include <QtGui/QPalette>
#include <QtGui/QClipboard>
#include <QtWidgets/QStyle>
#include <QtWidgets/QDesktopWidget>

//QApplication ( int & argc, char ** argv )
//QApplication ( int & argc, char ** argv, bool GUIenabled )
//QApplication ( int & argc, char ** argv, Type type )
//QApplication ( Display * display, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( Display * display, int & argc, char ** argv, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
//QApplication ( QApplication::QS60MainApplicationFactory factory, int & argc, char ** argv )

/*
QApplication ( int & argc, char ** argv )
*/
HB_FUNC_STATIC( QAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QApplication * o = new QApplication( argc, argv );
  Qt5xHb::returnNewObject( o, false );
}

HB_FUNC_STATIC( QAPPLICATION_DELETE )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isSessionRestored() const
*/
HB_FUNC_STATIC( QAPPLICATION_ISSESSIONRESTORED )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSessionRestored() );
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
QString sessionId() const
*/
HB_FUNC_STATIC( QAPPLICATION_SESSIONID )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->sessionId() );
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
QString sessionKey() const
*/
HB_FUNC_STATIC( QAPPLICATION_SESSIONKEY )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->sessionKey() );
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
QString styleSheet() const
*/
HB_FUNC_STATIC( QAPPLICATION_STYLESHEET )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->styleSheet() );
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
virtual bool notify( QObject * receiver, QEvent * e )
*/
HB_FUNC_STATIC( QAPPLICATION_NOTIFY )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2) )
    {
#endif
      RBOOL( obj->notify( PQOBJECT(1), PQEVENT(2) ) );
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
void aboutQt()
*/
HB_FUNC_STATIC( QAPPLICATION_ABOUTQT )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->aboutQt();
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
void closeAllWindows()
*/
HB_FUNC_STATIC( QAPPLICATION_CLOSEALLWINDOWS )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->closeAllWindows();
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
void setStyleSheet( const QString & sheet )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTYLESHEET )
{
  QApplication * obj = (QApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setStyleSheet( PQSTRING(1) );
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
static QWidget * activeModalWidget()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEMODALWIDGET )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWidget * ptr = QApplication::activeModalWidget();
    Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QWidget * activePopupWidget()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEPOPUPWIDGET )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWidget * ptr = QApplication::activePopupWidget();
    Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QWidget * activeWindow()
*/
HB_FUNC_STATIC( QAPPLICATION_ACTIVEWINDOW )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWidget * ptr = QApplication::activeWindow();
    Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void alert( QWidget * widget, int msec = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_ALERT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQWIDGET(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
  {
#endif
    QApplication::alert( PQWIDGET(1), OPINT(2,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QWidgetList allWidgets()
*/
HB_FUNC_STATIC( QAPPLICATION_ALLWIDGETS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWidgetList list = QApplication::allWidgets();
    PHB_DYNS pDynSym = hb_dynsymFindName("QWIDGET");
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym != NULL )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pObject = hb_itemNew(NULL);
        hb_itemCopy(pObject, hb_stackReturnItem());
        PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QWIDGET", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void beep()
*/
HB_FUNC_STATIC( QAPPLICATION_BEEP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QApplication::beep();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void changeOverrideCursor( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_CHANGEOVERRIDECURSOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
#endif
    QApplication::changeOverrideCursor( *PQCURSOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QClipboard * clipboard()
*/
HB_FUNC_STATIC( QAPPLICATION_CLIPBOARD )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QClipboard * ptr = QApplication::clipboard();
    Qt5xHb::createReturnQObjectClass(ptr, "QCLIPBOARD");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int colorSpec()
*/
HB_FUNC_STATIC( QAPPLICATION_COLORSPEC )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QApplication::colorSpec() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int cursorFlashTime()
*/
HB_FUNC_STATIC( QAPPLICATION_CURSORFLASHTIME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QApplication::cursorFlashTime() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QDesktopWidget * desktop()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QDesktopWidget * ptr = QApplication::desktop();
    Qt5xHb::createReturnQWidgetClass( ptr, "QDESKTOPWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool desktopSettingsAware()
*/
HB_FUNC_STATIC( QAPPLICATION_DESKTOPSETTINGSAWARE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QApplication::desktopSettingsAware() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int doubleClickInterval()
*/
HB_FUNC_STATIC( QAPPLICATION_DOUBLECLICKINTERVAL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QApplication::doubleClickInterval() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int exec()
*/
HB_FUNC_STATIC( QAPPLICATION_EXEC )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QApplication::exec() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QWidget * focusWidget()
*/
HB_FUNC_STATIC( QAPPLICATION_FOCUSWIDGET )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWidget * ptr = QApplication::focusWidget();
    Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QAPPLICATION_FONT )
{
  if( ISNUMPAR(0) )
  {
    /*
    static QFont font()
    */
    QFont * ptr = new QFont( QApplication::font() );
    Qt5xHb::createReturnClass(ptr, "QFONT", true);
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    static QFont font( const QWidget * widget )
    */
    QFont * ptr = new QFont( QApplication::font( PQWIDGET(1) ) );
    Qt5xHb::createReturnClass(ptr, "QFONT", true);
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QFont font( const char * className )
    */
    QFont * ptr = new QFont( QApplication::font( PCONSTCHAR(1) ) );
    Qt5xHb::createReturnClass(ptr, "QFONT", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QFontMetrics fontMetrics()
*/
HB_FUNC_STATIC( QAPPLICATION_FONTMETRICS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QFontMetrics * ptr = new QFontMetrics( QApplication::fontMetrics() );
    Qt5xHb::createReturnClass(ptr, "QFONTMETRICS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QSize globalStrut()
*/
HB_FUNC_STATIC( QAPPLICATION_GLOBALSTRUT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QSize * ptr = new QSize( QApplication::globalStrut() );
    Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isEffectEnabled( Qt::UIEffect effect )
*/
HB_FUNC_STATIC( QAPPLICATION_ISEFFECTENABLED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    RBOOL( QApplication::isEffectEnabled( (Qt::UIEffect) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isLeftToRight()
*/
HB_FUNC_STATIC( QAPPLICATION_ISLEFTTORIGHT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QApplication::isLeftToRight() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isRightToLeft()
*/
HB_FUNC_STATIC( QAPPLICATION_ISRIGHTTOLEFT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QApplication::isRightToLeft() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int keyboardInputInterval()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDINPUTINTERVAL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QApplication::keyboardInputInterval() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static Qt::KeyboardModifiers keyboardModifiers()
*/
HB_FUNC_STATIC( QAPPLICATION_KEYBOARDMODIFIERS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QApplication::keyboardModifiers() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static Qt::LayoutDirection layoutDirection()
*/
HB_FUNC_STATIC( QAPPLICATION_LAYOUTDIRECTION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QApplication::layoutDirection() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static Qt::MouseButtons mouseButtons()
*/
HB_FUNC_STATIC( QAPPLICATION_MOUSEBUTTONS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QApplication::mouseButtons() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QCursor * overrideCursor()
*/
HB_FUNC_STATIC( QAPPLICATION_OVERRIDECURSOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QCursor * ptr = QApplication::overrideCursor();
    Qt5xHb::createReturnClass(ptr, "QCURSOR", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QAPPLICATION_PALETTE )
{
  if( ISNUMPAR(0) )
  {
    /*
    static QPalette palette()
    */
    QPalette * ptr = new QPalette( QApplication::palette() );
    Qt5xHb::createReturnClass(ptr, "QPALETTE", true);
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    static QPalette palette( const QWidget * widget )
    */
    QPalette * ptr = new QPalette( QApplication::palette( PQWIDGET(1) ) );
    Qt5xHb::createReturnClass(ptr, "QPALETTE", true);
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QPalette palette( const char * className )
    */
    QPalette * ptr = new QPalette( QApplication::palette( PCONSTCHAR(1) ) );
    Qt5xHb::createReturnClass(ptr, "QPALETTE", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static Qt::KeyboardModifiers queryKeyboardModifiers()
*/
HB_FUNC_STATIC( QAPPLICATION_QUERYKEYBOARDMODIFIERS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QApplication::queryKeyboardModifiers() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool quitOnLastWindowClosed()
*/
HB_FUNC_STATIC( QAPPLICATION_QUITONLASTWINDOWCLOSED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QApplication::quitOnLastWindowClosed() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void restoreOverrideCursor()
*/
HB_FUNC_STATIC( QAPPLICATION_RESTOREOVERRIDECURSOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QApplication::restoreOverrideCursor();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setActiveWindow( QWidget * active )
*/
HB_FUNC_STATIC( QAPPLICATION_SETACTIVEWINDOW )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
#endif
    QApplication::setActiveWindow( PQWIDGET(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setColorSpec( int spec )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCOLORSPEC )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QApplication::setColorSpec( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setCursorFlashTime( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETCURSORFLASHTIME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QApplication::setCursorFlashTime( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setDesktopSettingsAware( bool on )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDESKTOPSETTINGSAWARE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
#endif
    QApplication::setDesktopSettingsAware( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setDoubleClickInterval( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETDOUBLECLICKINTERVAL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QApplication::setDoubleClickInterval( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setEffectEnabled( Qt::UIEffect effect, bool enable = true )
*/
HB_FUNC_STATIC( QAPPLICATION_SETEFFECTENABLED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISLOG(2)||HB_ISNIL(2)) )
  {
#endif
    QApplication::setEffectEnabled( (Qt::UIEffect) hb_parni(1), OPBOOL(2,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setFont( const QFont & font, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETFONT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQFONT(1) && (HB_ISCHAR(2)||HB_ISNIL(2)) )
  {
#endif
    QApplication::setFont( *PQFONT(1), OPCONSTCHAR(2,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setGlobalStrut( const QSize & )
*/
HB_FUNC_STATIC( QAPPLICATION_SETGLOBALSTRUT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
#endif
    QApplication::setGlobalStrut( *PQSIZE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setKeyboardInputInterval( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETKEYBOARDINPUTINTERVAL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QApplication::setKeyboardInputInterval( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setLayoutDirection( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QAPPLICATION_SETLAYOUTDIRECTION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QApplication::setLayoutDirection( (Qt::LayoutDirection) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setOverrideCursor( const QCursor & cursor )
*/
HB_FUNC_STATIC( QAPPLICATION_SETOVERRIDECURSOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
#endif
    QApplication::setOverrideCursor( *PQCURSOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setPalette( const QPalette & palette, const char * className = 0 )
*/
HB_FUNC_STATIC( QAPPLICATION_SETPALETTE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQPALETTE(1) && (HB_ISCHAR(2)||HB_ISNIL(2)) )
  {
#endif
    QApplication::setPalette( *PQPALETTE(1), OPCONSTCHAR(2,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setQuitOnLastWindowClosed( bool quit )
*/
HB_FUNC_STATIC( QAPPLICATION_SETQUITONLASTWINDOWCLOSED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
#endif
    QApplication::setQuitOnLastWindowClosed( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setStartDragDistance( int l )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGDISTANCE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QApplication::setStartDragDistance( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setStartDragTime( int ms )
*/
HB_FUNC_STATIC( QAPPLICATION_SETSTARTDRAGTIME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QApplication::setStartDragTime( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QAPPLICATION_SETSTYLE )
{
  if( ISNUMPAR(1) && HB_ISOBJECT(1) )
  {
    /*
    static void setStyle( QStyle * style )
    */
    QApplication::setStyle( PQSTYLE(1) );

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QStyle * setStyle( const QString & style )
    */
    QStyle * ptr = QApplication::setStyle( PQSTRING(1) );
    Qt5xHb::createReturnQObjectClass(ptr, "QSTYLE");
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static void setWheelScrollLines( int )
*/
HB_FUNC_STATIC( QAPPLICATION_SETWHEELSCROLLLINES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QApplication::setWheelScrollLines( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setWindowIcon( const QIcon & icon )
*/
HB_FUNC_STATIC( QAPPLICATION_SETWINDOWICON )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && (ISQICON(1)||HB_ISCHAR(1)) )
  {
#endif
    QApplication::setWindowIcon( HB_ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static int startDragDistance()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGDISTANCE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QApplication::startDragDistance() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int startDragTime()
*/
HB_FUNC_STATIC( QAPPLICATION_STARTDRAGTIME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QApplication::startDragTime() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStyle * style()
*/
HB_FUNC_STATIC( QAPPLICATION_STYLE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QStyle * ptr = QApplication::style();
    Qt5xHb::createReturnQObjectClass(ptr, "QSTYLE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    static QWidget * topLevelAt( const QPoint & point )
    */
    QWidget * ptr = QApplication::topLevelAt( *PQPOINT(1) );
    Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    static QWidget * topLevelAt( int x, int y )
    */
    QWidget * ptr = QApplication::topLevelAt( PINT(1), PINT(2) );
    Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QWidgetList topLevelWidgets()
*/
HB_FUNC_STATIC( QAPPLICATION_TOPLEVELWIDGETS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QWidgetList list = QApplication::topLevelWidgets();
    PHB_DYNS pDynSym = hb_dynsymFindName("QWIDGET");
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym != NULL )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pObject = hb_itemNew(NULL);
        hb_itemCopy(pObject, hb_stackReturnItem());
        PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QWIDGET", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int wheelScrollLines()
*/
HB_FUNC_STATIC( QAPPLICATION_WHEELSCROLLLINES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QApplication::wheelScrollLines() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QAPPLICATION_WIDGETAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    static QWidget * widgetAt( const QPoint & point )
    */
    QWidget * ptr = QApplication::widgetAt( *PQPOINT(1) );
    Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    static QWidget * widgetAt( int x, int y )
    */
    QWidget * ptr = QApplication::widgetAt( PINT(1), PINT(2) );
    Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QIcon windowIcon()
*/
HB_FUNC_STATIC( QAPPLICATION_WINDOWICON )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QIcon * ptr = new QIcon( QApplication::windowIcon() );
    Qt5xHb::createReturnClass(ptr, "QICON", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

void QApplicationSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QAPPLICATION_ONABOUTTORELEASEGPURESOURCES )
{
  QApplicationSlots_connect_signal("aboutToReleaseGpuResources()", "aboutToReleaseGpuResources()");
}

HB_FUNC_STATIC( QAPPLICATION_ONABOUTTOUSEGPURESOURCES )
{
  QApplicationSlots_connect_signal("aboutToUseGpuResources()", "aboutToUseGpuResources()");
}

HB_FUNC_STATIC( QAPPLICATION_ONCOMMITDATAREQUEST )
{
  QApplicationSlots_connect_signal("commitDataRequest(QSessionManager)", "commitDataRequest(QSessionManager)");
}

HB_FUNC_STATIC( QAPPLICATION_ONFOCUSCHANGED )
{
  QApplicationSlots_connect_signal("focusChanged(QWidget*,QWidget*)", "focusChanged(QWidget*,QWidget*)");
}

HB_FUNC_STATIC( QAPPLICATION_ONFONTDATABASECHANGED )
{
  QApplicationSlots_connect_signal("fontDatabaseChanged()", "fontDatabaseChanged()");
}

HB_FUNC_STATIC( QAPPLICATION_ONLASTWINDOWCLOSED )
{
  QApplicationSlots_connect_signal("lastWindowClosed()", "lastWindowClosed()");
}

HB_FUNC_STATIC( QAPPLICATION_ONSAVESTATEREQUEST )
{
  QApplicationSlots_connect_signal("saveStateRequest(QSessioManager)", "saveStateRequest(QSessioManager)");
}

#pragma ENDDUMP
