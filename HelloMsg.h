#ifndef HELLOMSG_H
#define HELLOMSG_H
emun{
    AM_HELLOMSG = 6,
};
typedef nx_struct Hellomsg {
    nx_uint16_t counter;

} HelloMsg_t;
#endif
