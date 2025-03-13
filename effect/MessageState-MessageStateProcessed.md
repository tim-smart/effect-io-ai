Package: `@effect/cluster`<br />
Module: `MessageState`<br />

## MessageState.MessageStateProcessed

A message state given to processed messages.
This state tells the sender that the receiver has already received and processed the message.
This will also tell the sender the result for this message.

**Signature**

```ts
export interface MessageStateProcessed<A> {
  readonly [MessageStateTypeId]: MessageStateTypeId
  readonly _tag: "@effect/cluster/MessageState/Processed"
  readonly result: A
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/MessageState.ts#L40)

Since v1.0.0