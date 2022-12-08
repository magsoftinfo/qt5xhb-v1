/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACT3DAXIS
REQUEST QBAR3DSERIES
REQUEST QCATEGORY3DAXIS
REQUEST QSIZEF
REQUEST QVALUE3DAXIS
#endif

CLASS Q3DBars INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete
   METHOD isMultiSeriesUniform
   METHOD setMultiSeriesUniform
   METHOD barThickness
   METHOD setBarThickness
   METHOD barSpacing
   METHOD setBarSpacing
   METHOD isBarSpacingRelative
   METHOD setBarSpacingRelative
   METHOD rowAxis
   METHOD setRowAxis
   METHOD columnAxis
   METHOD setColumnAxis
   METHOD valueAxis
   METHOD setValueAxis
   METHOD primarySeries
   METHOD setPrimarySeries
   METHOD selectedSeries
   METHOD floorLevel
   METHOD setFloorLevel
   METHOD addSeries
   METHOD removeSeries
   METHOD insertSeries
   METHOD seriesList
   METHOD addAxis
   METHOD releaseAxis
   METHOD axes

   METHOD onBarSpacingChanged
   METHOD onBarSpacingRelativeChanged
   METHOD onBarThicknessChanged
   METHOD onColumnAxisChanged
   METHOD onFloorLevelChanged
   METHOD onMultiSeriesUniformChanged
   METHOD onPrimarySeriesChanged
   METHOD onRowAxisChanged
   METHOD onSelectedSeriesChanged
   METHOD onValueAxisChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS Q3DBars
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/Q3DBars>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/Q3DBars>
#endif

using namespace QtDataVisualization;

