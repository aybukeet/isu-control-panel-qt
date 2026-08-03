#ifndef ISUCONTROLLER_H
#define ISUCONTROLLER_H

#include <QObject>

#include "../message/UIMessage.h"

class ISUController : public QObject
{
    Q_OBJECT

public:
    explicit ISUController(QObject *parent = nullptr);

public slots:

    void handleMessage(const UIMessage &message);

};

#endif // ISUCONTROLLER_H