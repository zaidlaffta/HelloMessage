#include "HelloMsg.h"


module HelloWorldC {
  uses interface Boot;
  uses interface Timer<TMilli> as Timer;
  uses interface AMSend as AMSend;
  uses interface Packet;
}

implementation {
  // Define a message to send
  HelloMsg_t helloMsg;
  uint16_t counter = 0;
  uint32_t integ = 55;

  event void Boot.booted() {
    call Timer.startPeriodic(2000); // Fire the timer every 2000ms (2 seconds)
  }

  event void Timer.fired() {
    helloMsg.counter = counter++; // Increment the counter

    // Send the message to the broadcast address
    call AMSend.send(AM_BROADCAST_ADDR, &helloMsg, sizeof(HelloMsg_t));
  }

  event void AMSend.sendDone(message_t *msg, error_t error) {
    if (error == SUCCESS) {
      // Message was sent successfully
    } else {
      // Handle error if needed
    }
  }
}
