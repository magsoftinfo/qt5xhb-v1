%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQGraphicsObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsObject(QObject *parent = 0);
  ~SlotsQGraphicsObject();
  public slots:
  void enabledChanged ();
  void opacityChanged ();
  void parentChanged ();
  void rotationChanged ();
  void scaleChanged ();
  void visibleChanged ();
  void xChanged ();
  void yChanged ();
  void zChanged ();
};
