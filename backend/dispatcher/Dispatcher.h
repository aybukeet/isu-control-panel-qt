#ifndef DISPATCHER_H
#define DISPATCHER_H

#include <QObject>

#include "../message/UIMessage.h"

class Dispatcher : public QObject
{
    Q_OBJECT

public:
    explicit Dispatcher(QObject *parent = nullptr);

public slots:

    void dispatch(const UIMessage &message);

};

#endif // DISPATCHER_H