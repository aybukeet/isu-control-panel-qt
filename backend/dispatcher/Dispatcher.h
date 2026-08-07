#ifndef DISPATCHER_H
#define DISPATCHER_H

#include <QObject>

#include "../message/UIMessage.h"
#include "../controller/ECUController.h"

class Dispatcher : public QObject
{
    Q_OBJECT

public:
    explicit Dispatcher(QObject *parent = nullptr);

    void setController(ECUController *controller);

public slots:

    void dispatch(const UIMessage &message);

private:

    ECUController *m_controller = nullptr;
};

#endif // DISPATCHER_H