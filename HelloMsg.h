#ifndef HELLOMSG_H
#define HELLOMSG_H

enum {
    AM_HELLOMSG = 6,
};

typedef nx_struct HelloMsg {
    nx_uint16_t counter;
} HelloMsg_t;

#endif
