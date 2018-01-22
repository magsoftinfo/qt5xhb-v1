%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

class SlotsQKeySequenceEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQKeySequenceEdit(QObject *parent = 0);
  ~SlotsQKeySequenceEdit();
  public slots:
  void editingFinished();
  void keySequenceChanged(const QKeySequence &keySequence);
};
