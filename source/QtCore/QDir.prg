/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCHAR
REQUEST QFILEINFO
#endif

CLASS QDir

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD canonicalPath
   METHOD cd
   METHOD cdUp
   METHOD count
   METHOD dirName
   METHOD entryInfoList
   METHOD entryList
   METHOD exists
   METHOD filePath
   METHOD filter
   METHOD isAbsolute
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD makeAbsolute
   METHOD mkdir
   METHOD mkpath
   METHOD nameFilters
   METHOD path
   METHOD refresh
   METHOD relativeFilePath
   METHOD remove
   METHOD removeRecursively
   METHOD rename
   METHOD rmdir
   METHOD rmpath
   METHOD setFilter
   METHOD setNameFilters
   METHOD setPath
   METHOD setSorting
   METHOD sorting
   METHOD swap
   METHOD addSearchPath
   METHOD cleanPath
   METHOD current
   METHOD currentPath
   METHOD drives
   METHOD fromNativeSeparators
   METHOD home
   METHOD homePath
   METHOD isAbsolutePath
   METHOD isRelativePath
   METHOD match
   METHOD root
   METHOD rootPath
   METHOD searchPaths
   METHOD separator
   METHOD setCurrent
   METHOD setSearchPaths
   METHOD temp
   METHOD tempPath
   METHOD toNativeSeparators

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDir
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QDir>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QDir>
#endif

