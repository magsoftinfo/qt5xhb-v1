$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QQMLENGINE
#endif

CLASS QQmlContext INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD baseUrl
   METHOD contextObject
   METHOD contextProperty
   METHOD engine
   METHOD isValid
   METHOD nameForObject
   METHOD parentContext
   METHOD resolvedUrl
   METHOD setBaseUrl
   METHOD setContextObject
   METHOD setContextProperty1
   METHOD setContextProperty2
   METHOD setContextProperty

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQmlContext(QQmlEngine * engine, QObject * parent = 0)
$constructor=|new1|QQmlEngine *,QObject *=0

$prototype=QQmlContext(QQmlContext * parentContext, QObject * parent = 0)
$constructor=|new2|QQmlContext *,QObject *=0

//[1]QQmlContext(QQmlEngine * engine, QObject * parent = 0)
//[2]QQmlContext(QQmlContext * parentContext, QObject * parent = 0)

HB_FUNC_STATIC( QQMLCONTEXT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QQMLCONTEXT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQQMLCONTEXT(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QQMLCONTEXT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QUrl baseUrl() const
$method=|QUrl|baseUrl|

$prototype=QObject * contextObject() const
$method=|QObject *|contextObject|

$prototype=QVariant contextProperty(const QString & name) const
$method=|QVariant|contextProperty|const QString &

$prototype=QQmlEngine * engine() const
$method=|QQmlEngine *|engine|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QString nameForObject(QObject * object) const
$method=|QString|nameForObject|QObject *

$prototype=QQmlContext * parentContext() const
$method=|QQmlContext *|parentContext|

$prototype=QUrl resolvedUrl(const QUrl & src)
$method=|QUrl|resolvedUrl|const QUrl &

$prototype=void setBaseUrl(const QUrl & baseUrl)
$method=|void|setBaseUrl|const QUrl &

$prototype=void setContextObject(QObject * object)
$method=|void|setContextObject|QObject *

$prototype=void setContextProperty(const QString & name, QObject * value)
$method=|void|setContextProperty,setContextProperty1|const QString &,QObject *

$prototype=void setContextProperty(const QString & name, const QVariant & value)
$method=|void|setContextProperty,setContextProperty2|const QString &,const QVariant &

//[1]void setContextProperty(const QString & name, QObject * value)
//[2]void setContextProperty(const QString & name, const QVariant & value)

HB_FUNC_STATIC( QQMLCONTEXT_SETCONTEXTPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QQMLCONTEXT_SETCONTEXTPROPERTY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QQMLCONTEXT_SETCONTEXTPROPERTY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
