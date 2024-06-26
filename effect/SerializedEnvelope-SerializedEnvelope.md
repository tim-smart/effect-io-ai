# SerializedEnvelope

A SerializedEnvelope is the message that goes over the wire between pods.
Inside the Envelope, you have the encoded messages, plus some informations on where it should be routed to.

To import and use `SerializedEnvelope` from the "SerializedEnvelope" module:

```ts
import * as SerializedEnvelope from "@effect/cluster/SerializedEnvelope"
// Can be accessed like this
SerializedEnvelope.SerializedEnvelope
```
