%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|activeCameraChanged( Q3DCamera * camera )
$slot=|activeLightChanged( Q3DLight * light )
$slot=|devicePixelRatioChanged( float pixelRatio )
$slot=|graphPositionQueryChanged( const QPoint & position )
$slot=|primarySubViewportChanged( const QRect & subViewport )
$slot=|secondarySubviewOnTopChanged( bool isSecondaryOnTop )
$slot=|secondarySubViewportChanged( const QRect & subViewport )
$slot=|selectionQueryPositionChanged( const QPoint & position )
$slot=|slicingActiveChanged( bool isSlicingActive )
$slot=|viewportChanged( const QRect & viewport )
$endSlotsClass

$signalMethod=|activeCameraChanged(Q3DCamera*)
$signalMethod=|activeLightChanged(Q3DLight*)
$signalMethod=|devicePixelRatioChanged(float)
$signalMethod=|graphPositionQueryChanged(QPoint)
$signalMethod=|primarySubViewportChanged(QRect)
$signalMethod=|secondarySubviewOnTopChanged(bool)
$signalMethod=|secondarySubViewportChanged(QRect)
$signalMethod=|selectionQueryPositionChanged(QPoint)
$signalMethod=|slicingActiveChanged(bool)
$signalMethod=|viewportChanged(QRect)
