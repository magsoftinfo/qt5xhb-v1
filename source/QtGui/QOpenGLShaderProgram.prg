/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOPENGLSHADER
#endif

CLASS QOpenGLShaderProgram INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addShader
   METHOD removeShader
   METHOD shaders
   METHOD addShaderFromSourceCode1
   METHOD addShaderFromSourceCode2
   METHOD addShaderFromSourceCode3
   METHOD addShaderFromSourceCode
   METHOD addShaderFromSourceFile
   METHOD removeAllShaders
   METHOD link
   METHOD isLinked
   METHOD log
   METHOD bind
   METHOD release
   METHOD programId
   METHOD maxGeometryOutputVertices
   METHOD setPatchVertexCount
   METHOD patchVertexCount
   METHOD hasOpenGLShaderPrograms

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOpenGLShaderProgram
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLShaderProgram>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLShaderProgram>
#endif

/*
QOpenGLShaderProgram( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QOpenGLShaderProgram * obj = new QOpenGLShaderProgram( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_DELETE )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool addShader( QOpenGLShader * shader )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADER )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOPENGLSHADER(1) )
    {
#endif
      RBOOL( obj->addShader( PQOPENGLSHADER(1) ) );
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
void removeShader( QOpenGLShader * shader )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_REMOVESHADER )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOPENGLSHADER(1) )
    {
#endif
      obj->removeShader( PQOPENGLSHADER(1) );
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
QList<QOpenGLShader *> shaders() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_SHADERS )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QOpenGLShader *> list = obj->shaders();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QOPENGLSHADER" );
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
          PHB_ITEM pItem = hb_itemPutPtr( NULL, list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QOPENGLSHADER", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
bool addShaderFromSourceCode( QOpenGLShader::ShaderType type, const char * source )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE1 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->addShaderFromSourceCode( (QOpenGLShader::ShaderType) hb_parni(1), PCONSTCHAR(2) ) );
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
bool addShaderFromSourceCode( QOpenGLShader::ShaderType type, const QByteArray & source )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE2 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQBYTEARRAY(2) )
    {
#endif
      RBOOL( obj->addShaderFromSourceCode( (QOpenGLShader::ShaderType) hb_parni(1), *PQBYTEARRAY(2) ) );
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
bool addShaderFromSourceCode( QOpenGLShader::ShaderType type, const QString & source )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE3 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->addShaderFromSourceCode( (QOpenGLShader::ShaderType) hb_parni(1), PQSTRING(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE )
{
}

/*
bool addShaderFromSourceFile( QOpenGLShader::ShaderType type, const QString & fileName )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCEFILE )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->addShaderFromSourceFile( (QOpenGLShader::ShaderType) hb_parni(1), PQSTRING(2) ) );
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
void removeAllShaders()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_REMOVEALLSHADERS )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->removeAllShaders();
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
virtual bool link()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_LINK )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->link() );
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
bool isLinked() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ISLINKED )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLinked() );
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
QString log() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_LOG )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->log() );
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
bool bind()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_BIND )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->bind() );
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
void release()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_RELEASE )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->release();
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
GLuint programId() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_PROGRAMID )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->programId() );
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
int maxGeometryOutputVertices() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_MAXGEOMETRYOUTPUTVERTICES )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maxGeometryOutputVertices() );
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
void setPatchVertexCount( int count )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_SETPATCHVERTEXCOUNT )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPatchVertexCount( PINT(1) );
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
int patchVertexCount() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_PATCHVERTEXCOUNT )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->patchVertexCount() );
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
static bool hasOpenGLShaderPrograms( QOpenGLContext * context = 0 )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_HASOPENGLSHADERPROGRAMS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0,1) && (ISQOPENGLCONTEXT(1)||HB_ISNIL(1)) )
  {
#endif
    RBOOL( QOpenGLShaderProgram::hasOpenGLShaderPrograms( OPQOPENGLCONTEXT(1,0) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

#pragma ENDDUMP
