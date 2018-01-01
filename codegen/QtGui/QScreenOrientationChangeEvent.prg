%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCREEN
#endif

CLASS QScreenOrientationChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD screen
   METHOD orientation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScreenOrientationChangeEvent(QScreen *screen, Qt::ScreenOrientation orientation)
$constructor=|new|QScreen *,Qt::ScreenOrientation

$deleteMethod

$prototype=QScreen *screen() const
$method=|QScreen *|screen|

$prototype=Qt::ScreenOrientation orientation() const
$method=|Qt::ScreenOrientation|orientation|

#pragma ENDDUMP
