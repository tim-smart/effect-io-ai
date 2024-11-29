# MessageStateAcknowledged

A message state given to just acknowledged messages.
This state tells the sender that the receiver has received the message and will eventually process it later.

To import and use `MessageStateAcknowledged` from the "MessageState" module:

ts
import \* as MessageState from "@effect/cluster/MessageState"
// Can be accessed like this
MessageState.MessageStateAcknowledged
undefined
