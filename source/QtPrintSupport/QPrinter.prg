/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QPRINTENGINE
REQUEST QPAINTENGINE
#endif

CLASS QPrinter INHERIT QPagedPaintDevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD collateCopies
   METHOD setCollateCopies
   METHOD colorMode
   METHOD setColorMode
   METHOD copyCount
   METHOD setCopyCount
   METHOD creator
   METHOD setCreator
   METHOD docName
   METHOD setDocName
   METHOD doubleSidedPrinting
   METHOD setDoubleSidedPrinting
   METHOD duplex
   METHOD setDuplex
   METHOD fontEmbeddingEnabled
   METHOD setFontEmbeddingEnabled
   METHOD fromPage
   METHOD fullPage
   METHOD setFullPage
   METHOD getPageMargins
   METHOD setPageMargins
   METHOD isValid
   METHOD newPage
   METHOD orientation
   METHOD setOrientation
   METHOD outputFileName
   METHOD setOutputFileName
   METHOD outputFormat
   METHOD setOutputFormat
   METHOD pageOrder
   METHOD setPageOrder
   METHOD pageRect
   METHOD paperRect
   METHOD paperSize
   METHOD paperSource
   METHOD setPaperSource
   METHOD printEngine
   METHOD printProgram
   METHOD setPrintProgram
   METHOD printRange
   METHOD setPrintRange
   METHOD printerName
   METHOD setPrinterName
   METHOD printerSelectionOption
   METHOD printerState
   METHOD resolution
   METHOD setResolution
   METHOD setFromTo
   METHOD setPaperSize
   METHOD setPrinterSelectionOption
   METHOD setWinPageSize
   METHOD supportedPaperSources
   METHOD supportedResolutions
   METHOD supportsMultipleCopies
   METHOD toPage
   METHOD winPageSize
   METHOD paintEngine
   METHOD devType
   METHOD pageSize
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD paperName
   METHOD setPaperName
   METHOD numCopies
   METHOD setNumCopies
   METHOD actualNumCopies

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPrinter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPrinter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPrinter>
#endif

