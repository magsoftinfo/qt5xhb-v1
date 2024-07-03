//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT5XHB_MACROS_QTX11EXTRAS_H
#define QT5XHB_MACROS_QTX11EXTRAS_H

#define ISQX11INFO(n)                                       Qt5xHb::isObjectDerivedFrom(n, "QX11Info")

#define PQX11INFO(n)                                        static_cast<QX11Info*>(Qt5xHb::itemGetPtr(n))

#define OPQX11INFO(n, v)                                    HB_ISNIL(n) ? v : static_cast<QX11Info*>(Qt5xHb::itemGetPtr(n))

#endif // QT5XHB_MACROS_QTX11EXTRAS_H
