/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QSqlDriverCreator INHERIT QSqlDriverCreatorBase

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlDriverCreator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlDriverCreator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlDriverCreator>
#endif

#pragma ENDDUMP
