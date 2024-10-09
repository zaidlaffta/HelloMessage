#include "HelloMsg.h"

configuration Hello{

}
implementation {
    componenets MainC, HelloC, TimerMilliC, ActiveMessagesC;
    MainC.Boot -> Hello;
    HeloC.Timer->TimerMilliC;
    HelloC.AMSend -> ActiveMessageC.amSend[AM_HELLOMSG];
}