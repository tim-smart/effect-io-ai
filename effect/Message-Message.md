## Message

A Message is a request for an entity that will process it.
A Message also has a PrimaryKey so that the receiver is eventually able to detect duplicated messages.

**Signature**

```ts
export interface Message<A, AI, E, EI>
  extends Schema.SerializableWithResult<any, any, never, A, AI, E, EI, never>, PrimaryKey.PrimaryKey
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L17)

Since v1.0.0