/*
QPrinter ( PrinterMode mode = ScreenResolution )
*/
void QPrinter_new1 ()
{
  QPrinter * o = new QPrinter ( ISNIL(1)? (QPrinter::PrinterMode) QPrinter::ScreenResolution : (QPrinter::PrinterMode) hb_parni(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
*/
void QPrinter_new2 ()
{
  QPrinter * o = new QPrinter ( *PQPRINTERINFO(1), ISNIL(2)? (QPrinter::PrinterMode) QPrinter::ScreenResolution : (QPrinter::PrinterMode) hb_parni(2) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QPrinter ( PrinterMode mode = ScreenResolution )
//[2]QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )

HB_FUNC_STATIC( QPRINTER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QPrinter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPRINTERINFO(1) && ISOPTNUM(2) )
  {
    QPrinter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTER_DELETE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool abort ()
*/
HB_FUNC_STATIC( QPRINTER_ABORT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->abort () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool collateCopies () const
*/
HB_FUNC_STATIC( QPRINTER_COLLATECOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->collateCopies () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCollateCopies ( bool collate )
*/
HB_FUNC_STATIC( QPRINTER_SETCOLLATECOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setCollateCopies ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ColorMode colorMode () const
*/
HB_FUNC_STATIC( QPRINTER_COLORMODE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->colorMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColorMode ( ColorMode newColorMode )
*/
HB_FUNC_STATIC( QPRINTER_SETCOLORMODE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setColorMode ( (QPrinter::ColorMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int copyCount () const
*/
HB_FUNC_STATIC( QPRINTER_COPYCOUNT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->copyCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCopyCount ( int count )
*/
HB_FUNC_STATIC( QPRINTER_SETCOPYCOUNT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCopyCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString creator () const
*/
HB_FUNC_STATIC( QPRINTER_CREATOR )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->creator () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCreator ( const QString & creator )
*/
HB_FUNC_STATIC( QPRINTER_SETCREATOR )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setCreator ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString docName () const
*/
HB_FUNC_STATIC( QPRINTER_DOCNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->docName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDocName ( const QString & name )
*/
HB_FUNC_STATIC( QPRINTER_SETDOCNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setDocName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool doubleSidedPrinting () const
*/
HB_FUNC_STATIC( QPRINTER_DOUBLESIDEDPRINTING )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->doubleSidedPrinting () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDoubleSidedPrinting ( bool doubleSided )
*/
HB_FUNC_STATIC( QPRINTER_SETDOUBLESIDEDPRINTING )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDoubleSidedPrinting ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
DuplexMode duplex () const
*/
HB_FUNC_STATIC( QPRINTER_DUPLEX )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->duplex () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDuplex ( DuplexMode duplex )
*/
HB_FUNC_STATIC( QPRINTER_SETDUPLEX )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDuplex ( (QPrinter::DuplexMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool fontEmbeddingEnabled () const
*/
HB_FUNC_STATIC( QPRINTER_FONTEMBEDDINGENABLED )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->fontEmbeddingEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFontEmbeddingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QPRINTER_SETFONTEMBEDDINGENABLED )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setFontEmbeddingEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int fromPage () const
*/
HB_FUNC_STATIC( QPRINTER_FROMPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->fromPage () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool fullPage () const
*/
HB_FUNC_STATIC( QPRINTER_FULLPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->fullPage () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFullPage ( bool fp )
*/
HB_FUNC_STATIC( QPRINTER_SETFULLPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setFullPage ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getPageMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom, Unit unit ) const
*/
HB_FUNC_STATIC( QPRINTER_GETPAGEMARGINS )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
    {
      qreal par1;
qreal par2;
qreal par3;
qreal par4;
      obj->getPageMargins ( &par1, &par2, &par3, &par4, (QPrinter::Unit) hb_parni(5) );
      hb_stornd( par1, 1 );
hb_stornd( par2, 2 );
hb_stornd( par3, 3 );
hb_stornd( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
*/
HB_FUNC_STATIC( QPRINTER_SETPAGEMARGINS )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
    {
      obj->setPageMargins ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), (QPrinter::Unit) hb_parni(5) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QPRINTER_ISVALID )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool newPage ()
*/
HB_FUNC_STATIC( QPRINTER_NEWPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->newPage () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Orientation orientation () const
*/
HB_FUNC_STATIC( QPRINTER_ORIENTATION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setOrientation ( Orientation orientation )
*/
HB_FUNC_STATIC( QPRINTER_SETORIENTATION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOrientation ( (QPrinter::Orientation) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString outputFileName () const
*/
HB_FUNC_STATIC( QPRINTER_OUTPUTFILENAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->outputFileName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setOutputFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QPRINTER_SETOUTPUTFILENAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setOutputFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
OutputFormat outputFormat () const
*/
HB_FUNC_STATIC( QPRINTER_OUTPUTFORMAT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->outputFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setOutputFormat ( OutputFormat format )
*/
HB_FUNC_STATIC( QPRINTER_SETOUTPUTFORMAT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOutputFormat ( (QPrinter::OutputFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
PageOrder pageOrder () const
*/
HB_FUNC_STATIC( QPRINTER_PAGEORDER )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->pageOrder () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPageOrder ( PageOrder pageOrder )
*/
HB_FUNC_STATIC( QPRINTER_SETPAGEORDER )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPageOrder ( (QPrinter::PageOrder) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect pageRect () const
*/
void QPrinter_pageRect1 ()
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->pageRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF pageRect ( Unit unit ) const
*/
void QPrinter_pageRect2 ()
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRectF * ptr = new QRectF( obj->pageRect ( (QPrinter::Unit) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRect pageRect () const
//[2]QRectF pageRect ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAGERECT )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_pageRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_pageRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect paperRect () const
*/
void QPrinter_paperRect1 ()
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->paperRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF paperRect ( Unit unit ) const
*/
void QPrinter_paperRect2 ()
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRectF * ptr = new QRectF( obj->paperRect ( (QPrinter::Unit) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRect paperRect () const
//[2]QRectF paperRect ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAPERRECT )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_paperRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_paperRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
PaperSize paperSize () const
*/
void QPrinter_paperSize1 ()
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RENUM( obj->paperSize () );
  }
}

/*
QSizeF paperSize ( Unit unit ) const
*/
void QPrinter_paperSize2 ()
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QSizeF * ptr = new QSizeF( obj->paperSize ( (QPrinter::Unit) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

//[1]PaperSize paperSize () const
//[2]QSizeF paperSize ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAPERSIZE )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_paperSize1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_paperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
PaperSource paperSource () const
*/
HB_FUNC_STATIC( QPRINTER_PAPERSOURCE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->paperSource () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPaperSource ( PaperSource source )
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERSOURCE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPaperSource ( (QPrinter::PaperSource) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPrintEngine * printEngine () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTENGINE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPrintEngine * ptr = obj->printEngine ();
      _qt5xhb_createReturnClass ( ptr, "QPRINTENGINE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString printProgram () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTPROGRAM )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->printProgram () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPrintProgram ( const QString & printProg )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTPROGRAM )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPrintProgram ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
PrintRange printRange () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTRANGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->printRange () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPrintRange ( PrintRange range )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTRANGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPrintRange ( (QPrinter::PrintRange) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString printerName () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->printerName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPrinterName ( const QString & name )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTERNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPrinterName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString printerSelectionOption () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERSELECTIONOPTION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->printerSelectionOption () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
PrinterState printerState () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERSTATE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->printerState () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int resolution () const
*/
HB_FUNC_STATIC( QPRINTER_RESOLUTION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->resolution () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setResolution ( int dpi )
*/
HB_FUNC_STATIC( QPRINTER_SETRESOLUTION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setResolution ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFromTo ( int from, int to )
*/
HB_FUNC_STATIC( QPRINTER_SETFROMTO )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setFromTo ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPaperSize ( PaperSize newPaperSize )
*/
void QPrinter_setPaperSize1 ()
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setPaperSize ( (QPrinter::PaperSize) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPaperSize ( const QSizeF & paperSize, Unit unit )
*/
void QPrinter_setPaperSize2 ()
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setPaperSize ( *PQSIZEF(1), (QPrinter::Unit) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setPaperSize ( PaperSize newPaperSize )
//[2]void setPaperSize ( const QSizeF & paperSize, Unit unit )

HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_setPaperSize1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QPrinter_setPaperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPrinterSelectionOption ( const QString & option )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTERSELECTIONOPTION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPrinterSelectionOption ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWinPageSize ( int pageSize )
*/
HB_FUNC_STATIC( QPRINTER_SETWINPAGESIZE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setWinPageSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<PaperSource> supportedPaperSources () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDPAPERSOURCES )
{
#ifdef Q_OS_WIN
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QPrinter::PaperSource> list = obj->supportedPaperSources ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QList<int> supportedResolutions () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDRESOLUTIONS )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<int> list = obj->supportedResolutions ();
      _qt5xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool supportsMultipleCopies () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTSMULTIPLECOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->supportsMultipleCopies () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int toPage () const
*/
HB_FUNC_STATIC( QPRINTER_TOPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->toPage () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int winPageSize () const
*/
HB_FUNC_STATIC( QPRINTER_WINPAGESIZE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->winPageSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QPRINTER_PAINTENGINE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPaintEngine * ptr = obj->paintEngine ();
      _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int devType() const
*/
HB_FUNC_STATIC( QPRINTER_DEVTYPE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->devType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
PageSize pageSize() const
*/
HB_FUNC_STATIC( QPRINTER_PAGESIZE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->pageSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPageSize(PageSize)
*/
HB_FUNC_STATIC( QPRINTER_SETPAGESIZE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPageSize ( (QPrinter::PageSize) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPageSizeMM(const QSizeF &size)
*/
HB_FUNC_STATIC( QPRINTER_SETPAGESIZEMM )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZEF(1) )
    {
      obj->setPageSizeMM ( *PQSIZEF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString paperName() const
*/
HB_FUNC_STATIC( QPRINTER_PAPERNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->paperName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPaperName(const QString &paperName)
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPaperName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int numCopies() const
*/
HB_FUNC_STATIC( QPRINTER_NUMCOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->numCopies () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setNumCopies(int)
*/
HB_FUNC_STATIC( QPRINTER_SETNUMCOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setNumCopies ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int actualNumCopies() const
*/
HB_FUNC_STATIC( QPRINTER_ACTUALNUMCOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->actualNumCopies () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
