%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQProgressDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQProgressDialog(QObject *parent = 0);
  ~SlotsQProgressDialog();
  public slots:
  void canceled ();
};
