#ifndef UICOLLECTOR_H
#define UICOLLECTOR_H

#include <QObject>

#include "../message/UIMessage.h"

class UICollector : public QObject
{
    Q_OBJECT

public:
    explicit UICollector(QObject *parent = nullptr);

    Q_INVOKABLE void connectRequest(int isu);
    Q_INVOKABLE void disconnectRequest(int isu);
    Q_INVOKABLE void powerRequest(int isu);
    Q_INVOKABLE void killRequest(int isu);
    Q_INVOKABLE void modeRequest(int isu, int mode);
    Q_INVOKABLE void switchOnRequest(int isu);
    Q_INVOKABLE void switchOffRequest(int isu);

signals:
    void messageCollected(const UIMessage &message);

private:
    ISUType toISUType(int isu);
};

#endif // UICOLLECTOR_H