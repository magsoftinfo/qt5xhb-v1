/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBKIT_H
#define QT5XHB_MACROS_QTWEBKIT_H

#define ISQWEBDATABASE( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QWebDatabase" )
#define ISQWEBELEMENT( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QWebElement" )
#define ISQWEBELEMENTCOLLECTION( n )                        Qt5xHb::isObjectDerivedFrom( n, "QWebElementCollection" )
#define ISQWEBHISTORY( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QWebHistory" )
#define ISQWEBHISTORYINTERFACE( n )                         Qt5xHb::isObjectDerivedFrom( n, "QWebHistoryInterface" )
#define ISQWEBHISTORYITEM( n )                              Qt5xHb::isObjectDerivedFrom( n, "QWebHistoryItem" )
#define ISQWEBPLUGINFACTORY( n )                            Qt5xHb::isObjectDerivedFrom( n, "QWebPluginFactory" )
#define ISQWEBSECURITYORIGIN( n )                           Qt5xHb::isObjectDerivedFrom( n, "QWebSecurityOrigin" )
#define ISQWEBSETTINGS( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QWebSettings" )

#define PQWEBDATABASE( n )                                  static_cast< QWebDatabase * >( Qt5xHb::itemGetPtr( n ) )
#define PQWEBELEMENT( n )                                   static_cast< QWebElement * >( Qt5xHb::itemGetPtr( n ) )
#define PQWEBELEMENTCOLLECTION( n )                         static_cast< QWebElementCollection * >( Qt5xHb::itemGetPtr( n ) )
#define PQWEBHISTORY( n )                                   static_cast< QWebHistory * >( Qt5xHb::itemGetPtr( n ) )
#define PQWEBHISTORYINTERFACE( n )                          static_cast< QWebHistoryInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQWEBHISTORYITEM( n )                               static_cast< QWebHistoryItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQWEBPLUGINFACTORY( n )                             static_cast< QWebPluginFactory * >( Qt5xHb::itemGetPtr( n ) )
#define PQWEBSECURITYORIGIN( n )                            static_cast< QWebSecurityOrigin * >( Qt5xHb::itemGetPtr( n ) )
#define PQWEBSETTINGS( n )                                  static_cast< QWebSettings * >( Qt5xHb::itemGetPtr( n ) )

#define OPQWEBDATABASE( n, v )                              HB_ISNIL( n ) ? v : static_cast< QWebDatabase * >( Qt5xHb::itemGetPtr( n ) )
#define OPQWEBELEMENT( n, v )                               HB_ISNIL( n ) ? v : static_cast< QWebElement * >( Qt5xHb::itemGetPtr( n ) )
#define OPQWEBELEMENTCOLLECTION( n, v )                     HB_ISNIL( n ) ? v : static_cast< QWebElementCollection * >( Qt5xHb::itemGetPtr( n ) )
#define OPQWEBHISTORY( n, v )                               HB_ISNIL( n ) ? v : static_cast< QWebHistory * >( Qt5xHb::itemGetPtr( n ) )
#define OPQWEBHISTORYINTERFACE( n, v )                      HB_ISNIL( n ) ? v : static_cast< QWebHistoryInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQWEBHISTORYITEM( n, v )                           HB_ISNIL( n ) ? v : static_cast< QWebHistoryItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQWEBPLUGINFACTORY( n, v )                         HB_ISNIL( n ) ? v : static_cast< QWebPluginFactory * >( Qt5xHb::itemGetPtr( n ) )
#define OPQWEBSECURITYORIGIN( n, v )                        HB_ISNIL( n ) ? v : static_cast< QWebSecurityOrigin * >( Qt5xHb::itemGetPtr( n ) )
#define OPQWEBSETTINGS( n, v )                              HB_ISNIL( n ) ? v : static_cast< QWebSettings * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTWEBKIT_H */
