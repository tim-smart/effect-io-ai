# MessageStateProcessed

A message state given to processed messages.
This state tells the sender that the receiver has already received and processed the message.
This will also tell the sender the result for this message.

To import and use `MessageStateProcessed` from the "MessageState" module:

ts
import \* as MessageState from "@effect/cluster/MessageState"
// Can be accessed like this
MessageState.MessageStateProcessed
undefined
