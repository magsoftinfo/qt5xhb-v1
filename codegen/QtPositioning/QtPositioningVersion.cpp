%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioningVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioningVersion>
#endif
#endif

HB_FUNC( QTPOSITIONING_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  hb_retc( (const char *) QTPOSITIONING_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QTPOSITIONING_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  hb_retni( QTPOSITIONING_VERSION );
#else
  hb_retni( 0 );
#endif
}
