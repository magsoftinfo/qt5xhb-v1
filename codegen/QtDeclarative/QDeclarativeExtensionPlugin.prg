$header

#include "hbclass.ch"

CLASS QDeclarativeExtensionPlugin INHERIT QObject

   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual void initializeEngine ( QDeclarativeEngine * engine, const char * uri )
$method=|void|initializeEngine|QDeclarativeEngine *,const char *

$prototype=virtual void registerTypes ( const char * uri ) = 0
$method=|void|registerTypes|const char *

#pragma ENDDUMP
