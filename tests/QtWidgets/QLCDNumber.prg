/*

  Qt5xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLCDNumber

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oLCDNumber := QLCDNumber():new( oWindow )
   oLCDNumber:move( 20, 20 )
   oLCDNumber:setTooltip( "Eu sou um QLCDNumber" )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
