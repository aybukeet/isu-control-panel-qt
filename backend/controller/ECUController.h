#ifndef ECUCONTROLLER_H
#define ECUCONTROLLER_H

#include <QObject>

#include "../message/UIMessage.h"

class ECUController : public QObject
{
    Q_OBJECT

public:
    explicit ECUController(QObject *parent = nullptr);

public slots:

    void handleMessage(const UIMessage &message);

private:

    bool m_connected = false;
    bool m_powered = false;
    bool m_killed = false;

    ModeType m_mode = ModeType::Normal;
};

#endif // ECUCONTROLLER_H