/*
QDir(const QDir & dir)
*/
void QDir_new1()
{
  QDir * obj = new QDir( *PQDIR(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QDir(const QString & path = QString())
*/
void QDir_new2()
{
  QDir * obj = new QDir( OPQSTRING(1,QString()) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
*/
void QDir_new3()
{
  QDir * obj = new QDir( PQSTRING(1), PQSTRING(2), HB_ISNIL(3)? (QDir::SortFlags) QDir::SortFlags( QDir::Name | QDir::IgnoreCase ) : (QDir::SortFlags) hb_parni(3), HB_ISNIL(4)? (QDir::Filters) QDir::AllEntries : (QDir::Filters) hb_parni(4) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QDIR_NEW )
{
  if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QDir_new1();
  }
  else if( ISBETWEEN(0,1) && (ISCHAR(1)||HB_ISNIL(1)) )
  {
    QDir_new2();
  }
  else if( ISBETWEEN(2,4) && HB_ISCHAR(1) && HB_ISCHAR(2) && (ISNUM(3)||HB_ISNIL(3)) && (ISNUM(4)||HB_ISNIL(4)) )
  {
    QDir_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIR_DELETE )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString absoluteFilePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_ABSOLUTEFILEPATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->absoluteFilePath( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString absolutePath() const
*/
HB_FUNC_STATIC( QDIR_ABSOLUTEPATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->absolutePath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString canonicalPath() const
*/
HB_FUNC_STATIC( QDIR_CANONICALPATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->canonicalPath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool cd(const QString & dirName)
*/
HB_FUNC_STATIC( QDIR_CD )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->cd( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool cdUp()
*/
HB_FUNC_STATIC( QDIR_CDUP )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->cdUp() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
uint count() const
*/
HB_FUNC_STATIC( QDIR_COUNT )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUINT( obj->count() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString dirName() const
*/
HB_FUNC_STATIC( QDIR_DIRNAME )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->dirName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
void QDir_entryInfoList1()
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QFileInfoList list = obj->entryInfoList( PQSTRINGLIST(1), HB_ISNIL(2)? (QDir::Filters) QDir::NoFilter : (QDir::Filters) hb_parni(2), HB_ISNIL(3)? (QDir::SortFlags) QDir::NoSort : (QDir::SortFlags) hb_parni(3) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QFILEINFO" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QFILEINFO", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
void QDir_entryInfoList2()
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QFileInfoList list = obj->entryInfoList( HB_ISNIL(1)? (QDir::Filters) QDir::NoFilter : (QDir::Filters) hb_parni(1), HB_ISNIL(2)? (QDir::SortFlags) QDir::NoSort : (QDir::SortFlags) hb_parni(2) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QFILEINFO" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QFILEINFO", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
  }
}

HB_FUNC_STATIC( QDIR_ENTRYINFOLIST )
{
  if( ISBETWEEN(1,3) && HB_ISARRAY(1) && (ISNUM(2)||HB_ISNIL(2)) && (ISNUM(3)||HB_ISNIL(3)) )
  {
    QDir_entryInfoList1();
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||HB_ISNIL(1)) && (ISNUM(2)||HB_ISNIL(2)) )
  {
    QDir_entryInfoList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
void QDir_entryList1()
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->entryList( PQSTRINGLIST(1), HB_ISNIL(2)? (QDir::Filters) QDir::NoFilter : (QDir::Filters) hb_parni(2), HB_ISNIL(3)? (QDir::SortFlags) QDir::NoSort : (QDir::SortFlags) hb_parni(3) ) );
  }
}

/*
QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
void QDir_entryList2()
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->entryList( HB_ISNIL(1)? (QDir::Filters) QDir::NoFilter : (QDir::Filters) hb_parni(1), HB_ISNIL(2)? (QDir::SortFlags) QDir::NoSort : (QDir::SortFlags) hb_parni(2) ) );
  }
}

HB_FUNC_STATIC( QDIR_ENTRYLIST )
{
  if( ISBETWEEN(1,3) && HB_ISARRAY(1) && (ISNUM(2)||HB_ISNIL(2)) && (ISNUM(3)||HB_ISNIL(3)) )
  {
    QDir_entryList1();
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||HB_ISNIL(1)) && (ISNUM(2)||HB_ISNIL(2)) )
  {
    QDir_entryList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool exists(const QString & name) const
*/
void QDir_exists1()
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->exists( PQSTRING(1) ) );
  }
}

/*
bool exists() const
*/
void QDir_exists2()
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->exists() );
  }
}

HB_FUNC_STATIC( QDIR_EXISTS )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    QDir_exists1();
  }
  else if( ISNUMPAR(0) )
  {
    QDir_exists2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString filePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_FILEPATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->filePath( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Filters filter() const
*/
HB_FUNC_STATIC( QDIR_FILTER )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->filter() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isAbsolute() const
*/
HB_FUNC_STATIC( QDIR_ISABSOLUTE )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAbsolute() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isReadable() const
*/
HB_FUNC_STATIC( QDIR_ISREADABLE )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isRelative() const
*/
HB_FUNC_STATIC( QDIR_ISRELATIVE )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRelative() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isRoot() const
*/
HB_FUNC_STATIC( QDIR_ISROOT )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRoot() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool makeAbsolute()
*/
HB_FUNC_STATIC( QDIR_MAKEABSOLUTE )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->makeAbsolute() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool mkdir(const QString & dirName) const
*/
HB_FUNC_STATIC( QDIR_MKDIR )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->mkdir( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool mkpath(const QString & dirPath) const
*/
HB_FUNC_STATIC( QDIR_MKPATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->mkpath( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QDIR_NAMEFILTERS )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->nameFilters() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString path() const
*/
HB_FUNC_STATIC( QDIR_PATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->path() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void refresh() const
*/
HB_FUNC_STATIC( QDIR_REFRESH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->refresh();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString relativeFilePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_RELATIVEFILEPATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->relativeFilePath( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool remove(const QString & fileName)
*/
HB_FUNC_STATIC( QDIR_REMOVE )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->remove( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool removeRecursively()
*/
HB_FUNC_STATIC( QDIR_REMOVERECURSIVELY )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->removeRecursively() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool rename(const QString & oldName, const QString & newName)
*/
HB_FUNC_STATIC( QDIR_RENAME )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->rename( PQSTRING(1), PQSTRING(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool rmdir(const QString & dirName) const
*/
HB_FUNC_STATIC( QDIR_RMDIR )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->rmdir( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool rmpath(const QString & dirPath) const
*/
HB_FUNC_STATIC( QDIR_RMPATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->rmpath( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setFilter(Filters filters)
*/
HB_FUNC_STATIC( QDIR_SETFILTER )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFilter( (QDir::Filters) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNameFilters(const QStringList & nameFilters)
*/
HB_FUNC_STATIC( QDIR_SETNAMEFILTERS )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setNameFilters( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_SETPATH )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPath( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSorting(SortFlags sort)
*/
HB_FUNC_STATIC( QDIR_SETSORTING )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSorting( (QDir::SortFlags) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIR_SORTING )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->sorting() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void swap(QDir & other)
*/
HB_FUNC_STATIC( QDIR_SWAP )
{
  QDir * obj = (QDir *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDIR(1) )
    {
#endif
      obj->swap( *PQDIR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void addSearchPath(const QString & prefix, const QString & path)
*/
HB_FUNC_STATIC( QDIR_ADDSEARCHPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
#endif
    QDir::addSearchPath( PQSTRING(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString cleanPath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_CLEANPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RQSTRING( QDir::cleanPath( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QDir current()
*/
HB_FUNC_STATIC( QDIR_CURRENT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QDir * ptr = new QDir( QDir::current() );
    Qt5xHb::createReturnClass( ptr, "QDIR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString currentPath()
*/
HB_FUNC_STATIC( QDIR_CURRENTPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QDir::currentPath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QFileInfoList drives()
*/
HB_FUNC_STATIC( QDIR_DRIVES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QFileInfoList list = QDir::drives();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QFILEINFO" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QFILEINFO", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString fromNativeSeparators(const QString & pathName)
*/
HB_FUNC_STATIC( QDIR_FROMNATIVESEPARATORS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RQSTRING( QDir::fromNativeSeparators( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QDir home()
*/
HB_FUNC_STATIC( QDIR_HOME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QDir * ptr = new QDir( QDir::home() );
    Qt5xHb::createReturnClass( ptr, "QDIR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString homePath()
*/
HB_FUNC_STATIC( QDIR_HOMEPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QDir::homePath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool isAbsolutePath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_ISABSOLUTEPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RBOOL( QDir::isAbsolutePath( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool isRelativePath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_ISRELATIVEPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RBOOL( QDir::isRelativePath( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool match(const QString & filter, const QString & fileName)
*/
void QDir_match1()
{

  RBOOL( QDir::match( PQSTRING(1), PQSTRING(2) ) );
}

/*
static bool match(const QStringList & filters, const QString & fileName)
*/
void QDir_match2()
{

  RBOOL( QDir::match( PQSTRINGLIST(1), PQSTRING(2) ) );
}

HB_FUNC_STATIC( QDIR_MATCH )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    QDir_match1();
  }
  else if( ISNUMPAR(2) && HB_ISARRAY(1) && HB_ISCHAR(2) )
  {
    QDir_match2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDir root()
*/
HB_FUNC_STATIC( QDIR_ROOT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QDir * ptr = new QDir( QDir::root() );
    Qt5xHb::createReturnClass( ptr, "QDIR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString rootPath()
*/
HB_FUNC_STATIC( QDIR_ROOTPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QDir::rootPath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QStringList searchPaths(const QString & prefix)
*/
HB_FUNC_STATIC( QDIR_SEARCHPATHS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RQSTRINGLIST( QDir::searchPaths( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QChar separator()
*/
HB_FUNC_STATIC( QDIR_SEPARATOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QChar * ptr = new QChar( QDir::separator() );
    Qt5xHb::createReturnClass( ptr, "QCHAR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool setCurrent(const QString & path)
*/
HB_FUNC_STATIC( QDIR_SETCURRENT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RBOOL( QDir::setCurrent( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
*/
HB_FUNC_STATIC( QDIR_SETSEARCHPATHS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
  {
#endif
    QDir::setSearchPaths( PQSTRING(1), PQSTRINGLIST(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QDir temp()
*/
HB_FUNC_STATIC( QDIR_TEMP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QDir * ptr = new QDir( QDir::temp() );
    Qt5xHb::createReturnClass( ptr, "QDIR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString tempPath()
*/
HB_FUNC_STATIC( QDIR_TEMPPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QDir::tempPath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString toNativeSeparators(const QString & pathName)
*/
HB_FUNC_STATIC( QDIR_TONATIVESEPARATORS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RQSTRING( QDir::toNativeSeparators( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QDIR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDIR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDIR_NEWFROM );
}

HB_FUNC_STATIC( QDIR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDIR_NEWFROM );
}

HB_FUNC_STATIC( QDIR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDIR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
