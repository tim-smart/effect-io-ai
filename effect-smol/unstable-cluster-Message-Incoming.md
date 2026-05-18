Package: `effect`<br />
Module: `Message`<br />

## Message.Incoming

Message read by a runner from storage or transport.

An incoming message is either a persisted request with an encoded payload or an
incoming control envelope.

**Signature**

```ts
type Incoming<R> = IncomingRequest<R> | IncomingEnvelope
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Message.ts#L51)

Since v4.0.0