/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXAGGREGATED
REQUEST QAXOBJECT
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QAxWidget INHERIT QWidget,QAxBase

   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD doVerb
   METHOD clear
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD asVariant
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs

   METHOD onException
   METHOD onPropertyChanged
   METHOD onSignal

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxWidget>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxWidget>
#endif

#include <QtCore/QStringList>
#include <ActiveQt/QAxObject>

HB_FUNC_STATIC(QAXWIDGET_NEW)
{
  if (ISBETWEEN(0, 2) && (ISQWIDGET(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QAxWidget( QWidget * parent = 0, Qt::WindowFlags f = 0 )
    */
    QAxWidget *obj = new QAxWidget(OPQWIDGET(1, 0), HB_ISNIL(2) ? (Qt::WindowFlags)0 : (Qt::WindowFlags)hb_parni(2));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (ISQWIDGET(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    QAxWidget( const QString & c, QWidget * parent = 0, Qt::WindowFlags f = 0 )
    */
    QAxWidget *obj =
        new QAxWidget(PQSTRING(1), OPQWIDGET(2, 0), HB_ISNIL(3) ? (Qt::WindowFlags)0 : (Qt::WindowFlags)hb_parni(3));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 3) && HB_ISPOINTER(1) && (ISQWIDGET(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    QAxWidget( IUnknown * iface, QWidget * parent = 0, Qt::WindowFlags f = 0 )
    */
    QAxWidget *obj = new QAxWidget((IUnknown *)hb_parptr(1), OPQWIDGET(2, 0),
                                   HB_ISNIL(3) ? (Qt::WindowFlags)0 : (Qt::WindowFlags)hb_parni(3));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QAXWIDGET_DELETE)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QAxAggregated * createAggregate()
*/
HB_FUNC_STATIC(QAXWIDGET_CREATEAGGREGATE)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAxAggregated *ptr = obj->createAggregate();
      Qt5xHb::createReturnClass(ptr, "QAXAGGREGATED", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool doVerb( const QString & verb )
*/
HB_FUNC_STATIC(QAXWIDGET_DOVERB)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->doVerb(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void clear()
*/
HB_FUNC_STATIC(QAXWIDGET_CLEAR)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QSize minimumSizeHint() const
*/
HB_FUNC_STATIC(QAXWIDGET_MINIMUMSIZEHINT)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->minimumSizeHint());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC(QAXWIDGET_SIZEHINT)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->sizeHint());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVariant asVariant() const
*/
HB_FUNC_STATIC(QAXWIDGET_ASVARIANT)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVariant *ptr = new QVariant(obj->asVariant());
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString control() const
*/
HB_FUNC_STATIC(QAXWIDGET_CONTROL)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->control());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void disableClassInfo()
*/
HB_FUNC_STATIC(QAXWIDGET_DISABLECLASSINFO)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->disableClassInfo();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void disableEventSink()
*/
HB_FUNC_STATIC(QAXWIDGET_DISABLEEVENTSINK)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->disableEventSink();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void disableMetaObject()
*/
HB_FUNC_STATIC(QAXWIDGET_DISABLEMETAOBJECT)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->disableMetaObject();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QAXWIDGET_DYNAMICCALL)
{
  if (ISBETWEEN(1, 9) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)) && (ISQVARIANT(3) || HB_ISNIL(3)) &&
      (ISQVARIANT(4) || HB_ISNIL(4)) && (ISQVARIANT(5) || HB_ISNIL(5)) && (ISQVARIANT(6) || HB_ISNIL(6)) &&
      (ISQVARIANT(7) || HB_ISNIL(7)) && (ISQVARIANT(8) || HB_ISNIL(8)) && (ISQVARIANT(9) || HB_ISNIL(9)))
  {
    /*
    QVariant dynamicCall( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(),
    const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const
    QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
    */
    QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QVariant *ptr =
          new QVariant(obj->dynamicCall(PCONSTCHAR(1), HB_ISNIL(2) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(2),
                                        HB_ISNIL(3) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(3),
                                        HB_ISNIL(4) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(4),
                                        HB_ISNIL(5) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(5),
                                        HB_ISNIL(6) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(6),
                                        HB_ISNIL(7) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(7),
                                        HB_ISNIL(8) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(8),
                                        HB_ISNIL(9) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(9)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2))
  {
    /*
    QVariant dynamicCall( const char * function, QList<QVariant> & vars )
    */
    QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QVariant *ptr = new QVariant(obj->dynamicCall(PCONSTCHAR(1), PQVARIANTLIST(2)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString generateDocumentation()
*/
HB_FUNC_STATIC(QAXWIDGET_GENERATEDOCUMENTATION)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->generateDocumentation());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC(QAXWIDGET_ISNULL)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool propertyWritable( const char * prop ) const
*/
HB_FUNC_STATIC(QAXWIDGET_PROPERTYWRITABLE)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->propertyWritable(PCONSTCHAR(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QAXWIDGET_QUERYSUBOBJECT)
{
  if (ISBETWEEN(1, 9) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)) && (ISQVARIANT(3) || HB_ISNIL(3)) &&
      (ISQVARIANT(4) || HB_ISNIL(4)) && (ISQVARIANT(5) || HB_ISNIL(5)) && (ISQVARIANT(6) || HB_ISNIL(6)) &&
      (ISQVARIANT(7) || HB_ISNIL(7)) && (ISQVARIANT(8) || HB_ISNIL(8)) && (ISQVARIANT(9) || HB_ISNIL(9)))
  {
    /*
    QAxObject * querySubObject( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 =
    QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 =
    QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 =
    QVariant() )
    */
    QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QAxObject *ptr = obj->querySubObject(PCONSTCHAR(1), HB_ISNIL(2) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(2),
                                           HB_ISNIL(3) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(3),
                                           HB_ISNIL(4) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(4),
                                           HB_ISNIL(5) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(5),
                                           HB_ISNIL(6) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(6),
                                           HB_ISNIL(7) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(7),
                                           HB_ISNIL(8) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(8),
                                           HB_ISNIL(9) ? QVariant() : *(QVariant *)Qt5xHb::itemGetPtr(9));
      Qt5xHb::createReturnQObjectClass(ptr, "QAXOBJECT");
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2))
  {
    /*
    QAxObject * querySubObject( const char * name, QList<QVariant> & vars )
    */
    QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QAxObject *ptr = obj->querySubObject(PCONSTCHAR(1), PQVARIANTLIST(2));
      Qt5xHb::createReturnQObjectClass(ptr, "QAXOBJECT");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool setControl( const QString & )
*/
HB_FUNC_STATIC(QAXWIDGET_SETCONTROL)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->setControl(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setPropertyWritable( const char * prop, bool ok )
*/
HB_FUNC_STATIC(QAXWIDGET_SETPROPERTYWRITABLE)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISLOG(2))
    {
#endif
      obj->setPropertyWritable(PCONSTCHAR(1), PBOOL(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QStringList verbs() const
*/
HB_FUNC_STATIC(QAXWIDGET_VERBS)
{
  QAxWidget *obj = (QAxWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->verbs());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QAxWidgetSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QAXWIDGET_ONEXCEPTION)
{
  QAxWidgetSlots_connect_signal("exception(int,QString,QString,QString)", "exception(int,QString,QString,QString)");
}

HB_FUNC_STATIC(QAXWIDGET_ONPROPERTYCHANGED)
{
  QAxWidgetSlots_connect_signal("propertyChanged(QString)", "propertyChanged(QString)");
}

HB_FUNC_STATIC(QAXWIDGET_ONSIGNAL)
{
  QAxWidgetSlots_connect_signal("signal(QString,int,void*)", "signal(QString,int,void*)");
}

#pragma ENDDUMP
