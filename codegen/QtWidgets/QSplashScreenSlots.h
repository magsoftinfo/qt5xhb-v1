%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQSplashScreen: public QObject
{
  Q_OBJECT
  public:
  SlotsQSplashScreen(QObject *parent = 0);
  ~SlotsQSplashScreen();
  public slots:
  void messageChanged ( const QString & message );
};
