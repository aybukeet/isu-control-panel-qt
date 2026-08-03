#include "Dispatcher.h"

#include <QDebug>

Dispatcher::Dispatcher(QObject *parent)
    : QObject(parent)
{

}

void Dispatcher::dispatch(const UIMessage &message)
{
    qDebug() << "Dispatcher received a message.";

    switch (message.command)
    {
    case CommandType::Connect:
        qDebug() << "Command : Connect";
        break;

    case CommandType::Disconnect:
        qDebug() << "Command : Disconnect";
        break;

    case CommandType::Power:
        qDebug() << "Command : Power";
        break;

    case CommandType::Kill:
        qDebug() << "Command : Kill";
        break;

    case CommandType::ChangeMode:
        qDebug() << "Command : Change Mode";
        break;

    case CommandType::SwitchOn:
        qDebug() << "Command : Switch ON";
        break;

    case CommandType::SwitchOff:
        qDebug() << "Command : Switch OFF";
        break;
    }
}