%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQColumnView: public QObject
{
  Q_OBJECT
  public:
  SlotsQColumnView(QObject *parent = 0);
  ~SlotsQColumnView();
  public slots:
  void updatePreviewWidget ( const QModelIndex & index );
};
