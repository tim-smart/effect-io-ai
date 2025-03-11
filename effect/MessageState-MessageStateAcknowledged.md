## MessageStateAcknowledged

A message state given to just acknowledged messages.
This state tells the sender that the receiver has received the message and will eventually process it later.

**Signature**

```ts
export interface MessageStateAcknowledged {
  readonly [MessageStateTypeId]: MessageStateTypeId
  readonly _tag: "@effect/cluster/MessageState/Acknowledged"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/MessageState.ts#L27)

Since v1.0.0