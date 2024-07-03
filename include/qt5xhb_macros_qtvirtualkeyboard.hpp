//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT5XHB_MACROS_QTVIRTUALKEYBOARD_H
#define QT5XHB_MACROS_QTVIRTUALKEYBOARD_H

#define ISQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(n)            Qt5xHb::isObjectDerivedFrom(n, "QVirtualKeyboardAbstractInputMethod")
#define ISQVIRTUALKEYBOARDEXTENSIONPLUGIN(n)                Qt5xHb::isObjectDerivedFrom(n, "QVirtualKeyboardExtensionPlugin")
#define ISQVIRTUALKEYBOARDINPUTCONTEXT(n)                   Qt5xHb::isObjectDerivedFrom(n, "QVirtualKeyboardInputContext")
#define ISQVIRTUALKEYBOARDINPUTENGINE(n)                    Qt5xHb::isObjectDerivedFrom(n, "QVirtualKeyboardInputEngine")
#define ISQVIRTUALKEYBOARDSELECTIONLISTMODEL(n)             Qt5xHb::isObjectDerivedFrom(n, "QVirtualKeyboardSelectionListModel")
#define ISQVIRTUALKEYBOARDTRACE(n)                          Qt5xHb::isObjectDerivedFrom(n, "QVirtualKeyboardTrace")

#define PQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(n)             static_cast<QVirtualKeyboardAbstractInputMethod*>(Qt5xHb::itemGetPtr(n))
#define PQVIRTUALKEYBOARDEXTENSIONPLUGIN(n)                 static_cast<QVirtualKeyboardExtensionPlugin*>(Qt5xHb::itemGetPtr(n))
#define PQVIRTUALKEYBOARDINPUTCONTEXT(n)                    static_cast<QVirtualKeyboardInputContext*>(Qt5xHb::itemGetPtr(n))
#define PQVIRTUALKEYBOARDINPUTENGINE(n)                     static_cast<QVirtualKeyboardInputEngine*>(Qt5xHb::itemGetPtr(n))
#define PQVIRTUALKEYBOARDSELECTIONLISTMODEL(n)              static_cast<QVirtualKeyboardSelectionListModel*>(Qt5xHb::itemGetPtr(n))
#define PQVIRTUALKEYBOARDTRACE(n)                           static_cast<QVirtualKeyboardTrace*>(Qt5xHb::itemGetPtr(n))

#define OPQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(n, v)         HB_ISNIL(n) ? v : static_cast<QVirtualKeyboardAbstractInputMethod*>(Qt5xHb::itemGetPtr(n))
#define OPQVIRTUALKEYBOARDEXTENSIONPLUGIN(n, v)             HB_ISNIL(n) ? v : static_cast<QVirtualKeyboardExtensionPlugin*>(Qt5xHb::itemGetPtr(n))
#define OPQVIRTUALKEYBOARDINPUTCONTEXT(n, v)                HB_ISNIL(n) ? v : static_cast<QVirtualKeyboardInputContext*>(Qt5xHb::itemGetPtr(n))
#define OPQVIRTUALKEYBOARDINPUTENGINE(n, v)                 HB_ISNIL(n) ? v : static_cast<QVirtualKeyboardInputEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQVIRTUALKEYBOARDSELECTIONLISTMODEL(n, v)          HB_ISNIL(n) ? v : static_cast<QVirtualKeyboardSelectionListModel*>(Qt5xHb::itemGetPtr(n))
#define OPQVIRTUALKEYBOARDTRACE(n, v)                       HB_ISNIL(n) ? v : static_cast<QVirtualKeyboardTrace*>(Qt5xHb::itemGetPtr(n))

#endif // QT5XHB_MACROS_QTVIRTUALKEYBOARD_H
