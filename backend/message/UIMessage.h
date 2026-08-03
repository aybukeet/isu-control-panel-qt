#ifndef UIMESSAGE_H
#define UIMESSAGE_H

#include "../enums/ISUType.h"
#include "../enums/CommandType.h"
#include "../enums/ModeType.h"

struct UIMessage
{
    ISUType isu;
    CommandType command;
    ModeType mode = ModeType::Normal;
};

#endif // UIMESSAGE_H