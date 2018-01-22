%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDialogButtonBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQDialogButtonBox(QObject *parent = 0);
  ~SlotsQDialogButtonBox();
  public slots:
  void accepted ();
  void clicked ( QAbstractButton * button );
  void helpRequested ();
  void rejected ();
};
