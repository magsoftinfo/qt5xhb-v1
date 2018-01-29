%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHBoxPlotModelMapper INHERIT QBoxPlotModelMapper

   METHOD new
   //METHOD delete

   METHOD columnCount
   METHOD firstBoxSetRow
   METHOD firstColumn
   METHOD lastBoxSetRow
   METHOD model
   METHOD series
   METHOD setColumnCount
   METHOD setFirstBoxSetRow
   METHOD setFirstColumn
   METHOD setLastBoxSetRow
   METHOD setModel
   METHOD setSeries

   METHOD onColumnCountChanged
   METHOD onFirstBoxSetRowChanged
   METHOD onFirstColumnChanged
   METHOD onLastBoxSetRowChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QHBoxPlotModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QBoxPlotSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QBoxPlotSeries *series() const
$method=|QBoxPlotSeries *|series|

$prototype=void setSeries(QBoxPlotSeries *series)
$method=|void|setSeries|QBoxPlotSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBoxSetRow READ firstBoxSetRow WRITE setFirstBoxSetRow NOTIFY firstBoxSetRowChanged)
%%

$prototype=int firstBoxSetRow() const
$method=|int|firstBoxSetRow|

$prototype=void setFirstBoxSetRow(int firstBoxSetRow)
$method=|void|setFirstBoxSetRow|int

%%
%% Q_PROPERTY(int lastBoxSetRow READ lastBoxSetRow WRITE setLastBoxSetRow NOTIFY lastBoxSetRowChanged)
%%

$prototype=int lastBoxSetRow() const
$method=|int|lastBoxSetRow|

$prototype=void setLastBoxSetRow(int lastBoxSetRow)
$method=|void|setLastBoxSetRow|int

%%
%% Q_PROPERTY(int firstColumn READ firstColumn WRITE setFirstColumn NOTIFY firstColumnChanged)
%%

$prototype=int firstColumn() const
$method=|int|firstColumn|

$prototype=void setFirstColumn(int firstColumn)
$method=|void|setFirstColumn|int

%%
%% Q_PROPERTY(int columnCount READ columnCount WRITE setColumnCount NOTIFY columnCountChanged)
%%

$prototype=int columnCount() const
$method=|int|columnCount|

$prototype=void setColumnCount(int rowCount)
$method=|void|setColumnCount|int

%%
%%
%%

#pragma ENDDUMP
