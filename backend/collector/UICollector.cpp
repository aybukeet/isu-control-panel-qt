#include "UICollector.h"

#include <QDebug>

UICollector::UICollector(QObject *parent)
    : QObject(parent)
{
}

ISUType UICollector::toISUType(int isu)
{
    switch (isu)
    {
    case 0: return ISUType::A1;
    case 1: return ISUType::A2;
    case 2: return ISUType::B1;
    case 3: return ISUType::B2;
    default: return ISUType::A1;
    }
}

void UICollector::connectRequest(int isu)
{
    UIMessage message;

    message.isu = toISUType(isu);
    message.command = CommandType::Connect;
    message.mode = ModeType::Normal;

    qDebug() << "Collector : Connect request";

    emit messageCollected(message);
}

void UICollector::disconnectRequest(int isu)
{
    UIMessage message;

    message.isu = toISUType(isu);
    message.command = CommandType::Disconnect;
    message.mode = ModeType::Normal;

    qDebug() << "Collector : Disconnect request";

    emit messageCollected(message);
}

void UICollector::powerRequest(int isu)
{
    UIMessage message;

    message.isu = toISUType(isu);
    message.command = CommandType::Power;
    message.mode = ModeType::Normal;

    qDebug() << "Collector : Power request";

    emit messageCollected(message);
}

void UICollector::killRequest(int isu)
{
    UIMessage message;

    message.isu = toISUType(isu);
    message.command = CommandType::Kill;
    message.mode = ModeType::Normal;

    qDebug() << "Collector : Kill request";

    emit messageCollected(message);
}

void UICollector::modeRequest(int isu, int mode)
{
    UIMessage message;

    message.isu = toISUType(isu);
    message.command = CommandType::ChangeMode;

    switch (mode)
    {
    case 0:
        message.mode = ModeType::Normal;
        break;

    case 1:
        message.mode = ModeType::Test;
        break;

    case 2:
        message.mode = ModeType::Maintenance;
        break;

    default:
        message.mode = ModeType::Normal;
        break;
    }

    qDebug() << "Collector : Mode request";

    emit messageCollected(message);
}

void UICollector::switchOnRequest(int isu)
{
    UIMessage message;

    message.isu = toISUType(isu);
    message.command = CommandType::SwitchOn;
    message.mode = ModeType::Normal;

    qDebug() << "Collector : Switch ON request";

    emit messageCollected(message);
}

void UICollector::switchOffRequest(int isu)
{
    UIMessage message;

    message.isu = toISUType(isu);
    message.command = CommandType::SwitchOff;
    message.mode = ModeType::Normal;

    qDebug() << "Collector : Switch OFF request";

    emit messageCollected(message);
}