%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQWidget(QObject *parent = 0);
  ~SlotsQWidget();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void windowTitleChanged(const QString &title);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void windowIconChanged(const QIcon &icon);
#endif
  void windowIconTextChanged(const QString &iconText);
  void customContextMenuRequested(const QPoint &pos);
};
