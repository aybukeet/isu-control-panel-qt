#ifndef DISPATCHER_H
#define DISPATCHER_H

#include <QObject>

#include "../message/UIMessage.h"
#include "../controller/ISUController.h"

class Dispatcher : public QObject
{
    Q_OBJECT

public:
    explicit Dispatcher(QObject *parent = nullptr);

    void setController(ISUController *controller);

public slots:

    void dispatch(const UIMessage &message);

private:

    ISUController *m_controller = nullptr;
};

#endif // DISPATCHER_H