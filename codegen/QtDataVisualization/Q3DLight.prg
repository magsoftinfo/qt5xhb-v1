%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS Q3DLight INHERIT Q3DObject

   METHOD new
   METHOD delete

   METHOD isAutoPosition
   METHOD setAutoPosition

   METHOD onAutoPositionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit Q3DLight(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=virtual ~Q3DLight()
$deleteMethod

%%
%% Q_PROPERTY(bool autoPosition READ isAutoPosition WRITE setAutoPosition NOTIFY autoPositionChanged REVISION 1)
%%

$prototype=void setAutoPosition(bool enabled)
$method=|void|setAutoPosition|bool

$prototype=bool isAutoPosition()
$method=|bool|isAutoPosition|

%%
%%
%%

#pragma ENDDUMP
