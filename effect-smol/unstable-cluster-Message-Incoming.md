Package: `effect`<br />
Module: `Message`<br />

## Message.Incoming

Message read by a runner from storage or transport.

**Details**

An incoming message is either a persisted request with an encoded payload or an
incoming control envelope.

**Signature**

```ts
type Incoming<R> = IncomingRequest<R> | IncomingEnvelope
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Message.ts#L37)

Since v4.0.0