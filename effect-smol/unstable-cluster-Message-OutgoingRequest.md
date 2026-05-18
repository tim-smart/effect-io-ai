Package: `effect`<br />
Module: `Message`<br />

## Message.OutgoingRequest

Outgoing entity request with decoded payload and RPC metadata.

It carries the service context used for serialization, the last received reply,
the reply callback, dynamic annotations, and an optional encoded request cache.

**Signature**

```ts
declare class OutgoingRequest<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Message.ts#L149)

Since v4.0.0