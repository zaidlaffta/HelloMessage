#include "HelloMsg.h"

interface {
    command void sendHello();
    event void helloSent(error_t result);
}