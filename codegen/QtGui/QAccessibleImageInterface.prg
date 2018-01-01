%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QAccessibleImageInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD imageDescription
   METHOD imageSize

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString imageDescription() const = 0
$virtualMethod=|QString|imageDescription|

$prototype=virtual QSize imageSize() const = 0
$virtualMethod=|QSize|imageSize|

$extraMethods

#pragma ENDDUMP
