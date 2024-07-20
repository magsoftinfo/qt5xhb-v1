//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMNAMEDNODEMAP
#endif

CLASS QDomDocumentType INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD entities
   METHOD internalSubset
   METHOD name
   METHOD nodeType
   METHOD notations
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomDocumentType
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomDocumentType>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtXml/QDomDocumentType>
#endif

HB_FUNC_STATIC(QDOMDOCUMENTTYPE_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QDomDocumentType()
    */
    QDomDocumentType *obj = new QDomDocumentType();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1))
  {
    /*
    QDomDocumentType( const QDomDocumentType &n )
    */
    QDomDocumentType *obj = new QDomDocumentType(*PQDOMDOCUMENTTYPE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDOMDOCUMENTTYPE_DELETE)
{
  QDomDocumentType *obj = (QDomDocumentType *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QDomNamedNodeMap entities() const
*/
HB_FUNC_STATIC(QDOMDOCUMENTTYPE_ENTITIES)
{
  QDomDocumentType *obj = (QDomDocumentType *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDomNamedNodeMap *ptr = new QDomNamedNodeMap(obj->entities());
      Qt5xHb::createReturnClass(ptr, "QDOMNAMEDNODEMAP", true);
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
QString internalSubset() const
*/
HB_FUNC_STATIC(QDOMDOCUMENTTYPE_INTERNALSUBSET)
{
  QDomDocumentType *obj = (QDomDocumentType *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->internalSubset());
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
QString name() const
*/
HB_FUNC_STATIC(QDOMDOCUMENTTYPE_NAME)
{
  QDomDocumentType *obj = (QDomDocumentType *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->name());
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
QDomNode::NodeType nodeType() const
*/
HB_FUNC_STATIC(QDOMDOCUMENTTYPE_NODETYPE)
{
  QDomDocumentType *obj = (QDomDocumentType *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->nodeType());
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
QDomNamedNodeMap notations() const
*/
HB_FUNC_STATIC(QDOMDOCUMENTTYPE_NOTATIONS)
{
  QDomDocumentType *obj = (QDomDocumentType *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDomNamedNodeMap *ptr = new QDomNamedNodeMap(obj->notations());
      Qt5xHb::createReturnClass(ptr, "QDOMNAMEDNODEMAP", true);
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
QString publicId() const
*/
HB_FUNC_STATIC(QDOMDOCUMENTTYPE_PUBLICID)
{
  QDomDocumentType *obj = (QDomDocumentType *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->publicId());
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
QString systemId() const
*/
HB_FUNC_STATIC(QDOMDOCUMENTTYPE_SYSTEMID)
{
  QDomDocumentType *obj = (QDomDocumentType *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->systemId());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
