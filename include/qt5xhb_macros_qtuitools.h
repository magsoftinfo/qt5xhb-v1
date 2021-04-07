/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTUITOOLS_H
#define QT5XHB_MACROS_QTUITOOLS_H

#define ISQUILOADER( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QUiLoader" )

#define PQUILOADER( n )                                     static_cast< QUiLoader * >( Qt5xHb::itemGetPtr( n ) )

#define OPQUILOADER( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QUiLoader * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTUITOOLS_H */
