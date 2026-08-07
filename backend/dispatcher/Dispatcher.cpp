#include "Dispatcher.h"

#include <QDebug>

Dispatcher::Dispatcher(QObject *parent)
    : QObject(parent)
{

}

void Dispatcher::dispatch(const UIMessage &message)
{
    qDebug() << "Dispatcher forwarding message...";

    if (!m_controller)
    {
        qDebug() << "Dispatcher: Controller not connected!";
        return;
    }

    m_controller->handleMessage(message);
}

void Dispatcher::setController(ECUController *controller)
{
    m_controller = controller;
}