/*
Q3DBars( const QSurfaceFormat * format = nullptr, QWindow * parent = nullptr )
*/
HB_FUNC_STATIC( Q3DBARS_NEW )
{
  if( ISBETWEEN(0,2) && (ISQSURFACEFORMAT(1)||HB_ISNIL(1)) && (ISQWINDOW(2)||HB_ISNIL(2)) )
  {
    Q3DBars * obj = new Q3DBars( HB_ISNIL(1)? nullptr : (QSurfaceFormat *) Qt5xHb::itemGetPtr(1), OPQWINDOW(2,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~Q3DBars()
*/
HB_FUNC_STATIC( Q3DBARS_DELETE )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
bool isMultiSeriesUniform() const
*/
HB_FUNC_STATIC( Q3DBARS_ISMULTISERIESUNIFORM )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMultiSeriesUniform() );
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
void setMultiSeriesUniform( bool uniform )
*/
HB_FUNC_STATIC( Q3DBARS_SETMULTISERIESUNIFORM )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setMultiSeriesUniform( PBOOL(1) );
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
float barThickness() const
*/
HB_FUNC_STATIC( Q3DBARS_BARTHICKNESS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->barThickness() );
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
void setBarThickness( float thicknessRatio )
*/
HB_FUNC_STATIC( Q3DBARS_SETBARTHICKNESS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBarThickness( PFLOAT(1) );
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
QSizeF barSpacing() const
*/
HB_FUNC_STATIC( Q3DBARS_BARSPACING )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->barSpacing() );
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
void setBarSpacing( const QSizeF & spacing )
*/
HB_FUNC_STATIC( Q3DBARS_SETBARSPACING )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZEF(1) )
    {
#endif
      obj->setBarSpacing( *PQSIZEF(1) );
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
bool isBarSpacingRelative() const
*/
HB_FUNC_STATIC( Q3DBARS_ISBARSPACINGRELATIVE )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBarSpacingRelative() );
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
void setBarSpacingRelative( bool relative )
*/
HB_FUNC_STATIC( Q3DBARS_SETBARSPACINGRELATIVE )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setBarSpacingRelative( PBOOL(1) );
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
QCategory3DAxis * rowAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_ROWAXIS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCategory3DAxis * ptr = obj->rowAxis();
      Qt5xHb::createReturnQObjectClass( ptr, "QCATEGORY3DAXIS" );
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
void setRowAxis( QCategory3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_SETROWAXIS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCATEGORY3DAXIS(1) )
    {
#endif
      obj->setRowAxis( PQCATEGORY3DAXIS(1) );
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
QCategory3DAxis * columnAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_COLUMNAXIS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCategory3DAxis * ptr = obj->columnAxis();
      Qt5xHb::createReturnQObjectClass( ptr, "QCATEGORY3DAXIS" );
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
void setColumnAxis( QCategory3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_SETCOLUMNAXIS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCATEGORY3DAXIS(1) )
    {
#endif
      obj->setColumnAxis( PQCATEGORY3DAXIS(1) );
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
QValue3DAxis * valueAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_VALUEAXIS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->valueAxis();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXIS" );
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
void setValueAxis( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_SETVALUEAXIS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setValueAxis( PQVALUE3DAXIS(1) );
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
QBar3DSeries * primarySeries() const
*/
HB_FUNC_STATIC( Q3DBARS_PRIMARYSERIES )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBar3DSeries * ptr = obj->primarySeries();
      Qt5xHb::createReturnQObjectClass( ptr, "QBAR3DSERIES" );
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
void setPrimarySeries( QBar3DSeries * series )
*/
HB_FUNC_STATIC( Q3DBARS_SETPRIMARYSERIES )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->setPrimarySeries( PQBAR3DSERIES(1) );
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
QBar3DSeries * selectedSeries() const
*/
HB_FUNC_STATIC( Q3DBARS_SELECTEDSERIES )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBar3DSeries * ptr = obj->selectedSeries();
      Qt5xHb::createReturnQObjectClass( ptr, "QBAR3DSERIES" );
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
float floorLevel() const
*/
HB_FUNC_STATIC( Q3DBARS_FLOORLEVEL )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->floorLevel() );
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
void setFloorLevel( float level )
*/
HB_FUNC_STATIC( Q3DBARS_SETFLOORLEVEL )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFloorLevel( PFLOAT(1) );
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
void addSeries( QBar3DSeries * series )
*/
HB_FUNC_STATIC( Q3DBARS_ADDSERIES )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->addSeries( PQBAR3DSERIES(1) );
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
void removeSeries( QBar3DSeries * series )
*/
HB_FUNC_STATIC( Q3DBARS_REMOVESERIES )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->removeSeries( PQBAR3DSERIES(1) );
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
void insertSeries( int index, QBar3DSeries * series )
*/
HB_FUNC_STATIC( Q3DBARS_INSERTSERIES )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQBAR3DSERIES(2) )
    {
#endif
      obj->insertSeries( PINT(1), PQBAR3DSERIES(2) );
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
QList<QBar3DSeries *> seriesList() const
*/
HB_FUNC_STATIC( Q3DBARS_SERIESLIST )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBar3DSeries *> list = obj->seriesList();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBAR3DSERIES" );
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
          hb_itemPutPtr( pItem, (QBar3DSeries *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBAR3DSERIES", HB_ERR_ARGS_BASEPARAMS );
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
void addAxis( QAbstract3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_ADDAXIS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DAXIS(1) )
    {
#endif
      obj->addAxis( PQABSTRACT3DAXIS(1) );
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
void releaseAxis( QAbstract3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_RELEASEAXIS )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DAXIS(1) )
    {
#endif
      obj->releaseAxis( PQABSTRACT3DAXIS(1) );
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
QList<QAbstract3DAxis *> axes() const
*/
HB_FUNC_STATIC( Q3DBARS_AXES )
{
  Q3DBars * obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstract3DAxis *> list = obj->axes();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACT3DAXIS" );
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
          hb_itemPutPtr( pItem, (QAbstract3DAxis *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACT3DAXIS", HB_ERR_ARGS_BASEPARAMS );
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

void Q3DBarsSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( Q3DBARS_ONBARSPACINGCHANGED )
{
  Q3DBarsSlots_connect_signal( "barSpacingChanged(QSizeF)", "barSpacingChanged(QSizeF)" );
}

HB_FUNC_STATIC( Q3DBARS_ONBARSPACINGRELATIVECHANGED )
{
  Q3DBarsSlots_connect_signal( "barSpacingRelativeChanged(bool)", "barSpacingRelativeChanged(bool)" );
}

HB_FUNC_STATIC( Q3DBARS_ONBARTHICKNESSCHANGED )
{
  Q3DBarsSlots_connect_signal( "barThicknessChanged(float)", "barThicknessChanged(float)" );
}

HB_FUNC_STATIC( Q3DBARS_ONCOLUMNAXISCHANGED )
{
  Q3DBarsSlots_connect_signal( "columnAxisChanged(QCategory3DAxis*)", "columnAxisChanged(QCategory3DAxis*)" );
}

HB_FUNC_STATIC( Q3DBARS_ONFLOORLEVELCHANGED )
{
  Q3DBarsSlots_connect_signal( "floorLevelChanged(float)", "floorLevelChanged(float)" );
}

HB_FUNC_STATIC( Q3DBARS_ONMULTISERIESUNIFORMCHANGED )
{
  Q3DBarsSlots_connect_signal( "multiSeriesUniformChanged(bool)", "multiSeriesUniformChanged(bool)" );
}

HB_FUNC_STATIC( Q3DBARS_ONPRIMARYSERIESCHANGED )
{
  Q3DBarsSlots_connect_signal( "primarySeriesChanged(QBar3DSeries*)", "primarySeriesChanged(QBar3DSeries*)" );
}

HB_FUNC_STATIC( Q3DBARS_ONROWAXISCHANGED )
{
  Q3DBarsSlots_connect_signal( "rowAxisChanged(QCategory3DAxis*)", "rowAxisChanged(QCategory3DAxis*)" );
}

HB_FUNC_STATIC( Q3DBARS_ONSELECTEDSERIESCHANGED )
{
  Q3DBarsSlots_connect_signal( "selectedSeriesChanged(QBar3DSeries*)", "selectedSeriesChanged(QBar3DSeries*)" );
}

HB_FUNC_STATIC( Q3DBARS_ONVALUEAXISCHANGED )
{
  Q3DBarsSlots_connect_signal( "valueAxisChanged(QValue3DAxis*)", "valueAxisChanged(QValue3DAxis*)" );
}

#pragma ENDDUMP
