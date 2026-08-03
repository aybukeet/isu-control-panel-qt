#include "ISUController.h"

#include <QDebug>

ISUController::ISUController(QObject *parent)
    : QObject(parent)
{

}

void ISUController::handleMessage(const UIMessage &message)
{
    switch (message.command)
    {
    case CommandType::Connect:
        qDebug() << "Controller : Connect";
        break;

    case CommandType::Disconnect:
        qDebug() << "Controller : Disconnect";
        break;

    case CommandType::Power:
        qDebug() << "Controller : Power";
        break;

    case CommandType::SwitchOn:
        qDebug() << "Controller : Switch ON";
        break;

    case CommandType::SwitchOff:
        qDebug() << "Controller : Switch OFF";
        break;

    case CommandType::Kill:
        qDebug() << "Controller : Kill";
        break;

    case CommandType::ChangeMode:
        qDebug() << "Controller : Change Mode";
        break;
    }
}