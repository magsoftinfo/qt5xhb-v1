%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QOpenGLVertexArrayObject INHERIT QObject

   METHOD new
   METHOD delete
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD objectId
   METHOD bind
   METHOD release

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLVertexArrayObject(QObject* parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool create()
$method=|bool|create|

$prototype=void destroy()
$method=|void|destroy|

$prototype=bool isCreated() const
$method=|bool|isCreated|

$prototype=GLuint objectId() const
$method=|GLuint|objectId|

$prototype=void bind()
$method=|void|bind|

$prototype=void release()
$method=|void|release|

#pragma ENDDUMP
