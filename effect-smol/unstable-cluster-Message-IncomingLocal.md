Package: `effect`<br />
Module: `Message`<br />

## Message.IncomingLocal

Locally decoded incoming message for in-process delivery.

**Details**

It is either a request with a decoded payload or an incoming control envelope.

**Signature**

```ts
type IncomingLocal<R> = IncomingRequestLocal<R> | IncomingEnvelope
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Message.ts#L49)

Since v4.0.0