Package: `effect`<br />
Module: `Message`<br />

## Message.Outgoing

Message produced for storage or transport.

An outgoing message is either an entity request or a control envelope.

**Signature**

```ts
type Outgoing<R> = OutgoingRequest<R> | OutgoingEnvelope
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Message.ts#L138)

Since v4.0.0