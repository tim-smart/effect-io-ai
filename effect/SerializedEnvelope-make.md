# make

Construct a new `SerializedEnvelope`

To import and use `make` from the "SerializedEnvelope" module:

```ts
import * as SerializedEnvelope from "@effect/cluster/SerializedEnvelope"
// Can be accessed like this
SerializedEnvelope.make
```

**Signature**

```ts
export declare function make(
  recipientAddress: RecipientAddress.RecipientAddress,
  messageId: string,
  body: SerializedMessage.SerializedMessage
): SerializedEnvelope
```
