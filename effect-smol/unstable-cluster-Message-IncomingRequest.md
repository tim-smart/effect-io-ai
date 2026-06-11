Package: `effect`<br />
Module: `Message`<br />

## Message.IncomingRequest

Represents an incoming persisted request whose payload has not yet been decoded with the RPC
schema.

**Details**

It carries the last reply that was sent and a callback for persisting encoded
replies.

**Signature**

```ts
declare class IncomingRequest<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Message.ts#L89)

Since v4.0.0