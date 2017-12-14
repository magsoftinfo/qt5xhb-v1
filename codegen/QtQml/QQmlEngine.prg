$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QQMLIMAGEPROVIDERBASE
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QNETWORKACCESSMANAGER
REQUEST QQMLNETWORKACCESSMANAGERFACTORY
REQUEST QQMLCONTEXT
#endif

CLASS QQmlEngine INHERIT QJSEngine

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addNamedBundle
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD importPlugin
   METHOD incubationController
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setIncubationController
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD trimComponentCache
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership

   METHOD onQuit

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QQmlEngine(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addImageProvider(const QString & providerId, QQmlImageProviderBase * provider)
$method=|void|addImageProvider|const QString &,QQmlImageProviderBase *

$prototype=void addImportPath(const QString & path)
$method=|void|addImportPath|const QString &

$prototype=bool addNamedBundle(const QString & name, const QString & fileName)
$method=|bool|addNamedBundle|const QString &,const QString &

$prototype=void addPluginPath(const QString & path)
$method=|void|addPluginPath|const QString &

$prototype=QUrl baseUrl() const
$method=|QUrl|baseUrl|

$prototype=void clearComponentCache()
$method=|void|clearComponentCache|

$prototype=QQmlImageProviderBase * imageProvider(const QString & providerId) const
$method=|QQmlImageProviderBase *|imageProvider|const QString &

$prototype=QStringList importPathList() const
$method=|QStringList|importPathList|

$prototype=bool importPlugin(const QString & filePath, const QString & uri, QList<QQmlError> * errors)
$method=|bool|importPlugin|const QString &,const QString &,QList<QQmlError> *

$prototype=QQmlIncubationController * incubationController() const
$method=|QQmlIncubationController *|incubationController|

$prototype=QNetworkAccessManager * networkAccessManager() const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QQmlNetworkAccessManagerFactory * networkAccessManagerFactory() const
$method=|QQmlNetworkAccessManagerFactory *|networkAccessManagerFactory|

$prototype=QString offlineStoragePath() const
$method=|QString|offlineStoragePath|

$prototype=bool outputWarningsToStandardError() const
$method=|bool|outputWarningsToStandardError|

$prototype=QStringList pluginPathList() const
$method=|QStringList|pluginPathList|

$prototype=void removeImageProvider(const QString & providerId)
$method=|void|removeImageProvider|const QString &

$prototype=QQmlContext * rootContext() const
$method=|QQmlContext *|rootContext|

$prototype=void setBaseUrl(const QUrl & url)
$method=|void|setBaseUrl|const QUrl &

$prototype=void setImportPathList(const QStringList & paths)
$method=|void|setImportPathList|const QStringList &

$prototype=void setIncubationController(QQmlIncubationController * controller)
$method=|void|setIncubationController|QQmlIncubationController *

$prototype=void setNetworkAccessManagerFactory(QQmlNetworkAccessManagerFactory * factory)
$method=|void|setNetworkAccessManagerFactory|QQmlNetworkAccessManagerFactory *

$prototype=void setOfflineStoragePath(const QString & dir)
$method=|void|setOfflineStoragePath|const QString &

$prototype=void setOutputWarningsToStandardError(bool enabled)
$method=|void|setOutputWarningsToStandardError|bool

$prototype=void setPluginPathList(const QStringList & paths)
$method=|void|setPluginPathList|const QStringList &

$prototype=void trimComponentCache()
$method=|void|trimComponentCache|

$prototype=static QQmlContext * contextForObject(const QObject * object)
$staticMethod=|QQmlContext *|contextForObject|const QObject *

$prototype=static ObjectOwnership objectOwnership(QObject * object)
$staticMethod=|QQmlEngine::ObjectOwnership|objectOwnership|QObject *

$prototype=static void setContextForObject(QObject * object, QQmlContext * context)
$staticMethod=|void|setContextForObject|QObject *,QQmlContext *

$prototype=static void setObjectOwnership(QObject * object, ObjectOwnership ownership)
$staticMethod=|void|setObjectOwnership|QObject *,QQmlEngine::ObjectOwnership

#pragma ENDDUMP
